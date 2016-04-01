.class public Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgNetIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[NETIPCMESSAGE]"

.field private static final NET_EPDG_HANDOVER_THRESHOLD_LENGTH:I = 0x7

.field private static final NET_HANDOVER_LENGTH:I = 0x4

.field private static final NET_REGIST_LENGTH:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 23
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    .line 27
    return-void
.end method


# virtual methods
.method public decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .registers 14

    .prologue
    .line 97
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, mIpcBody:[B

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v3, "dis":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 102
    .local v6, "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :try_start_d
    const-string v10, "[NETIPCMESSAGE]"

    const-string/jumbo v11, "decodeHandoverResult"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 104
    .local v2, "cause":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 105
    .local v9, "state":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 106
    .local v0, "act":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 107
    .local v8, "pdnType":I
    new-instance v7, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    invoke-direct {v7, v9, v0, v8, v2}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;-><init>(IIII)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_3d
    .catchall {:try_start_d .. :try_end_2a} :catchall_5a

    .line 114
    .end local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .local v7, "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    move-object v6, v7

    .line 120
    .end local v0    # "act":I
    .end local v2    # "cause":I
    .end local v7    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .end local v8    # "pdnType":I
    .end local v9    # "state":I
    .restart local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :goto_2e
    return-object v6

    .line 115
    .end local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .restart local v0    # "act":I
    .restart local v2    # "cause":I
    .restart local v7    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .restart local v8    # "pdnType":I
    .restart local v9    # "state":I
    :catch_2f
    move-exception v4

    .line 116
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "[NETIPCMESSAGE]"

    const-string/jumbo v11, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 119
    .end local v7    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .restart local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    goto :goto_2e

    .line 109
    .end local v0    # "act":I
    .end local v2    # "cause":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "pdnType":I
    .end local v9    # "state":I
    :catch_3d
    move-exception v5

    .line 110
    .local v5, "ex":Ljava/io/IOException;
    :try_start_3e
    const-string v10, "[NETIPCMESSAGE]"

    const-string/jumbo v11, "decodeHandoverResult: IOException "

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_5a

    .line 114
    :try_start_49
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_2e

    .line 115
    :catch_4d
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "[NETIPCMESSAGE]"

    const-string/jumbo v11, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 113
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_5a
    move-exception v10

    .line 114
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 118
    :goto_5e
    throw v10

    .line 115
    :catch_5f
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "[NETIPCMESSAGE]"

    const-string/jumbo v12, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e
.end method

.method public decodeNetRegQuery()Lcom/sec/epdg/ipc/EpdgNetReg;
    .registers 10

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, mIpcBody:[B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 78
    .local v4, "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :try_start_d
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "Creating EpdgNetReg"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v5, Lcom/sec/epdg/ipc/EpdgNetReg;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/ipc/EpdgNetReg;-><init>(BB)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_21} :catch_34
    .catchall {:try_start_d .. :try_end_21} :catchall_51

    .line 85
    .end local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .local v5, "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :try_start_21
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_26

    move-object v4, v5

    .line 92
    .end local v5    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .restart local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :goto_25
    return-object v4

    .line 86
    .end local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .restart local v5    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :catch_26
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "[NETIPCMESSAGE]"

    const-string/jumbo v7, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 90
    .end local v5    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .restart local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    goto :goto_25

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :catch_34
    move-exception v3

    .line 81
    .local v3, "ex":Ljava/io/IOException;
    :try_start_35
    const-string v6, "[NETIPCMESSAGE]"

    const-string/jumbo v7, "decodeNetRegQuery: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_51

    .line 85
    :try_start_40
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_25

    .line 86
    :catch_44
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "[NETIPCMESSAGE]"

    const-string/jumbo v7, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_51
    move-exception v6

    .line 85
    :try_start_52
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 89
    :goto_55
    throw v6

    .line 86
    :catch_56
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "[NETIPCMESSAGE]"

    const-string/jumbo v8, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55
.end method

.method public encodeEpdgHoThreshold(IIIIIII)Z
    .registers 12
    .param p1, "state"    # I
    .param p2, "roveInLte"    # I
    .param p3, "roveOutLte"    # I
    .param p4, "roveIn3g"    # I
    .param p5, "roveOut3g"    # I
    .param p6, "roveIn2g"    # I
    .param p7, "roveOut2g"    # I

    .prologue
    const/4 v3, 0x1

    .line 56
    const-string v1, "[NETIPCMESSAGE]"

    const-string/jumbo v2, "encodeNetRegist"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x7

    new-array v0, v1, [B

    .line 59
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 60
    int-to-byte v1, p2

    aput-byte v1, v0, v3

    .line 61
    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 62
    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 63
    const/4 v1, 0x4

    int-to-byte v2, p5

    aput-byte v2, v0, v1

    .line 64
    const/4 v1, 0x5

    int-to-byte v2, p6

    aput-byte v2, v0, v1

    .line 65
    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 67
    iput-object v0, p0, mIpcBody:[B

    .line 68
    return v3
.end method

.method public encodeNetDataHandoverInfo(IIII)Z
    .registers 9
    .param p1, "cause"    # I
    .param p2, "state"    # I
    .param p3, "act"    # I
    .param p4, "pdntype"    # I

    .prologue
    const/4 v3, 0x1

    .line 29
    const-string v1, "[NETIPCMESSAGE]"

    const-string/jumbo v2, "encodeNetDataHandoverInfo"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 33
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 34
    int-to-byte v1, p2

    aput-byte v1, v0, v3

    .line 35
    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 36
    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 37
    iput-object v0, p0, mIpcBody:[B

    .line 38
    return v3
.end method

.method public encodeNetRegist(II)Z
    .registers 7
    .param p1, "act"    # I
    .param p2, "reg_status"    # I

    .prologue
    const/4 v3, 0x1

    .line 43
    const-string v1, "[NETIPCMESSAGE]"

    const-string/jumbo v2, "encodeNetRegist"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 46
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 47
    const/4 v1, 0x3

    aput-byte v1, v0, v3

    .line 48
    const/4 v1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 50
    iput-object v0, p0, mIpcBody:[B

    .line 51
    return v3
.end method
