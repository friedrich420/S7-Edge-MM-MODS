.class public Lcom/sun/org/apache/xml/internal/security/signature/Manifest;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _perManifestResolvers:Ljava/util/List;

.field _references:Ljava/util/List;

.field _referencesEl:[Lorg/w3c/dom/Element;

.field _resolverProperties:Ljava/util/HashMap;

.field _signedContents:Ljava/util/List;

.field private verificationResults:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.signature.Manifest"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    const/4 v0, 0x0

    iput-object v0, p0, verificationResults:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _signedContents:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, _resolverProperties:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _perManifestResolvers:Ljava/util/List;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _references:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v3, p0, verificationResults:[Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, _signedContents:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, _resolverProperties:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, _perManifestResolvers:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "Reference"

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    iget-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-nez v1, :cond_4b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Reference"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "Manifest"

    aput-object v2, v1, v0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x4

    const-string/jumbo v3, "xml.WrongContent"

    invoke-static {v3, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, _references:Ljava/util/List;

    :goto_52
    if-ge v0, v1, :cond_5c

    iget-object v2, p0, _references:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_5c
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

.method private setVerificationResult(IZ)V
    .registers 4

    iget-object v0, p0, verificationResults:[Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, getLength()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, verificationResults:[Z

    :cond_c
    iget-object v0, p0, verificationResults:[Z

    aput-boolean p2, v0, p1

    return-void
.end method


# virtual methods
.method public addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_2d

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V

    if-eqz p5, :cond_15

    invoke-virtual {v0, p5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setId(Ljava/lang/String;)V

    :cond_15
    if-eqz p6, :cond_1a

    invoke-virtual {v0, p6}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setType(Ljava/lang/String;)V

    :cond_1a
    iget-object v1, p0, _references:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_2d
    return-void
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, _perManifestResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .registers 4

    if-eqz p1, :cond_c

    iget-object v0, p0, _perManifestResolvers:Ljava/util/List;

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;-><init>(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method public generateDigestValues()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {p0}, getLength()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, _references:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->generateDigestValue()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Manifest"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Id"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, _references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReferencedContentAfterTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsAfterTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getReferencedContentBeforeTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getResolverProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, _resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSignedContentItem(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, getReferencedContentAfterTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_7} :catch_13
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_7} :catch_1d
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_7} :catch_27

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_13
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_27
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSignedContentLength()I
    .registers 2

    invoke-virtual {p0}, getLength()I

    move-result v0

    return v0
.end method

.method public getVerificationResult(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    if-ltz p1, :cond_a

    invoke-virtual {p0}, getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_34

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "signature.Verification.IndexOutOfBounds"

    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_34
    iget-object v0, p0, verificationResults:[Z

    if-nez v0, :cond_3b

    :try_start_38
    invoke-virtual {p0}, verifyReferences()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_40

    :cond_3b
    iget-object v0, p0, verificationResults:[Z

    aget-boolean v0, v0, p1

    return v0

    :catch_40
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_d

    iget-object v0, p0, _references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, _references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V

    iget-object v1, p0, _references:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v0, p0, _references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    goto :goto_c
.end method

.method public setId(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Id"

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public setResolverProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, _resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public verifyReferences()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, verifyReferences(Z)Z

    move-result v0

    return v0
.end method

.method public verifyReferences(Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "Reference"

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    :cond_15
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "verify "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, p0, _referencesEl:[Lorg/w3c/dom/Element;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, " References"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_43
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "I am "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p1, :cond_7f

    const-string v1, ""

    :goto_60
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, " requested to follow nested Manifests"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_71
    iget-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-nez v1, :cond_83

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    const-string/jumbo v1, "not"

    goto :goto_60

    :cond_83
    iget-object v1, p0, _referencesEl:[Lorg/w3c/dom/Element;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, verificationResults:[Z

    move v3, v4

    move v1, v5

    :goto_8c
    iget-object v2, p0, _referencesEl:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-ge v3, v2, :cond_1ab

    new-instance v8, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v2, p0, _referencesEl:[Lorg/w3c/dom/Element;

    aget-object v2, v2, v3

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v8, v2, v6, p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V

    iget-object v2, p0, _references:Ljava/util/List;

    invoke-interface {v2, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :try_start_a1
    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->verify()Z

    move-result v2

    invoke-direct {p0, v3, v2}, setVerificationResult(IZ)V

    if-nez v2, :cond_1b3

    move v6, v4

    :goto_ab
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_d3

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "The Reference has Type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_d3
    if-eqz v6, :cond_1b1

    if-eqz p1, :cond_1b1

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->typeIsReferenceToManifest()Z

    move-result v1

    if-eqz v1, :cond_1b1

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_f0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "We have to follow a nested Manifest"

    invoke-virtual {v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_f0
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_a1 .. :try_end_f0} :catch_151

    :cond_f0
    const/4 v1, 0x0

    :try_start_f1
    invoke-virtual {v8, v1}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_fd
    :goto_fd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1af

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_fd

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v11, "Manifest"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_12d} :catch_147
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f1 .. :try_end_12d} :catch_197
    .catch Lorg/xml/sax/SAXException; {:try_start_f1 .. :try_end_12d} :catch_1a1
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_f1 .. :try_end_12d} :catch_151

    move-result v2

    if-eqz v2, :cond_fd

    :try_start_130
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v1, v11}, <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_13b
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_130 .. :try_end_13b} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_13b} :catch_147
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_130 .. :try_end_13b} :catch_197
    .catch Lorg/xml/sax/SAXException; {:try_start_130 .. :try_end_13b} :catch_1a1
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_130 .. :try_end_13b} :catch_151

    move-object v1, v2

    :goto_13c
    if-nez v1, :cond_163

    :try_start_13e
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v8}, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V

    throw v1
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_147} :catch_147
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13e .. :try_end_147} :catch_197
    .catch Lorg/xml/sax/SAXException; {:try_start_13e .. :try_end_147} :catch_1a1
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_13e .. :try_end_147} :catch_151

    :catch_147
    move-exception v1

    :try_start_148
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_151
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_148 .. :try_end_151} :catch_151

    :catch_151
    move-exception v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getURI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;

    const-string/jumbo v4, "signature.Verification.Reference.NoInput"

    invoke-direct {v3, v4, v2, v1, v8}, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V

    throw v3

    :cond_163
    :try_start_163
    iget-object v2, p0, _perManifestResolvers:Ljava/util/List;

    iput-object v2, v1, _perManifestResolvers:Ljava/util/List;

    iget-object v2, p0, _resolverProperties:Ljava/util/HashMap;

    iput-object v2, v1, _resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, verifyReferences(Z)Z

    move-result v1

    if-nez v1, :cond_182

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "The nested Manifest was invalid (bad)"

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move v1, v4

    :goto_17b
    move v2, v1

    :goto_17c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto/16 :goto_8c

    :cond_182
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_195

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "The nested Manifest was valid (good)"

    invoke-virtual {v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_195} :catch_147
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_163 .. :try_end_195} :catch_197
    .catch Lorg/xml/sax/SAXException; {:try_start_163 .. :try_end_195} :catch_1a1
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_163 .. :try_end_195} :catch_151

    :cond_195
    move v1, v6

    goto :goto_17b

    :catch_197
    move-exception v1

    :try_start_198
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1a1
    move-exception v1

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1ab
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_198 .. :try_end_1ab} :catch_151

    :cond_1ab
    return v1

    :catch_1ac
    move-exception v1

    goto/16 :goto_fd

    :cond_1af
    move-object v1, v7

    goto :goto_13c

    :cond_1b1
    move v2, v6

    goto :goto_17c

    :cond_1b3
    move v6, v1

    goto/16 :goto_ab
.end method
