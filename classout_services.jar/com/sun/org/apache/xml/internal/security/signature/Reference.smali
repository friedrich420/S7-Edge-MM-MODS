.class public Lcom/sun/org/apache/xml/internal/security/signature/Reference;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field public static CacheSignedNodes:Z = false

.field public static final MANIFEST_URI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#Manifest"

.field public static final OBJECT_URI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#Object"

.field static class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

.field _transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, CacheSignedNodes:Z

    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "com.sun.org.apache.xml.internal.security.signature.Reference"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_1a
    sget-object v0, class$com$sun$org$apache$xml$internal$security$signature$Reference:Ljava/lang/Class;

    goto :goto_f
.end method

.method protected constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    const/4 v0, 0x0

    iput-object v0, p0, _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    iput-object p4, p0, _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    invoke-virtual {p0, p3}, setURI(Ljava/lang/String;)V

    if-eqz p5, :cond_22

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p5}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_22
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p6}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    const-string v1, "DigestValue"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iput-object p3, p0, _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    return-void
.end method

.method private calculateDigest()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, getMessageDigestAlgorithm()Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->reset()V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;-><init>(Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->updateOutputStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->getDigestValue()[B
    :try_end_1e
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_1e} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_2a

    move-result-object v0

    return-object v0

    :catch_20
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2a
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
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

.method private getContentsAfterTransformation(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object p1

    iput-object p1, p0, _transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_c
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_c} :catch_17
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_c} :catch_21
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_0 .. :try_end_c} :catch_2b
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_c} :catch_35

    :cond_c
    return-object p1

    :catch_d
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_21
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_35
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private setDigestValueElement([B)V
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "DigestValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_1f

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_15

    :cond_1f
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2c
    return-void
.end method


# virtual methods
.method protected dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-direct {p0, v0, p1}, getContentsAfterTransformation(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    sget-boolean v1, CacheSignedNodes:Z

    if-nez v1, :cond_e

    iput-object v0, p0, _transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_e
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public generateDigestValue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_b

    invoke-direct {p0}, calculateDigest()[B

    move-result-object v0

    invoke-direct {p0, v0}, setDigestValueElement([B)V

    :cond_b
    return-void
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Reference"

    return-object v0
.end method

.method public getContentsAfterTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p0}, getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getContentsAfterTransformation(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v2, 0x0

    const-string v3, "URI"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_31

    :goto_c
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    iget-object v3, p0, _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iget-object v3, v3, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;Ljava/util/List;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "signature.Verification.Reference.NoInput"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_27
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_1 .. :try_end_27} :catch_27
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_27} :catch_44

    :catch_27
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_31
    :try_start_31
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_36
    iget-object v0, p0, _manifest:Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->addProperties(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_42
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_31 .. :try_end_42} :catch_27
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_31 .. :try_end_42} :catch_44

    move-result-object v0

    return-object v0

    :catch_44
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getDigestValue()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "DigestValue"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DigestValue"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "http://www.w3.org/2000/09/xmldsig#"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "signature.Verification.NoSignatureElement"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_25
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Lorg/w3c/dom/Element;)[B

    move-result-object v0

    return-object v0
.end method

.method public getHTMLRepresentation()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, getNodesetBeforeFirstCanonicalization()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v5

    const/4 v2, 0x0

    if-eqz v5, :cond_8a

    move v3, v1

    :goto_12
    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_8a

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getURI()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    const-string/jumbo v7, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    :cond_32
    :goto_32
    if-eqz v1, :cond_63

    const-string/jumbo v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string v3, "InclusiveNamespaces"

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string v3, "InclusiveNamespaces"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->getInclusiveNamespaces()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->prefixStr2Set(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v0

    :cond_63
    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getHTMLRepresentation(Ljava/util/Set;)Ljava/lang/String;
    :try_end_66
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_1 .. :try_end_66} :catch_6c
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException; {:try_start_1 .. :try_end_66} :catch_76
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_66} :catch_80

    move-result-object v0

    return-object v0

    :cond_68
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :catch_6c
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_76
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_80
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_8a
    move-object v1, v2

    goto :goto_32
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

.method public getMessageDigestAlgorithm()Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "DigestMethod"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string v2, "Algorithm"

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    move-result-object v0

    goto :goto_10
.end method

.method public getNodesetBeforeFirstCanonicalization()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v1

    invoke-virtual {p0}, getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    move-result-object v4

    if-eqz v4, :cond_8d

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_d
    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3f

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;->item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getURI()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "http://www.w3.org/2001/10/xml-exc-c14n#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string/jumbo v6, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string/jumbo v6, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string/jumbo v6, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_3f
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    :goto_46
    return-object v0

    :cond_47
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->performTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4b} :catch_51
    .catch Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException; {:try_start_0 .. :try_end_4b} :catch_5b
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_4b} :catch_65
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_4b} :catch_6f
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException; {:try_start_0 .. :try_end_4b} :catch_79
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_4b} :catch_83

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_d

    :catch_51
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_65
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_6f
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_79
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_83
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_8d
    move-object v0, v1

    goto :goto_46
.end method

.method public getReferencedBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_1 .. :try_end_8} :catch_14

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_14
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "Transforms"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getTransformsInput()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    invoke-virtual {p0}, getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    :try_start_4
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_d
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_4 .. :try_end_d} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1f

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    return-object v1

    :catch_15
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getTransformsOutput()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 2

    iget-object v0, p0, _transformsOutput:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Type"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "URI"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method public setType(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Type"

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "URI"

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public typeIsReferenceToManifest()Z
    .registers 3

    invoke-virtual {p0}, getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#Manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public typeIsReferenceToObject()Z
    .registers 3

    invoke-virtual {p0}, getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/09/xmldsig#Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public verify()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, getDigestValue()[B

    move-result-object v0

    invoke-direct {p0}, calculateDigest()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->isEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Verification failed for URI \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return v0

    :cond_33
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Verification successful for URI \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_32
.end method
