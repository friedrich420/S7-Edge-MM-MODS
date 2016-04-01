.class public Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addReturnToElement(Lorg/w3c/dom/Element;)V
    .registers 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static circumventBug2650(Lorg/w3c/dom/Document;)V
    .registers 5

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-static {p0}, circumventBug2650internal(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method private static circumventBug2650internal(Lorg/w3c/dom/Node;)V
    .registers 10

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v0

    move-object v1, p0

    :goto_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_94

    move-object p0, v2

    move-object v1, v3

    :goto_d
    if-nez p0, :cond_87

    if-eqz v1, :cond_87

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object p0, v2

    goto :goto_d

    :sswitch_1b
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v4

    if-nez v4, :cond_27

    move-object p0, v2

    move-object v1, v3

    goto :goto_d

    :cond_27
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_39
    if-eqz v2, :cond_81

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_47

    :cond_42
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_39

    :cond_47
    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    move v4, v3

    :goto_4c
    if-ge v4, v6, :cond_42

    invoke-interface {v5, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    :cond_61
    :goto_61
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4c

    :cond_65
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v7, v8, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_81
    :sswitch_81
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object p0, v2

    goto :goto_d

    :cond_87
    if-nez p0, :cond_8a

    return-void

    :cond_8a
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v2, v0

    move-object v3, v1

    move-object v1, p0

    goto/16 :goto_4

    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_1b
        0x5 -> :sswitch_81
        0x9 -> :sswitch_81
    .end sparse-switch
.end method

.method public static convertNodelistToSet(Lorg/w3c/dom/NodeList;)Ljava/util/Set;
    .registers 5

    if-nez p0, :cond_8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_7
    return-object v0

    :cond_8
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_7

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public static createDSctx(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must supply a prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v0, 0x0

    const-string/jumbo v1, "namespaceContext"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Document is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/Constants;->getSignatureSpecNSprefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_16
    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    const-string/jumbo v3, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-object v0

    :cond_2a
    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

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

    const-string/jumbo v3, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v0, v2, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public static elementIsInEncryptionSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static excludeNodeFromSet(Lorg/w3c/dom/Node;Ljava/util/Set;)Ljava/util/Set;
    .registers 6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {p0, v0}, isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v1
.end method

.method public static getFullTextChildrenFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v4, :cond_29

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOwnerDocument(Ljava/util/Set;)Lorg/w3c/dom/Document;
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1c

    check-cast v0, Lorg/w3c/dom/Document;

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    :try_start_1f
    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_1b

    :cond_2a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_2d} :catch_62

    move-result-object v0

    goto :goto_1b

    :cond_2f
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Original message was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-nez v0, :cond_5d

    const-string v0, ""

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :catch_62
    move-exception v0

    goto :goto_5
.end method

.method public static getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;
    .registers 5

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    check-cast p0, Lorg/w3c/dom/Document;

    :goto_a
    return-object p0

    :cond_b
    :try_start_b
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p0

    goto :goto_a

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Original message was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSet(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V
    .registers 5

    if-eqz p2, :cond_9

    invoke-static {p2, p0}, isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {p0, p1, p2, p3}, getSetRec(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    goto :goto_8
.end method

.method static final getSetRec(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V
    .registers 8

    const/4 v3, 0x3

    if-ne p0, p2, :cond_4

    :cond_3
    :goto_3
    :sswitch_3
    return-void

    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_60

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_f
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v0, 0x0

    :goto_23
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_33

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    :sswitch_33
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_37
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_51

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_42
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_4f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_42

    :cond_4f
    if-eqz v0, :cond_3

    :cond_51
    invoke-static {v0, p1, p2, p3}, getSetRec(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_37

    :sswitch_59
    if-eqz p3, :cond_3

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_f
        0x8 -> :sswitch_59
        0x9 -> :sswitch_33
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 6

    const/4 v1, 0x1

    if-ne p0, p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    move-object v0, p1

    :goto_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    if-ne v0, p0, :cond_e

    move v0, v1

    goto :goto_4

    :cond_e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_6

    :cond_1c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_6
.end method

.method public static outputDOM(Lorg/w3c/dom/Node;Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, outputDOM(Lorg/w3c/dom/Node;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static outputDOM(Lorg/w3c/dom/Node;Ljava/io/OutputStream;Z)V
    .registers 4

    if-eqz p2, :cond_b

    :try_start_2
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_b
    const-string/jumbo v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_24
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_2 .. :try_end_19} :catch_1a
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_2 .. :try_end_19} :catch_1f

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->printStackTrace()V

    goto :goto_19

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->printStackTrace()V

    goto :goto_19

    :catch_24
    move-exception v0

    goto :goto_19
.end method

.method public static outputDOMc14nWithComments(Lorg/w3c/dom/Node;Ljava/io/OutputStream;)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_13
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e

    :catch_11
    move-exception v0

    goto :goto_e

    :catch_13
    move-exception v0

    goto :goto_e
.end method

.method public static selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 7

    move v1, p2

    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_27

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez v1, :cond_20

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_1f
    return-object v0

    :cond_20
    add-int/lit8 v1, v1, -0x1

    :cond_22
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    :cond_27
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static selectDsNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Text;
    .registers 6

    invoke-static {p0, p1, p2}, selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    :cond_1a
    check-cast v0, Lorg/w3c/dom/Text;

    goto :goto_7
.end method

.method public static selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    invoke-static {p0, v0, p1}, selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 7

    move v1, p3

    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_24

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-nez v1, :cond_1d

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v1, v1, -0x1

    :cond_1f
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    :cond_24
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static selectNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Text;
    .registers 7

    invoke-static {p0, p1, p2, p3}, selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    :cond_1a
    check-cast v0, Lorg/w3c/dom/Text;

    goto :goto_7
.end method

.method public static selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .registers 11

    const/4 v6, 0x0

    const/16 v5, 0x14

    new-array v4, v5, [Lorg/w3c/dom/Element;

    move v3, v6

    move-object v1, p0

    :goto_7
    if-eqz v1, :cond_38

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    add-int/lit8 v2, v3, 0x1

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    aput-object v0, v4, v3

    if-gt v5, v2, :cond_3e

    shl-int/lit8 v3, v5, 0x2

    new-array v0, v3, [Lorg/w3c/dom/Element;

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_30
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v4, v2

    move v5, v3

    move v3, v0

    goto :goto_7

    :cond_38
    new-array v0, v3, [Lorg/w3c/dom/Element;

    invoke-static {v4, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_3e
    move v0, v2

    move v3, v5

    move-object v2, v4

    goto :goto_30

    :cond_42
    move v0, v3

    move-object v2, v4

    move v3, v5

    goto :goto_30
.end method

.method public static selectXencNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 7

    move v1, p2

    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_27

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    if-nez v1, :cond_20

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_1f
    return-object v0

    :cond_20
    add-int/lit8 v1, v1, -0x1

    :cond_22
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    :cond_27
    const/4 v0, 0x0

    goto :goto_1f
.end method
