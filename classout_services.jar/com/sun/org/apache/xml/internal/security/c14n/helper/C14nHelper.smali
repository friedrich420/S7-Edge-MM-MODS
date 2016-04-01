.class public Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotRelativeNS(Lorg/w3c/dom/Attr;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_19

    if-eqz v2, :cond_2

    :cond_19
    invoke-static {p0}, namespaceIsRelative(Lorg/w3c/dom/Attr;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v1, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v0, v1, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static checkForRelativeNamespace(Lorg/w3c/dom/Element;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_23

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-static {v0}, assertNotRelativeNS(Lorg/w3c/dom/Attr;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1b
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v1, "Called checkForRelativeNamespace() on null"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return-void
.end method

.method public static checkTraversability(Lorg/w3c/dom/Document;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const-string v0, "Traversal"

    const-string v1, "2.0"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Node;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v2, "c14n.Canonicalizer.TraversalNotSupported"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_24
    return-void
.end method

.method public static namespaceIsAbsolute(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static namespaceIsAbsolute(Lorg/w3c/dom/Attr;)Z
    .registers 2

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, namespaceIsAbsolute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static namespaceIsRelative(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, namespaceIsAbsolute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static namespaceIsRelative(Lorg/w3c/dom/Attr;)Z
    .registers 2

    invoke-static {p0}, namespaceIsAbsolute(Lorg/w3c/dom/Attr;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
