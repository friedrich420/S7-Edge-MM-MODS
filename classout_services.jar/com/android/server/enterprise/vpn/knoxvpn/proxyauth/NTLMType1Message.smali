.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType1Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType1Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType1Message"

.field private static defaultFlagSet:I


# instance fields
.field private domain:Ljava/lang/String;

.field private type1MessageString:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const v0, 0x88207

    sput v0, defaultFlagSet:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x1

    sget v1, defaultFlagSet:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    .line 10
    iput-object v2, p0, type1MessageString:Ljava/lang/String;

    .line 19
    iput-object v2, p0, domain:Ljava/lang/String;

    .line 20
    iput-object v2, p0, workstation:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x1

    sget v1, defaultFlagSet:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, type1MessageString:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, setFlags(I)V

    .line 26
    iput-object p2, p0, domain:Ljava/lang/String;

    .line 27
    iput-object p3, p0, workstation:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v4, p0, type1MessageString:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 33
    iget-object v3, p0, type1MessageString:Ljava/lang/String;

    .line 62
    :goto_7
    return-object v3

    .line 34
    :cond_8
    const/4 v0, 0x0

    .local v0, "domainBytes":[B
    const/4 v2, 0x0

    .line 36
    .local v2, "workstationBytes":[B
    :try_start_a
    iget-object v4, p0, domain:Ljava/lang/String;

    if-eqz v4, :cond_97

    iget-object v4, p0, domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_97

    .line 37
    iget-object v4, p0, domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cp850"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 38
    const/16 v4, 0x1000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, setThisFlag(IZ)V

    .line 42
    :goto_28
    iget-object v4, p0, workstation:Ljava/lang/String;

    if-eqz v4, :cond_a2

    iget-object v4, p0, workstation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a2

    .line 43
    iget-object v4, p0, workstation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cp850"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 44
    const/16 v4, 0x2000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, setThisFlag(IZ)V

    .line 48
    :goto_46
    if-nez v0, :cond_a9

    move v5, v3

    :goto_49
    if-nez v2, :cond_ac

    move v4, v3

    :goto_4c
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x20

    new-array v1, v4, [B

    .line 50
    .local v1, "finalMessageBytes":[B
    sget-object v4, NTLM_HEADER_BYTES:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 51
    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    .line 52
    const/16 v4, 0xc

    invoke-virtual {p0}, getFlags()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    .line 53
    const/16 v4, 0x1000

    invoke-virtual {p0, v4}, isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 54
    const/16 v4, 0x10

    const/16 v5, 0x20

    invoke-static {v1, v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 55
    :cond_7a
    const/16 v4, 0x2000

    invoke-virtual {p0, v4}, isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 56
    const/16 v4, 0x18

    if-nez v0, :cond_ae

    :goto_86
    add-int/lit8 v3, v3, 0x20

    invoke-static {v1, v4, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 58
    :cond_8b
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, type1MessageString:Ljava/lang/String;

    .line 59
    iget-object v3, p0, type1MessageString:Ljava/lang/String;

    goto/16 :goto_7

    .line 40
    .end local v1    # "finalMessageBytes":[B
    :cond_97
    const/16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, setThisFlag(IZ)V

    goto :goto_28

    .line 60
    :catch_9e
    move-exception v3

    .line 62
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 46
    :cond_a2
    const/16 v4, 0x2000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, setThisFlag(IZ)V

    goto :goto_46

    .line 48
    :cond_a9
    array-length v4, v0

    move v5, v4

    goto :goto_49

    :cond_ac
    array-length v4, v2

    goto :goto_4c

    .line 56
    .restart local v1    # "finalMessageBytes":[B
    :cond_ae
    array-length v3, v0
    :try_end_af
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_af} :catch_9e

    goto :goto_86
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method
