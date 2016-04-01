.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformC14NExclusiveWithComments;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    const-string/jumbo v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string v3, "InclusiveNamespaces"

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_32

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/10/xml-exc-c14n#"

    const-string v2, "InclusiveNamespaces"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/InclusiveNamespaces;->getInclusiveNamespaces()Ljava/lang/String;

    move-result-object v0

    :cond_32
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315ExclWithComments;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315ExclWithComments;-><init>()V

    if-eqz p2, :cond_3c

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->setWriter(Ljava/io/OutputStream;)V

    :cond_3c
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNeedsToBeExpanded(Z)V

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_49
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_49} :catch_4a

    return-object v1

    :catch_4a
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
