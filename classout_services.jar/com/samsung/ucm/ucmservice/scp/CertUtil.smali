.class public Lcom/samsung/ucm/ucmservice/scp/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UCM::CertUtil"

.field public static final TAG_CA_ID:B = 0x42t

.field private static final TAG_ECC_KEY_PARAMETER:B = -0x10t

.field private static final TAG_ECC_PUB_KEY_VALUE:B = -0x50t

.field public static final TAG_EXPIRATION_DATE:S = 0x5f24s

.field private static final TAG_PUBLIC_KEY_DATA:S = 0x7f49s


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, DEBUG:Z

    return-void
.end method

.method public static toBin(Ljava/lang/String;)[B
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 35
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v4, v0

    if-ge v1, v4, :cond_20

    .line 36
    mul-int/lit8 v2, v1, 0x2

    .line 37
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 38
    .local v3, "v":I
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 40
    .end local v2    # "index":I
    .end local v3    # "v":I
    :cond_20
    return-object v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # B

    .prologue
    .line 30
    const-string v0, "%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 10
    .param p0, "a"    # [B

    .prologue
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_27

    aget-byte v1, v0, v2

    .line 25
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 26
    .end local v1    # "b":B
    :cond_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public updateTlvCaCert([B)[B
    .registers 15
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v10, v11}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v8

    .line 53
    .local v8, "tlv_ca_cert":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, 0x7f49

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-virtual {v8, v10}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v9

    check-cast v9, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    .line 55
    .local v9, "tlv_pub_key":Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x50

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 56
    .local v3, "key_val":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x10

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    .line 57
    .local v2, "key_param":Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;
    if-eqz v3, :cond_183

    if-eqz v2, :cond_183

    .line 59
    const-string v10, "EC"

    const-string v11, "BC"

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 60
    .local v4, "kf":Ljava/security/KeyFactory;
    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/ECPublicKey;

    .line 63
    .local v6, "pubKey2":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    .line 65
    .local v5, "point":Ljava/security/spec/ECPoint;
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_71

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_71
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x50

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 67
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v11, -0x10

    invoke-direct {v10, v11}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_cc

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_cc
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_f4

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Y:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_f4
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_119

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removed pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_119
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v11, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v12, -0x50

    invoke-direct {v11, v12}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v9, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 79
    invoke-virtual {v9, v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    .line 80
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_153

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "added new pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_153
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v0

    .line 83
    .local v0, "a":[B
    iget-boolean v10, p0, DEBUG:Z

    if-eqz v10, :cond_178

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "final tlv : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_178
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v10, v11}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v7

    .line 86
    .local v7, "test":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v10

    return-object v10

    .line 89
    .end local v0    # "a":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "kf":Ljava/security/KeyFactory;
    .end local v5    # "point":Ljava/security/spec/ECPoint;
    .end local v6    # "pubKey2":Ljava/security/interfaces/ECPublicKey;
    .end local v7    # "test":Lcom/samsung/ucm/ucmservice/scp/BerTLV;
    :cond_183
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10}, Ljava/lang/Exception;-><init>()V

    throw v10
.end method
