.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath2Filter;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/2002/06/xmldsig-filter2"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2002/06/xmldsig-filter2"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->setDoc(Lorg/w3c/dom/Document;)V

    :try_start_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->getCachedXPathAPI()Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;-><init>(Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v6, "http://www.w3.org/2002/06/xmldsig-filter2"

    const-string v7, "XPath"

    invoke-static {v0, v6, v7}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    array-length v6, v0

    if-nez v6, :cond_5d

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://www.w3.org/2002/06/xmldsig-filter2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "XPath"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_53
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_53} :catch_53
    .catch Lorg/w3c/dom/DOMException; {:try_start_e .. :try_end_53} :catch_bb
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_e .. :try_end_53} :catch_cf
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_e .. :try_end_53} :catch_ea
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_e .. :try_end_53} :catch_f4
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_53} :catch_fe
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_53} :catch_108
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_53} :catch_112

    :catch_53
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_6b
    if-ge v1, v6, :cond_d9

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    const-string/jumbo v8, "http://www.w3.org/2002/06/xmldsig-filter2"

    const-string v9, "XPath"

    invoke-static {v7, v8, v9, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->newInstance(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->getXPathFilterTextNode()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->getXPathFilterTextNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-virtual {v5, v0, v8, v9, v10}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->isIntersect()Z

    move-result v9

    if-eqz v9, :cond_b1

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a5
    :goto_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_a8
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_6b

    :cond_b1
    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->isSubtract()Z

    move-result v9

    if-eqz v9, :cond_c5

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5d .. :try_end_ba} :catch_53
    .catch Lorg/w3c/dom/DOMException; {:try_start_5d .. :try_end_ba} :catch_bb
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_5d .. :try_end_ba} :catch_cf
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_5d .. :try_end_ba} :catch_ea
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_5d .. :try_end_ba} :catch_f4
    .catch Lorg/xml/sax/SAXException; {:try_start_5d .. :try_end_ba} :catch_fe
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_ba} :catch_108
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5d .. :try_end_ba} :catch_112

    goto :goto_a5

    :catch_bb
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_c5
    :try_start_c5
    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;->isUnion()Z

    move-result v7

    if-eqz v7, :cond_a5

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c5 .. :try_end_ce} :catch_53
    .catch Lorg/w3c/dom/DOMException; {:try_start_c5 .. :try_end_ce} :catch_bb
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_c5 .. :try_end_ce} :catch_cf
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_c5 .. :try_end_ce} :catch_ea
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_c5 .. :try_end_ce} :catch_f4
    .catch Lorg/xml/sax/SAXException; {:try_start_c5 .. :try_end_ce} :catch_fe
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ce} :catch_108
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c5 .. :try_end_ce} :catch_112

    goto :goto_a5

    :catch_cf
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_d9
    const/4 v0, 0x1

    :try_start_da
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNeedsToBeExpanded(Z)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;

    invoke-direct {v0, v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNodeSet(Z)V
    :try_end_e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_da .. :try_end_e9} :catch_53
    .catch Lorg/w3c/dom/DOMException; {:try_start_da .. :try_end_e9} :catch_bb
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_da .. :try_end_e9} :catch_cf
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_da .. :try_end_e9} :catch_ea
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_da .. :try_end_e9} :catch_f4
    .catch Lorg/xml/sax/SAXException; {:try_start_da .. :try_end_e9} :catch_fe
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_e9} :catch_108
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_da .. :try_end_e9} :catch_112

    return-object p1

    :catch_ea
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_f4
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_fe
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_108
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_112
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
