.class public Lcom/sun/org/apache/xml/internal/security/signature/SignedInfo;
.super Lcom/sun/org/apache/xml/internal/security/signature/Manifest;


# instance fields
.field private _c14nizedBytes:[B

.field private _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-direct {p0, p1, v0, v1}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v2, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    iput-object v2, p0, _c14nizedBytes:[B

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string v1, "CanonicalizationMethod"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Algorithm"

    invoke-interface {v0, v2, v1, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    if-lez p3, :cond_3b

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;I)V

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    :goto_2a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void

    :cond_3b
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    goto :goto_2a
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v1, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    iput-object v1, p0, _c14nizedBytes:[B

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0, p3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-direct {v0, p2, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    iget-object v1, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    iput-object v0, p0, _c14nizedBytes:[B

    invoke-virtual {p0}, getCanonicalizationMethodURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string/jumbo v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string/jumbo v1, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string/jumbo v1, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    :try_start_30
    invoke-virtual {p0}, getCanonicalizationMethodURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    iput-object v0, p0, _c14nizedBytes:[B

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, _c14nizedBytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;
    :try_end_71
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_30 .. :try_end_71} :catch_81
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_71} :catch_8b
    .catch Lorg/xml/sax/SAXException; {:try_start_30 .. :try_end_71} :catch_95

    :cond_71
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {p0}, getSignatureMethodElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    return-void

    :catch_81
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_8b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_95
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public createSecretKey([B)Ljavax/crypto/SecretKey;
    .registers 4

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getJCEAlgorithmString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "SignedInfo"

    return-object v0
.end method

.method public getCanonicalizationMethodURI()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "CanonicalizationMethod"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_10
    return-object v0

    :cond_11
    const-string v2, "Algorithm"

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public getCanonicalizedOctetStream()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, _c14nizedBytes:[B

    if-nez v0, :cond_15

    invoke-virtual {p0}, getCanonicalizationMethodURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    iput-object v0, p0, _c14nizedBytes:[B

    :cond_15
    iget-object v0, p0, _c14nizedBytes:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, _c14nizedBytes:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getInclusiveNamespaces()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "CanonicalizationMethod"

    invoke-static {v1, v2, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string v2, "Algorithm"

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_29
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string v3, "InclusiveNamespaces"

    invoke-static {v1, v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_10

    :try_start_38
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;

    const-string/jumbo v3, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-direct {v2, v1, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->getInclusiveNamespaces()Ljava/lang/String;
    :try_end_43
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_38 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_10

    :catch_45
    move-exception v1

    goto :goto_10
.end method

.method public getSignatureMethodElement()Lorg/w3c/dom/Element;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "SignatureMethod"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureMethodURI()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, getSignatureMethodElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "Algorithm"

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public signInOctectStream(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, _c14nizedBytes:[B

    if-nez v0, :cond_21

    invoke-virtual {p0}, getCanonicalizationMethodURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->setWriter(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, getInclusiveNamespaces()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    :goto_1a
    return-void

    :cond_1b
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B

    goto :goto_1a

    :cond_21
    :try_start_21
    iget-object v0, p0, _c14nizedBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_1a

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verify()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences(Z)Z

    move-result v0

    return v0
.end method

.method public verify(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences(Z)Z

    move-result v0

    return v0
.end method
