.class public Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;


# static fields
.field public static final _URI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

.field static class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

.field static class$java$security$PrivateKey:Ljava/lang/Class;

.field static class$java$security$PublicKey:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _signatureAlgorithm:Ljava/security/Signature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.implementations.SignatureDSA"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Created SignatureDSA using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_31
    :try_start_31
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.NoSuchAlgorithm"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static convertASN1toXMLDSIG([B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x14

    const/4 v6, 0x2

    const/4 v0, 0x3

    aget-byte v3, p0, v0

    move v2, v3

    :goto_7
    if-lez v2, :cond_14

    add-int/lit8 v0, v3, 0x4

    sub-int/2addr v0, v2

    aget-byte v0, p0, v0

    if-nez v0, :cond_14

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_7

    :cond_14
    add-int/lit8 v0, v3, 0x5

    aget-byte v1, p0, v0

    move v0, v1

    :goto_19
    if-lez v0, :cond_26

    add-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v1

    sub-int/2addr v4, v0

    aget-byte v4, p0, v4

    if-nez v4, :cond_26

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_26
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_43

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_43

    aget-byte v4, p0, v6

    if-ne v4, v6, :cond_43

    if-gt v2, v7, :cond_43

    add-int/lit8 v4, v3, 0x4

    aget-byte v4, p0, v4

    if-ne v4, v6, :cond_43

    if-le v0, v7, :cond_4b

    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ASN.1 format of DSA signature"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/16 v4, 0x28

    new-array v4, v4, [B

    add-int/lit8 v5, v3, 0x4

    sub-int/2addr v5, v2

    rsub-int/lit8 v6, v2, 0x14

    invoke-static {p0, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x6

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    rsub-int/lit8 v2, v0, 0x28

    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method private static convertXMLDSIGtoASN1([B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x14

    const/4 v7, 0x2

    array-length v0, p0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid XMLDSIG format of DSA signature"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v1, v3

    :goto_11
    if-lez v1, :cond_1c

    rsub-int/lit8 v0, v1, 0x14

    aget-byte v0, p0, v0

    if-nez v0, :cond_1c

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_1c
    rsub-int/lit8 v0, v1, 0x14

    aget-byte v0, p0, v0

    if-gez v0, :cond_6b

    add-int/lit8 v0, v1, 0x1

    :goto_24
    if-lez v3, :cond_2f

    rsub-int/lit8 v2, v3, 0x28

    aget-byte v2, p0, v2

    if-nez v2, :cond_2f

    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    :cond_2f
    rsub-int/lit8 v2, v3, 0x28

    aget-byte v2, p0, v2

    if-gez v2, :cond_69

    add-int/lit8 v2, v3, 0x1

    :goto_37
    add-int/lit8 v4, v0, 0x6

    add-int/2addr v4, v2

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, 0x30

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    aput-byte v7, v4, v7

    const/4 v5, 0x3

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    rsub-int/lit8 v5, v1, 0x14

    add-int/lit8 v6, v0, 0x4

    sub-int/2addr v6, v1

    invoke-static {p0, v5, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v0, 0x4

    aput-byte v7, v4, v1

    add-int/lit8 v1, v0, 0x5

    int-to-byte v5, v2

    aput-byte v5, v4, v1

    rsub-int/lit8 v1, v3, 0x28

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    invoke-static {p0, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_69
    move v2, v3

    goto :goto_37

    :cond_6b
    move v0, v1

    goto :goto_24
.end method


# virtual methods
.method protected engineGetJCEAlgorithmString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetJCEProviderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, class$java$security$PrivateKey:Ljava/lang/Class;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "java.security.PrivateKey"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$security$PrivateKey:Ljava/lang/Class;

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    sget-object v0, class$java$security$PrivateKey:Ljava/lang/Class;

    goto :goto_19

    :cond_31
    :try_start_31
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_38
    .catch Ljava/security/InvalidKeyException; {:try_start_31 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, class$java$security$PrivateKey:Ljava/lang/Class;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "java.security.PrivateKey"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$security$PrivateKey:Ljava/lang/Class;

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    sget-object v0, class$java$security$PrivateKey:Ljava/lang/Class;

    goto :goto_19

    :cond_31
    :try_start_31
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_38
    .catch Ljava/security/InvalidKeyException; {:try_start_31 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.CannotUseAlgorithmParameterSpecOnDSA"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, class$java$security$PublicKey:Ljava/lang/Class;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "java.security.PublicKey"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$security$PublicKey:Ljava/lang/Class;

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    sget-object v0, class$java$security$PublicKey:Ljava/lang/Class;

    goto :goto_19

    :cond_31
    :try_start_31
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    check-cast p1, Ljava/security/PublicKey;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_38
    .catch Ljava/security/InvalidKeyException; {:try_start_31 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineSetHMACOutputLength(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.HMACOutputLengthOnlyForHMAC"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineSign()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-static {v0}, convertASN1toXMLDSIG([B)[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_9} :catch_15

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_15
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineVerify([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Called DSA.verify() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_28
    invoke-static {p1}, convertXMLDSIGtoASN1([B)[B

    move-result-object v0

    iget-object v1, p0, _signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_31
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_31} :catch_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_3d

    move-result v0

    return v0

    :catch_33
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
