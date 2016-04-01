.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXSLT;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field static final XSLTSTYLESHEET:Ljava/lang/String; = "stylesheet"

.field static final XSLTSpecNS:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"

.field static final defaultXSLTSpecNSprefix:Ljava/lang/String; = "xslt"

.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xslt-19991116"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/TR/1999/REC-xslt-19991116"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v2, "stylesheet"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_42

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "xslt:stylesheet"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Transform"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_30
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_30} :catch_30
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_30} :catch_aa
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_30} :catch_bc

    :catch_30
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v3, "generic.EmptyMessage"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :cond_42
    :try_start_42
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v5, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v0

    if-nez p2, :cond_95

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    :goto_94
    return-object v0

    :cond_95
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_a8
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_42 .. :try_end_a8} :catch_30
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_42 .. :try_end_a8} :catch_aa
    .catch Ljavax/xml/transform/TransformerException; {:try_start_42 .. :try_end_a8} :catch_bc

    move-object v0, v1

    goto :goto_94

    :catch_aa
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v3, "generic.EmptyMessage"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_bc
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v3, "generic.EmptyMessage"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method
