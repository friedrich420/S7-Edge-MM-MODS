.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;
    }
.end annotation


# static fields
.field static class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class; = null

.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xpath-19991116"

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.TransformXPath"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$TransformXPath:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

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

.method private needsCircunvent(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/TR/1999/REC-xpath-19991116"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->setDoc(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "XPath"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_41

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "ds:XPath"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Transform"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_37
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_41
    :try_start_41
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, needsCircunvent(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNeedsToBeExpanded(Z)V

    if-nez v1, :cond_60

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const-string v2, "Text must be in ds:Xpath"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_60
    new-instance v3, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;-><init>(Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNodeSet(Z)V
    :try_end_6c
    .catch Lorg/w3c/dom/DOMException; {:try_start_41 .. :try_end_6c} :catch_37

    return-object p1
.end method
