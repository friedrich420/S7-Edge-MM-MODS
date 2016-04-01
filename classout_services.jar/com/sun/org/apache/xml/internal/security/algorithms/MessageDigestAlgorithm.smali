.class public Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;


# static fields
.field public static final ALGO_ID_DIGEST_NOT_RECOMMENDED_MD5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#md5"

.field public static final ALGO_ID_DIGEST_RIPEMD160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#ripemd160"

.field public static final ALGO_ID_DIGEST_SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#sha1"

.field public static final ALGO_ID_DIGEST_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha256"

.field public static final ALGO_ID_DIGEST_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#sha384"

.field public static final ALGO_ID_DIGEST_SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha512"

.field static class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field algorithm:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.MessageDigestAlgorithm"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>(Lorg/w3c/dom/Document;Ljava/security/MessageDigest;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, algorithm:Ljava/security/MessageDigest;

    iput-object p2, p0, algorithm:Ljava/security/MessageDigest;

    return-void
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

.method public static getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "algorithms.NoSuchMap"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_15
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->getProviderId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    :try_start_1b
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_1e} :catch_2a
    .catch Ljava/security/NoSuchProviderException; {:try_start_1b .. :try_end_1e} :catch_3d

    move-result-object v0

    :goto_1f
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-direct {v1, p0, v0, p1}, <init>(Lorg/w3c/dom/Document;Ljava/security/MessageDigest;Ljava/lang/String;)V

    return-object v1

    :cond_25
    :try_start_25
    invoke-static {v1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_28} :catch_2a
    .catch Ljava/security/NoSuchProviderException; {:try_start_25 .. :try_end_28} :catch_3d

    move-result-object v0

    goto :goto_1f

    :catch_2a
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.NoSuchAlgorithm"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_3d
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.NoSuchAlgorithm"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static isEqual([B[B)Z
    .registers 3

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public digest([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    return v0
.end method

.method public digest()[B
    .registers 2

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public digest([B)[B
    .registers 3

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/security/MessageDigest;
    .registers 2

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "DigestMethod"

    return-object v0
.end method

.method public getBaseNamespace()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    return-object v0
.end method

.method public getDigestLength()I
    .registers 2

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public getJCEAlgorithmString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEProvider()Ljava/security/Provider;
    .registers 2

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update([B)V
    .registers 3

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
