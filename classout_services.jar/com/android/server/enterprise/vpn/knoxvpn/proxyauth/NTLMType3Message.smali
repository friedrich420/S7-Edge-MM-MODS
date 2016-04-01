.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType3Message"


# instance fields
.field domain:Ljava/lang/String;

.field lmCompatibility:I

.field lmResponse:[B

.field ntResponse:[B

.field password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field serverChallenge:[B

.field username:Ljava/lang/String;

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "serverChallenge"    # [B
    .param p2, "finalFlags"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "workstation"    # Ljava/lang/String;
    .param p7, "lmCompatibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    .line 17
    iput-object v1, p0, username:Ljava/lang/String;

    iput-object v1, p0, password:Ljava/lang/String;

    iput-object v1, p0, domain:Ljava/lang/String;

    iput-object v1, p0, workstation:Ljava/lang/String;

    .line 18
    iput-object v1, p0, serverChallenge:[B

    iput-object v1, p0, lmResponse:[B

    iput-object v1, p0, ntResponse:[B

    .line 20
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, randomBytesGenerator:Ljava/security/SecureRandom;

    .line 25
    iput-object p3, p0, username:Ljava/lang/String;

    .line 26
    iput-object p4, p0, password:Ljava/lang/String;

    .line 27
    iput-object p5, p0, domain:Ljava/lang/String;

    .line 28
    iput-object p6, p0, workstation:Ljava/lang/String;

    .line 29
    iput-object p1, p0, serverChallenge:[B

    .line 30
    iput p7, p0, lmCompatibility:I

    .line 31
    return-void
.end method

.method private createDESKey([BI)Ljava/security/Key;
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 34
    new-array v1, v3, [B

    .line 35
    .local v1, "keyBytes":[B
    invoke-static {p1, p2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 36
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 37
    .local v2, "material":[B
    aget-byte v3, v1, v4

    aput-byte v3, v2, v4

    .line 38
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_28

    .line 39
    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v1, v3

    array-length v4, v2

    sub-int/2addr v4, v0

    shl-int/2addr v3, v4

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 41
    :cond_28
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 42
    invoke-direct {p0, v2}, processParityForBytes([B)V

    .line 43
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private createType3Message()[B
    .registers 22

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, ntResponse:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, lmResponse:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, username:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    .line 129
    :cond_18
    const/4 v12, 0x0

    .line 186
    :goto_19
    return-object v12

    .line 132
    :cond_1a
    const/16 v17, 0x1

    :try_start_1c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, isFlagSet(I)Z

    move-result v17

    if-eqz v17, :cond_121

    const-string v6, "UTF-16LE"

    .line 135
    .local v6, "encodingStandard":Ljava/lang/String;
    :goto_28
    const/4 v4, 0x0

    .line 136
    .local v4, "domainBytes":[B
    const/4 v5, 0x0

    .line 137
    .local v5, "domainLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, domain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3f

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, domain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 139
    array-length v5, v4

    .line 142
    :cond_3f
    const/4 v15, 0x0

    .line 143
    .local v15, "workstationBytes":[B
    const/16 v16, 0x0

    .line 144
    .local v16, "workstationLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, workstation:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_59

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, workstation:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 146
    array-length v0, v15

    move/from16 v16, v0

    .line 149
    :cond_59
    const/4 v13, 0x0

    .line 150
    .local v13, "usernameBytes":[B
    const/4 v14, 0x0

    .line 151
    .local v14, "usernameLength":I
    const-string v17, "Cp850"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_75

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, username:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, username:Ljava/lang/String;

    .line 154
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, username:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 155
    array-length v14, v13

    .line 157
    const/4 v10, 0x0

    .line 158
    .local v10, "sessionKeyBytes":[B
    const/4 v11, 0x0

    .line 160
    .local v11, "sessionKeyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, ntResponse:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 161
    .local v8, "ntResponseLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, lmResponse:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v7, v0

    .line 162
    .local v7, "lmResponseLength":I
    add-int/lit8 v17, v5, 0x40

    add-int v17, v17, v14

    add-int v17, v17, v16

    add-int v17, v17, v7

    add-int v17, v17, v8

    add-int v17, v17, v11

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 164
    .local v12, "type3MessageBytes":[B
    sget-object v17, NTLM_HEADER_BYTES:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 165
    const/16 v17, 0x8

    const/16 v18, 0x3

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    .line 166
    const/16 v9, 0x40

    .line 167
    .local v9, "offset":I
    const/16 v17, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, lmResponse:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v9, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 168
    add-int/2addr v9, v7

    .line 169
    const/16 v17, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, ntResponse:[B

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v12, v0, v9, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 170
    add-int/2addr v9, v8

    .line 171
    const/16 v17, 0x1c

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 172
    add-int/2addr v9, v5

    .line 173
    const/16 v17, 0x24

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 174
    add-int/2addr v9, v14

    .line 175
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 176
    add-int v9, v9, v16

    .line 177
    const/16 v17, 0x34

    move/from16 v0, v17

    invoke-static {v12, v0, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    .line 178
    const/16 v17, 0x3c

    invoke-virtual/range {p0 .. p0}, getFlags()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    goto/16 :goto_19

    .line 181
    .end local v4    # "domainBytes":[B
    .end local v5    # "domainLength":I
    .end local v6    # "encodingStandard":Ljava/lang/String;
    .end local v7    # "lmResponseLength":I
    .end local v8    # "ntResponseLength":I
    .end local v9    # "offset":I
    .end local v10    # "sessionKeyBytes":[B
    .end local v11    # "sessionKeyLength":I
    .end local v12    # "type3MessageBytes":[B
    .end local v13    # "usernameBytes":[B
    .end local v14    # "usernameLength":I
    .end local v15    # "workstationBytes":[B
    .end local v16    # "workstationLength":I
    :catch_11d
    move-exception v17

    .line 186
    :goto_11e
    const/4 v12, 0x0

    goto/16 :goto_19

    .line 132
    :cond_121
    const-string v6, "Cp850"
    :try_end_123
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_123} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_123} :catch_125

    goto/16 :goto_28

    .line 183
    :catch_125
    move-exception v17

    goto :goto_11e
.end method

.method private getLMResponse(Ljava/lang/String;[B)[B
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1}, lmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    .local v0, "lmHash":[B
    invoke-direct {p0, v0, p2}, lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .param p3, "clientNonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1}, ntlmHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 90
    .local v1, "ntlmHash":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 91
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    invoke-virtual {v0, p3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 93
    new-array v2, v5, [B

    .line 94
    .local v2, "sessionHash":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 95
    invoke-direct {p0, v1, v2}, lmResponse([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method private getNTLMResponse(Ljava/lang/String;[B)[B
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1}, ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, "ntlmHash":[B
    invoke-direct {p0, v0, p2}, lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private lmHash(Ljava/lang/String;)[B
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Cp850"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 100
    .local v9, "oemPassword":[B
    array-length v10, v9

    const/16 v11, 0xe

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 101
    .local v4, "length":I
    const/16 v10, 0xe

    new-array v3, v10, [B

    .line 102
    .local v3, "keyBytes":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 103
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10}, createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    .line 104
    .local v7, "lowKey":Ljava/security/Key;
    const/4 v10, 0x7

    invoke-direct {p0, v3, v10}, createDESKey([BI)Ljava/security/Key;

    move-result-object v2

    .line 105
    .local v2, "highKey":Ljava/security/Key;
    const-string v10, "KGS!@#$%"

    const-string v11, "US-ASCII"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 106
    .local v8, "magicConstant":[B
    const-string v10, "DES/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 107
    .local v0, "des":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 109
    .local v6, "lowHash":[B
    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 111
    .local v1, "highHash":[B
    const/16 v10, 0x10

    new-array v5, v10, [B

    .line 112
    .local v5, "lmHash":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v6, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 113
    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-static {v1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 114
    return-object v5
.end method

.method private lmResponse([B[B)[B
    .registers 15
    .param p1, "hash"    # [B
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    const/16 v9, 0x15

    new-array v3, v9, [B

    .line 61
    .local v3, "keyBytes":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {p1, v9, v3, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 62
    const/4 v9, 0x0

    invoke-direct {p0, v3, v9}, createDESKey([BI)Ljava/security/Key;

    move-result-object v5

    .line 63
    .local v5, "lowKey":Ljava/security/Key;
    const/4 v9, 0x7

    invoke-direct {p0, v3, v9}, createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    .line 64
    .local v7, "middleKey":Ljava/security/Key;
    const/16 v9, 0xe

    invoke-direct {p0, v3, v9}, createDESKey([BI)Ljava/security/Key;

    move-result-object v1

    .line 65
    .local v1, "highKey":Ljava/security/Key;
    const-string v9, "DES/ECB/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 66
    .local v0, "des":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 67
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 68
    .local v6, "lowResponse":[B
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 69
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 70
    .local v8, "middleResponse":[B
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 72
    .local v2, "highResponse":[B
    const/16 v9, 0x18

    new-array v4, v9, [B

    .line 73
    .local v4, "lmResponse":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v6, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 74
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x8

    invoke-static {v8, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v11, 0x8

    invoke-static {v2, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 76
    return-object v4
.end method

.method private ntlmHash(Ljava/lang/String;)[B
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 82
    .local v1, "unicodePassword":[B
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;-><init>()V

    .line 83
    .local v0, "md4":Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->update([B)V

    .line 84
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->digest()[B

    move-result-object v2

    return-object v2
.end method

.method private processParityForBytes([B)V
    .registers 7
    .param p1, "bytes"    # [B

    .prologue
    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_35

    .line 48
    aget-byte v0, p1, v1

    .line 49
    .local v0, "b":B
    ushr-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v0, 0x1

    xor-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2b

    const/4 v2, 0x1

    .line 51
    .local v2, "needsParity":Z
    :goto_1f
    if-eqz v2, :cond_2d

    .line 52
    aget-byte v3, p1, v1

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 47
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    .end local v2    # "needsParity":Z
    :cond_2b
    const/4 v2, 0x0

    goto :goto_1f

    .line 54
    .restart local v2    # "needsParity":Z
    :cond_2d
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    goto :goto_28

    .line 57
    .end local v0    # "b":B
    .end local v2    # "needsParity":Z
    :cond_35
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v4, p0, username:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, password:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, serverChallenge:[B

    if-nez v4, :cond_e

    .line 225
    :cond_d
    :goto_d
    :pswitch_d
    return-object v3

    .line 195
    :cond_e
    iget v4, p0, lmCompatibility:I

    packed-switch v4, :pswitch_data_60

    :pswitch_13
    goto :goto_d

    .line 198
    :pswitch_14
    const/high16 v4, 0x80000

    :try_start_16
    invoke-virtual {p0, v4}, isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 199
    const/16 v4, 0x18

    new-array v1, v4, [B

    .line 200
    .local v1, "randomClientNonce":[B
    iget-object v4, p0, randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 201
    const/16 v4, 0x8

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 203
    iget-object v4, p0, password:Ljava/lang/String;

    iget-object v5, p0, serverChallenge:[B

    invoke-direct {p0, v4, v5, v1}, getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B

    move-result-object v4

    iput-object v4, p0, ntResponse:[B

    .line 204
    iput-object v1, p0, lmResponse:[B

    .line 205
    invoke-direct {p0}, createType3Message()[B

    move-result-object v2

    .line 206
    .local v2, "type3MessageBytes":[B
    if-eqz v2, :cond_d

    .line 209
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 211
    .end local v1    # "randomClientNonce":[B
    .end local v2    # "type3MessageBytes":[B
    :cond_45
    iget-object v4, p0, password:Ljava/lang/String;

    iget-object v5, p0, serverChallenge:[B

    invoke-direct {p0, v4, v5}, getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, p0, lmResponse:[B

    .line 212
    iget-object v4, p0, password:Ljava/lang/String;

    iget-object v5, p0, serverChallenge:[B

    invoke-direct {p0, v4, v5}, getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, p0, ntResponse:[B
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_59} :catch_5a

    goto :goto_d

    .line 214
    :catch_5a
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 195
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_d
    .end packed-switch
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
    .line 230
    return-void
.end method
