.class public Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field public static final TRANSFORM_BASE64_DECODE:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#base64"

.field public static final TRANSFORM_C14N_EXCL_OMIT_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#"

.field public static final TRANSFORM_C14N_EXCL_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

.field public static final TRANSFORM_C14N_OMIT_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final TRANSFORM_C14N_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

.field public static final TRANSFORM_ENVELOPED_SIGNATURE:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#enveloped-signature"

.field public static final TRANSFORM_XPATH:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xpath-19991116"

.field public static final TRANSFORM_XPATH2FILTER:Ljava/lang/String; = "http://www.w3.org/2002/06/xmldsig-filter2"

.field public static final TRANSFORM_XPATH2FILTER04:Ljava/lang/String; = "http://www.w3.org/2002/04/xmldsig-filter2"

.field public static final TRANSFORM_XPATHFILTERCHGP:Ljava/lang/String; = "http://www.nue.et-inf.uni-siegen.de/~geuer-pollmann/#xpathFilter"

.field public static final TRANSFORM_XPOINTER:Ljava/lang/String; = "http://www.w3.org/TR/2001/WD-xptr-20010108"

.field public static final TRANSFORM_XSLT:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xslt-19991116"

.field static class$com$sun$org$apache$xml$internal$security$transforms$Transforms:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field transforms:[Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$Transforms:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.Transforms"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$Transforms:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$Transforms:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {p0}, getLength()I

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Transform"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Transforms"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1f
    return-void
.end method

.method private addTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V
    .registers 6

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Transforms.addTransform("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

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


# virtual methods
.method public addTransform(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Transforms.addTransform("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v0

    invoke-direct {p0, v0}, addTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V
    :try_end_33
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException; {:try_start_0 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public addTransform(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Transforms.addTransform("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v0

    invoke-direct {p0, v0}, addTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V
    :try_end_33
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException; {:try_start_0 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public addTransform(Ljava/lang/String;Lorg/w3c/dom/NodeList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v0

    invoke-direct {p0, v0}, addTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V
    :try_end_9
    .catch Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Transforms"

    return-object v0
.end method

.method public getLength()I
    .registers 3

    iget-object v0, p0, transforms:[Lorg/w3c/dom/Element;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "Transform"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, transforms:[Lorg/w3c/dom/Element;

    :cond_12
    iget-object v0, p0, transforms:[Lorg/w3c/dom/Element;

    array-length v0, v0

    return v0
.end method

.method public item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, transforms:[Lorg/w3c/dom/Element;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "Transform"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, transforms:[Lorg/w3c/dom/Element;

    :cond_12
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    iget-object v1, p0, transforms:[Lorg/w3c/dom/Element;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_1d
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public performTransforms(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, getLength()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_9
    if-ge v1, v2, :cond_50

    invoke-virtual {p0, v1}, item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v3

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_47

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Preform the ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")th "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " transform"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->performTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object p1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p1

    goto :goto_9

    :cond_50
    if-ltz v2, :cond_5a

    invoke-virtual {p0, v2}, item(I)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->performTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_59} :catch_5b
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_59} :catch_65
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_59} :catch_6f

    move-result-object v0

    :cond_5a
    return-object v0

    :catch_5b
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_65
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_6f
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
