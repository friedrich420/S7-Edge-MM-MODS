.class public abstract Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;
.super Ljava/lang/Object;


# static fields
.field public static final MODE_CREATE:I = 0x0

.field public static final MODE_DECRYPT:I = 0x1

.field public static final MODE_ENCRYPT:I = 0x0

.field public static final MODE_PROCESS:I = 0x1

.field public static final MODE_SIGN:I = 0x0

.field public static final MODE_UNKNOWN:I = 0x2

.field public static final MODE_VERIFY:I = 0x1

.field static _prefixMappings:Ljava/util/HashMap;

.field static class$com$sun$org$apache$xml$internal$security$utils$ElementProxy:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _baseURI:Ljava/lang/String;

.field protected _constructionElement:Lorg/w3c/dom/Element;

.field protected _doc:Lorg/w3c/dom/Document;

.field protected _state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$ElementProxy:Ljava/lang/Class;

    if-nez v0, :cond_1e

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.ElementProxy"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$ElementProxy:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, _prefixMappings:Ljava/util/HashMap;

    return-void

    :cond_1e
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$ElementProxy:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, _state:I

    iput-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    iput-object v0, p0, _baseURI:Ljava/lang/String;

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    iput v1, p0, _state:I

    iput-object v0, p0, _baseURI:Ljava/lang/String;

    iput-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 5

    invoke-direct {p0}, <init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, _doc:Lorg/w3c/dom/Document;

    const/4 v0, 0x0

    iput v0, p0, _state:I

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    invoke-virtual {p0}, getBaseNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, getBaseLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0}, <init>()V

    if-nez p1, :cond_d

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v1, "ElementProxy.nullElement"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "setElement(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_46
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    const/4 v0, 0x1

    iput v0, p0, _state:I

    iput-object p1, p0, _constructionElement:Lorg/w3c/dom/Element;

    iput-object p2, p0, _baseURI:Ljava/lang/String;

    invoke-virtual {p0}, guaranteeThatElementInCorrectSpace()V

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

.method public static createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 8

    invoke-static {p1}, getDefaultPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_c

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    :cond_14
    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static getDefaultPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, _prefixMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setDefaultPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    sget-object v0, _prefixMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, _prefixMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "prefix.AlreadyAssigned"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_29
    sget-object v0, _prefixMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addBase64Element([BLjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1a

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encodeToElement(Lorg/w3c/dom/Document;Ljava/lang/String;[B)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, _doc:Lorg/w3c/dom/Document;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1a
    return-void
.end method

.method public addBase64Text([B)V
    .registers 5

    if-eqz p1, :cond_2a

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    iget-object v1, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2a
    return-void
.end method

.method public addBigIntegerElement(Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_15

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->fillElementWithBigInteger(Lorg/w3c/dom/Element;Ljava/math/BigInteger;)V

    iget-object v1, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_15
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_d

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    iget-object v1, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_d
    return-void
.end method

.method public addTextElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, _doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public abstract getBaseLocalName()Ljava/lang/String;
.end method

.method public abstract getBaseNamespace()Ljava/lang/String;
.end method

.method public getBaseURI()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _baseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getBigIntegerFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;
        }
    .end annotation

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decodeBigIntegerFromText(Lorg/w3c/dom/Text;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBytesFromChildElement(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesFromTextChild()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .registers 2

    iget-object v0, p0, _doc:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public final getElement()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public final getElementPlusReturns()Lorg/w3c/dom/NodeList;
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;-><init>()V

    iget-object v1, p0, _doc:Lorg/w3c/dom/Document;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0}, getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    iget-object v1, p0, _doc:Lorg/w3c/dom/Document;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getTextFromChildElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextFromTextChild()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getFullTextChildrenFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guaranteeThatElementInCorrectSpace()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, getBaseLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, getBaseNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    :cond_20
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v1, "xml.WrongElement"

    invoke-direct {v0, v1, v4}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_60
    return-void
.end method

.method public length(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    :goto_a
    if-eqz v1, :cond_27

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v0, v0, 0x1

    :cond_22
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_a

    :cond_27
    return v0
.end method

.method public setElement(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string v1, "ElementProxy.nullElement"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "setElement("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_43
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    const/4 v0, 0x1

    iput v0, p0, _state:I

    iput-object p1, p0, _constructionElement:Lorg/w3c/dom/Element;

    iput-object p2, p0, _baseURI:Ljava/lang/String;

    return-void
.end method

.method public setXPathNamespaceContext(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_8
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v1, "defaultNamespaceCannotBeSetHere"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string/jumbo v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v1, "defaultNamespaceCannotBeSetHere"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const-string/jumbo v0, "xmlns:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :goto_2c
    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, _constructionElement:Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "namespacePrefixAlreadyUsedByOtherURI"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_5a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_6f
    iget-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v1, p1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return-void
.end method
