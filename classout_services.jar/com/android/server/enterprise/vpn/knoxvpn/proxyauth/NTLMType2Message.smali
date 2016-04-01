.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType2Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType2Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType2Message"


# instance fields
.field private contextData:[B

.field private flagsObtained:I

.field private serverChallengeNonce:[B

.field private targetData:[B

.field private targetName:Ljava/lang/String;

.field private type2MessageBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "rawServerResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(I)V

    .line 10
    iput-object v1, p0, type2MessageBytes:[B

    .line 11
    iput-object v1, p0, serverChallengeNonce:[B

    iput-object v1, p0, contextData:[B

    iput-object v1, p0, targetData:[B

    .line 12
    const/4 v0, -0x1

    iput v0, p0, flagsObtained:I

    .line 17
    invoke-virtual {p0, p1}, processMessageString(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, getFlagsObtained()I

    move-result v0

    invoke-virtual {p0, v0}, setFlags(I)V

    .line 19
    return-void
.end method

.method private checkForValidData(II)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "returnValue":Z
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, p2, :cond_b

    .line 24
    iget-object v2, p0, type2MessageBytes:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_c

    .line 25
    const/4 v1, 0x1

    .line 28
    :cond_b
    return v1

    .line 23
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isValidNTLMType2String()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1b

    .line 34
    iget-object v1, p0, type2MessageBytes:[B

    aget-byte v1, v1, v0

    sget-object v2, NTLM_HEADER_BYTES:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_18

    .line 35
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Type2 Format Exception: Misplaced Header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37
    :cond_1b
    iget-object v1, p0, type2MessageBytes:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    .line 38
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Type2 Format Exception: Message Type Incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_2a
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContextData()[B
    .registers 6

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x8

    .line 59
    iget-object v1, p0, type2MessageBytes:[B

    if-nez v1, :cond_a

    .line 60
    const/4 v1, 0x0

    .line 67
    :goto_9
    return-object v1

    .line 61
    :cond_a
    iget-object v1, p0, contextData:[B

    if-nez v1, :cond_21

    .line 62
    const/16 v1, 0x28

    invoke-direct {p0, v4, v1}, checkForValidData(II)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 63
    new-array v0, v3, [B

    .line 64
    .local v0, "context":[B
    iget-object v1, p0, type2MessageBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 65
    invoke-virtual {p0, v0}, setContextData([B)V

    .line 67
    .end local v0    # "context":[B
    :cond_21
    iget-object v1, p0, contextData:[B

    goto :goto_9
.end method

.method protected getFlagsObtained()I
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, type2MessageBytes:[B

    if-nez v0, :cond_6

    .line 92
    const/4 v0, 0x0

    .line 96
    :goto_5
    return v0

    .line 93
    :cond_6
    iget v0, p0, flagsObtained:I

    if-gez v0, :cond_16

    .line 94
    iget-object v0, p0, type2MessageBytes:[B

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    invoke-virtual {p0, v0}, setFlagsObtained(I)V

    .line 96
    :cond_16
    iget v0, p0, flagsObtained:I

    goto :goto_5
.end method

.method protected getServerChallengeNonce()[B
    .registers 6

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x8

    .line 43
    iget-object v1, p0, type2MessageBytes:[B

    if-nez v1, :cond_a

    .line 44
    const/4 v1, 0x0

    .line 51
    :goto_9
    return-object v1

    .line 45
    :cond_a
    iget-object v1, p0, serverChallengeNonce:[B

    if-nez v1, :cond_21

    .line 46
    const/16 v1, 0x20

    invoke-direct {p0, v4, v1}, checkForValidData(II)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 47
    new-array v0, v3, [B

    .line 48
    .local v0, "challenge":[B
    iget-object v1, p0, type2MessageBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 49
    invoke-virtual {p0, v0}, setServerChallengeNonce([B)V

    .line 51
    .end local v0    # "challenge":[B
    :cond_21
    iget-object v1, p0, serverChallengeNonce:[B

    goto :goto_9
.end method

.method protected getTargetData()[B
    .registers 4

    .prologue
    .line 75
    iget-object v1, p0, type2MessageBytes:[B

    if-nez v1, :cond_6

    .line 76
    const/4 v1, 0x0

    .line 83
    :goto_5
    return-object v1

    .line 77
    :cond_6
    const/4 v0, 0x0

    .line 78
    .local v0, "temp":[B
    iget-object v1, p0, targetData:[B

    if-nez v1, :cond_19

    .line 79
    iget-object v1, p0, type2MessageBytes:[B

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v0

    .line 80
    array-length v1, v0

    if-lez v1, :cond_19

    .line 81
    invoke-virtual {p0, v0}, setTargetData([B)V

    .line 83
    :cond_19
    iget-object v1, p0, targetData:[B

    goto :goto_5
.end method

.method protected getTargetName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 104
    iget-object v3, p0, type2MessageBytes:[B

    if-nez v3, :cond_6

    .line 105
    const/4 v3, 0x0

    .line 118
    :goto_5
    return-object v3

    .line 106
    :cond_6
    iget-object v3, p0, targetName:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 107
    iget-object v3, p0, type2MessageBytes:[B

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v2

    .line 109
    .local v2, "temp":[B
    :try_start_12
    array-length v3, v2

    if-lez v3, :cond_27

    .line 110
    invoke-virtual {p0}, getFlagsObtained()I

    move-result v1

    .line 111
    .local v1, "flags":I
    new-instance v4, Ljava/lang/String;

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2a

    const-string v3, "Cp850"

    :goto_21
    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v4}, setTargetName(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_27} :catch_2d

    .line 118
    .end local v1    # "flags":I
    .end local v2    # "temp":[B
    :cond_27
    :goto_27
    iget-object v3, p0, targetName:Ljava/lang/String;

    goto :goto_5

    .line 111
    .restart local v1    # "flags":I
    .restart local v2    # "temp":[B
    :cond_2a
    :try_start_2a
    const-string v3, "UTF-16LE"
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_2c} :catch_2d

    goto :goto_21

    .line 114
    .end local v1    # "flags":I
    :catch_2d
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_27
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, type2MessageBytes:[B

    .line 133
    invoke-direct {p0}, isValidNTLMType2String()V

    .line 134
    return-void
.end method

.method protected setContextData([B)V
    .registers 2
    .param p1, "contextData"    # [B

    .prologue
    .line 71
    iput-object p1, p0, contextData:[B

    .line 72
    return-void
.end method

.method protected setFlagsObtained(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 100
    iput p1, p0, flagsObtained:I

    .line 101
    return-void
.end method

.method protected setServerChallengeNonce([B)V
    .registers 2
    .param p1, "serverChallengeNonce"    # [B

    .prologue
    .line 55
    iput-object p1, p0, serverChallengeNonce:[B

    .line 56
    return-void
.end method

.method protected setTargetData([B)V
    .registers 2
    .param p1, "targetData"    # [B

    .prologue
    .line 87
    iput-object p1, p0, targetData:[B

    .line 88
    return-void
.end method

.method protected setTargetName(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, targetName:Ljava/lang/String;

    .line 123
    return-void
.end method
