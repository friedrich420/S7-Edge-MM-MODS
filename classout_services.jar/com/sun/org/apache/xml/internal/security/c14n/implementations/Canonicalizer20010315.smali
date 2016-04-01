.class public abstract Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;


# static fields
.field static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field static final XML_LANG_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field firstCall:Z

.field final result:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, firstCall:Z

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, result:Ljava/util/SortedSet;

    return-void
.end method

.method private addXmlAttributes(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V
    .registers 11

    const/4 v7, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_6f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_6f

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_6f

    :goto_18
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_6f

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_29
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_18

    :cond_2e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_34
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_29

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_34

    :cond_6f
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addXmlAttributesSubtree(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V
    .registers 11

    const/4 v7, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_69

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_69

    :goto_12
    if-eqz v1, :cond_69

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_69

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_23
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_12

    :cond_28
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_2e
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_23

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e

    :cond_69
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v1, "c14n.Canonicalizer.UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v1, "c14n.Canonicalizer.UnsupportedOperation"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleAttributes(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    move-object v3, v1

    move v1, v0

    :goto_17
    iget-object v7, p0, result:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    move v5, v2

    :goto_1d
    if-ge v5, v1, :cond_84

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_43

    if-eqz v6, :cond_3f

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1d

    :cond_43
    const-string/jumbo v10, "xml"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    const-string/jumbo v10, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    :cond_55
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-virtual {p2, v8, v9, v0, v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRenderXNodeSet(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;Z)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_3f

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Lorg/w3c/dom/Attr;)Z

    move-result v9

    if-eqz v9, :cond_3f

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v8, v1, v12

    const/4 v2, 0x2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v2, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_84
    if-eqz v6, :cond_a1

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v1, "xmlns"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_a6

    const-string/jumbo v0, "xmlns"

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    :cond_99
    :goto_99
    if-eqz v4, :cond_9e

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9e
    invoke-direct {p0, p1, v7}, addXmlAttributes(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V

    :cond_a1
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_a6
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_99

    const-string/jumbo v0, "xmlns"

    const-string v1, ""

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    invoke-virtual {p2, v0, v1, v2, v12}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRenderXNodeSet(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_99

    :cond_b8
    move v1, v2

    move-object v3, v4

    goto/16 :goto_17
.end method

.method handleAttributesSubtree(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, firstCall:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v3, p0, result:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    move v1, v2

    :goto_1b
    if-ge v1, v5, :cond_7b

    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_3f
    const-string/jumbo v8, "xml"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    const-string/jumbo v8, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    :cond_51
    invoke-virtual {p2, v6, v7, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRender(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_3b

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Lorg/w3c/dom/Attr;)Z

    move-result v7

    if-eqz v7, :cond_3b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v2, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7b
    iget-boolean v0, p0, firstCall:Z

    if-eqz v0, :cond_87

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getUnrenderedNodes(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v3}, addXmlAttributesSubtree(Lorg/w3c/dom/Element;Ljava/util/SortedSet;)V

    iput-boolean v2, p0, firstCall:Z

    :cond_87
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c
.end method
