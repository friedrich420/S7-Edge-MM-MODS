.class public Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509DataContent;


# static fields
.field public static final SKI_OID:Ljava/lang/String; = "2.5.29.14"

.field static class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

.field static class$java$io$InputStream:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509SKI"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509SKI:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    invoke-static {p2}, getSKIBytesFromCert(Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addBase64Text([B)V

    return-void
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

.method public static getSKIBytesFromCert(Ljava/security/cert/X509Certificate;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    :try_start_0
    const-string v0, "2.5.29.14"

    invoke-interface {p0, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v2, "certificate.noSki.lowVersion"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2e
    const/4 v1, 0x0

    :try_start_2f
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, v2}, Lsun/security/util/DerValue;-><init>([B)V

    if-nez v0, :cond_c2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v3, "certificate.noSki.null"

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2f .. :try_end_3e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_24

    :catch_3e
    move-exception v0

    :goto_3f
    if-nez v1, :cond_8e

    :try_start_41
    const-string/jumbo v0, "org.bouncycastle.asn1.DERInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_104

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v0, class$java$io$InputStream:Ljava/lang/Class;

    if-nez v0, :cond_d5

    const-string/jumbo v0, "java.io.InputStream"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$io$InputStream:Ljava/lang/Class;

    :goto_5b
    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-string/jumbo v2, "readObject"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d8

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v2, "certificate.noSki.null"

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_8d} :catch_8d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_8d} :catch_24

    :catch_8d
    move-exception v0

    :cond_8e
    :goto_8e
    :try_start_8e
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_c1

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Base64 of SKI is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_c1} :catch_24

    :cond_c1
    return-object v0

    :cond_c2
    :try_start_c2
    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x4

    if-eq v3, v4, :cond_cf

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v3, "certificate.noSki.notOctetString"

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cf
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B
    :try_end_d2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c2 .. :try_end_d2} :catch_3e
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_d2} :catch_24

    move-result-object v1

    goto/16 :goto_3f

    :cond_d5
    :try_start_d5
    sget-object v0, class$java$io$InputStream:Ljava/lang/Class;

    goto :goto_5b

    :cond_d8
    const-string/jumbo v2, "org.bouncycastle.asn1.ASN1OctetString"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ed

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v2, "certificate.noSki.notOctetString"

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ed
    const-string/jumbo v3, "getOctets"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_102} :catch_8d
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_102} :catch_24

    :goto_102
    move-object v1, v0

    goto :goto_8e

    :cond_104
    move-object v0, v1

    goto :goto_102
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

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
    check-cast p1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    :try_start_1a
    invoke-virtual {p1}, getSKIBytes()[B

    move-result-object v1

    invoke-virtual {p0}, getSKIBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z
    :try_end_25
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1a .. :try_end_25} :catch_27

    move-result v0

    goto :goto_17

    :catch_27
    move-exception v1

    goto :goto_17
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "X509SKI"

    return-object v0
.end method

.method public getSKIBytes()[B
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
