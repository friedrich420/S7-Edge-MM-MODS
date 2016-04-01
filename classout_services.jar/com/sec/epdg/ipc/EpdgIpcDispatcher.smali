.class public Lcom/sec/epdg/ipc/EpdgIpcDispatcher;
.super Ljava/lang/Object;
.source "EpdgIpcDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[IPCDISPATCHER]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendEpdgCtxtInfo(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/ipc/EpdgPdpContextInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "epdgCtxtInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/ipc/EpdgPdpContextInfo;>;"
    const/4 v4, 0x1

    .line 121
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 125
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    invoke-virtual {v0, p0}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodePdpContext(Ljava/util/ArrayList;)Z

    .line 127
    invoke-static {v0, v4}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 128
    return v4
.end method

.method public static SendGprsIPConfigs(ILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 21
    .param p0, "cid"    # I
    .param p1, "iptype"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p2, "ipv4Addr"    # Ljava/lang/String;
    .param p3, "ipv4Dns"    # [Ljava/lang/String;
    .param p4, "ipv4Gateway"    # Ljava/lang/String;
    .param p5, "ipv4SubnetMask"    # Ljava/lang/String;
    .param p6, "ipv4Pcscf"    # [Ljava/lang/String;
    .param p7, "ipv6Addr"    # Ljava/lang/String;
    .param p8, "Ipv6Pcscf"    # [Ljava/lang/String;
    .param p9, "Ipv6Dns"    # [Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 112
    invoke-virtual/range {v0 .. v10}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsIPConfigs(ILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 115
    const/4 v1, 0x1

    invoke-static {v0, v1}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 116
    const/4 v1, 0x1

    return v1
.end method

.method private static getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;
    .registers 3
    .param p0, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 134
    const-string v0, "Suppressed"

    .line 136
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static sendEpdgHoThreshold(IIIIIII)Z
    .registers 16
    .param p0, "state"    # I
    .param p1, "threhold4gRoveIn"    # I
    .param p2, "threhold4gRoveOut"    # I
    .param p3, "threhold3gRoveIn"    # I
    .param p4, "threhold3gRoveOut"    # I
    .param p5, "threhold2gRoveIn"    # I
    .param p6, "threhold2gRoveOut"    # I

    .prologue
    const/4 v8, 0x1

    .line 74
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/16 v2, 0x24

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 77
    invoke-virtual/range {v0 .. v7}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeEpdgHoThreshold(IIIIIII)Z

    .line 80
    invoke-static {v0, v8}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 81
    return v8
.end method

.method public static sendGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z
    .registers 6
    .param p0, "result"    # Z
    .param p1, "response"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;

    .prologue
    const/4 v3, 0x1

    .line 42
    new-instance v0, Lcom/sec/epdg/ipc/EpdgIpcMessage;

    const/16 v1, 0x80

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 45
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgIpcMessage;
    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->encodeGeneralResponse(ZLcom/sec/epdg/ipc/EpdgIpcMessage;)Z

    .line 46
    invoke-static {v0, v3}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 47
    return v3
.end method

.method public static sendGprsCallStatus(IIZ)Z
    .registers 8
    .param p0, "cid"    # I
    .param p1, "data_call_state"    # I
    .param p2, "isPermanentFail"    # Z

    .prologue
    const/4 v4, 0x1

    .line 85
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x10

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 88
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsCallStatus(IIZ)Z

    .line 90
    invoke-static {v0, v4}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 91
    return v4
.end method

.method public static sendGprsEpdgStatus(II)Z
    .registers 7
    .param p0, "pdn_type"    # I
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    .line 95
    new-instance v0, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;

    const/16 v1, 0xd

    const/16 v2, 0x16

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;-><init>(III)V

    .line 98
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/epdg/ipc/EpdgGprsIpcMessage;->encodeGprsCallStatus(IIZ)Z

    .line 100
    invoke-static {v0, v4}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 101
    return v4
.end method

.method private static sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z
    .registers 7
    .param p0, "msg"    # Lcom/sec/epdg/ipc/EpdgIpcMessage;
    .param p1, "dump"    # Z

    .prologue
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cmd Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getEpdgCmdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "header":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-static {p0}, getParamsForUserBin(Lcom/sec/epdg/ipc/EpdgIpcMessage;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "param":Ljava/lang/String;
    :goto_3d
    const-string v2, "[IPCDISPATCHER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "[IPCDISPATCHER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: Param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_72

    .line 34
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgDumpState;->addEpdgToRilMsgs(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_72
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/ipc/EpdgModem;->sendPacket([B)V

    .line 38
    const/4 v2, 0x1

    return v2

    .line 27
    .end local v1    # "param":Ljava/lang/String;
    :cond_7f
    invoke-virtual {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->getBody()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d
.end method

.method public static sendNetDataHandover(IIII)Z
    .registers 9
    .param p0, "cause"    # I
    .param p1, "state"    # I
    .param p2, "act"    # I
    .param p3, "pdntype"    # I

    .prologue
    const/4 v4, 0x1

    .line 51
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/16 v2, 0xf

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .line 54
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetDataHandoverInfo(IIII)Z

    .line 56
    invoke-static {v0, v4}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 57
    return v4
.end method

.method public static sendNetRegist(III)Z
    .registers 6
    .param p0, "act"    # I
    .param p1, "reg_status"    # I
    .param p2, "mesg_type"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p2}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;-><init>(III)V

    .line 65
    .local v0, "packet":Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
    invoke-virtual {v0, p0, p1}, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->encodeNetRegist(II)Z

    .line 67
    const/4 v1, 0x0

    invoke-static {v0, v1}, sendMessage(Lcom/sec/epdg/ipc/EpdgIpcMessage;Z)Z

    .line 68
    const/4 v1, 0x1

    return v1
.end method
