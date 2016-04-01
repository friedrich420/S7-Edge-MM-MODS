.class public Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509DataContent;


# static fields
.field public static final JCA_CERT_ID:Ljava/lang/String; = "X.509"

.field static class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509Certificate:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509Certificate:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509Certificate"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509Certificate:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509Certificate:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    :try_start_3
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBase64Text([B)V
    :try_end_a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;[B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBase64Text([B)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    check-cast p1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    invoke-virtual {p1}, getCertificateBytes()[B

    move-result-object v1

    invoke-virtual {p0}, getCertificateBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z
    :try_end_25
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_25} :catch_27

    move-result v0

    goto :goto_17

    :catch_27
    move-exception v1

    goto :goto_17
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "X509Certificate"

    return-object v0
.end method

.method public getCertificateBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBytesFromTextChild()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, getCertificateBytes()[B

    move-result-object v0

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_15} :catch_1a

    if-eqz v0, :cond_18

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
