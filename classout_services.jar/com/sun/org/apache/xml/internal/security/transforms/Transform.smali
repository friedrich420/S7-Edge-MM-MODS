.class public final Lcom/sun/org/apache/xml/internal/security/transforms/Transform;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field static _alreadyInitialized:Z

.field static _transformHash:Ljava/util/HashMap;

.field static class$com$sun$org$apache$xml$internal$security$transforms$Transform:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$Transform:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.Transform"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$Transform:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, _alreadyInitialized:Z

    const/4 v0, 0x0

    sput-object v0, _transformHash:Ljava/util/HashMap;

    return-void

    :cond_1d
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$Transform:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    :try_start_8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v2, 0x0

    const-string v3, "Algorithm"

    invoke-interface {v0, v2, v3, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;

    const-string/jumbo v3, "signature.Transform.UnknownTransform"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_25} :catch_25
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_25} :catch_b2

    :catch_25
    move-exception v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;

    const-string/jumbo v3, "signature.Transform.UnknownTransform"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :cond_33
    :try_start_33
    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_67

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Create URI \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" class \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_67
    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_8b

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "The NodeList is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_8b
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    iput-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    iget-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->setTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V

    if-eqz p3, :cond_c0

    move v0, v1

    :goto_9b
    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_c0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {p3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_af
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_af} :catch_25
    .catch Ljava/lang/InstantiationException; {:try_start_33 .. :try_end_af} :catch_b2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    :catch_b2
    move-exception v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;

    const-string/jumbo v3, "signature.Transform.UnknownTransform"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :cond_c0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v1, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    const-string v0, "Algorithm"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Algorithm"

    aput-object v1, v0, v2

    const-string v1, "Transform"

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2a
    :try_start_2a
    sget-object v0, _transformHash:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    iput-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    iget-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->setTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_3f} :catch_40
    .catch Ljava/lang/InstantiationException; {:try_start_2a .. :try_end_3f} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_3f} :catch_5c

    return-void

    :catch_40
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;

    const-string/jumbo v2, "signature.Transform.UnknownTransform"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_4e
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;

    const-string/jumbo v2, "signature.Transform.UnknownTransform"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_5c
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;

    const-string/jumbo v2, "signature.Transform.UnknownTransform"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

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

.method private static getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    sget-object v0, _transformHash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static final getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lorg/w3c/dom/NodeList;

    invoke-static {p0, p1, v0}, getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;-><init>()V

    const-string v1, "\n"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    const-string v1, "\n"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    invoke-static {p0, p1, v0}, getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)Lcom/sun/org/apache/xml/internal/security/transforms/Transform;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-direct {v0, p0, p1, p2}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public static init()V
    .registers 2

    sget-boolean v0, _alreadyInitialized:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, _transformHash:Ljava/util/HashMap;

    const/4 v0, 0x1

    sput-boolean v0, _alreadyInitialized:Z

    :cond_10
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;
        }
    .end annotation

    invoke-static {p0}, getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;

    const-string v2, "algorithm.alreadyRegistered"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_17
    :try_start_17
    sget-object v0, _transformHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20
.end method


# virtual methods
.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Transform"

    return-object v0
.end method

.method public final getURI()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Algorithm"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_3
    iget-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_8} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_8} :catch_20

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "ParserConfigurationException"

    aput-object v2, v1, v4

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "signature.Transform.ErrorDuringTransform"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_20
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "SAXException"

    aput-object v2, v1, v4

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "signature.Transform.ErrorDuringTransform"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method

.method public performTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_3
    iget-object v0, p0, transformSpi:Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_8} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_8} :catch_20

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "ParserConfigurationException"

    aput-object v2, v1, v4

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "signature.Transform.ErrorDuringTransform"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_20
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "SAXException"

    aput-object v2, v1, v4

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "signature.Transform.ErrorDuringTransform"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method
