.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformBase64Decode;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#base64"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#base64"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isElement()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_19
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0, v1}, traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    if-nez p2, :cond_33

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    :goto_32
    return-object v0

    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode([BLjava/io/OutputStream;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_32

    :cond_4b
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isOctetStream()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_57
    if-nez p2, :cond_70

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode([B)[B

    move-result-object v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_66
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_32

    :catch_67
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string v2, "Base64Decoding"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_70
    :try_start_70
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isByteArray()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-eqz v0, :cond_90

    :cond_7c
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode([BLjava/io/OutputStream;)V

    :goto_83
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_32

    :cond_90
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getOctetStreamReal()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9c
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_70 .. :try_end_9c} :catch_67

    goto :goto_83

    :cond_9d
    :try_start_9d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, v1}, traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_c6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9d .. :try_end_c6} :catch_c8
    .catch Lorg/xml/sax/SAXException; {:try_start_9d .. :try_end_c6} :catch_d1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_9d .. :try_end_c6} :catch_67

    goto/16 :goto_32

    :catch_c8
    move-exception v0

    :try_start_c9
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string v2, "c14n.Canonicalizer.Exception"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_d1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string v2, "SAX exception"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_da
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_c9 .. :try_end_da} :catch_67
.end method

.method traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V
    .registers 5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_24

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_d
    :pswitch_d
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_4

    :pswitch_12
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0, p2}, traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    goto :goto_d

    :pswitch_19
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_19
    .end packed-switch
.end method
