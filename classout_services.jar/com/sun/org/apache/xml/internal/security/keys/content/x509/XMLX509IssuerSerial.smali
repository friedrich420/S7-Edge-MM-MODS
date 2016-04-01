.class public Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509DataContent;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509IssuerSerial:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509IssuerSerial:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509IssuerSerial"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509IssuerSerial:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$content$x509$XMLX509IssuerSerial:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/math/BigInteger;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    const-string v0, "X509IssuerName"

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addTextElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    invoke-virtual {p3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X509SerialNumber"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->addTextElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V
    .registers 5

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/math/BigInteger;)V

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

    :cond_17
    :goto_17
    return v0

    :cond_18
    check-cast p1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    invoke-virtual {p1}, getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, getIssuerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, getIssuerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "X509IssuerSerial"

    return-object v0
.end method

.method public getIssuerName()Ljava/lang/String;
    .registers 3

    const-string v0, "X509IssuerName"

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getTextFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/RFC2253Parser;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 6

    const-string v0, "X509SerialNumber"

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getTextFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "In dem X509SerialNumber wurde gefunden: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2d
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getSerialNumberInteger()I
    .registers 2

    invoke-virtual {p0}, getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method
