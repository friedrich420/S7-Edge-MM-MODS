.class public abstract Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;


# static fields
.field static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field _inclusiveNSSet:Ljava/util/TreeSet;

.field final result:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, result:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    invoke-super {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B

    move-result-object v0

    return-object v0
.end method

.method final handleAttributes(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, result:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    move-object v3, v1

    move v1, v0

    :goto_17
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_26

    iget-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    :cond_26
    move v5, v2

    :goto_27
    if-ge v5, v1, :cond_96

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v10

    if-nez v10, :cond_41

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_27

    :cond_41
    const-string/jumbo v10, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6f

    if-eqz v7, :cond_3d

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6b

    const-string/jumbo v9, "xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6b

    const-string/jumbo v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6b

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6b
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_6f
    invoke-virtual {p2, v8, v9, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-static {v9}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v2, 0x2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v2, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_96
    if-eqz v7, :cond_f1

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v1, "xmlns"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_b4

    const-string/jumbo v0, "xmlns"

    const-string v1, ""

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    invoke-virtual {p2, v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_b4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ea

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e6

    :cond_c6
    const-string/jumbo v0, "xmlns"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_cc
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d0
    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_d0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_e6
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_ea
    const-string/jumbo v0, "xmlns"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_f1
    iget-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f7
    :goto_f7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMappingWithoutRendered(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_f7

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    :cond_10d
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_112
    move v1, v2

    move-object v3, v4

    goto/16 :goto_17
.end method

.method handleAttributesSubtree(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v6, p0, result:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    move v2, v0

    move-object v4, v1

    :goto_17
    iget-object v0, p0, _inclusiveNSSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    move v5, v3

    :goto_20
    if-ge v5, v2, :cond_86

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_58

    const-string/jumbo v8, "xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    const-string/jumbo v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_20

    :cond_5f
    invoke-virtual {p2, v7, v8, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-static {v8}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/C14nHelper;->namespaceIsRelative(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v7, v0, v2

    const/4 v2, 0x2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string v2, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_86
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bc

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b8

    :cond_98
    const-string/jumbo v1, "xmlns"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_9e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a2
    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    :cond_b8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_bc
    const-string/jumbo v1, "xmlns"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_c3
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_c8
    move v2, v3

    move-object v4, v0

    goto/16 :goto_17
.end method
