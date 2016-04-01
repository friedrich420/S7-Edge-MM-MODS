.class public Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;


# static fields
.field static _algorithmHash:Ljava/util/HashMap;

.field static _alreadyInitialized:Z

.field static class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithm"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, _alreadyInitialized:Z

    const/4 v0, 0x0

    sput-object v0, _algorithmHash:Ljava/util/HashMap;

    return-void

    :cond_1d
    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    :try_start_9
    invoke-static {p2}, getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Create URI \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" class \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_41
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_49} :catch_4a
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_49} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_49} :catch_70

    return-void

    :catch_4a
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_5d
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_70
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, <init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineSetHMACOutputLength(I)V

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->engineAddContextToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {p0}, getURI()Ljava/lang/String;

    move-result-object v1

    :try_start_d
    invoke-static {v1}, getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Create URI \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    :cond_45
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iput-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetContextFromElement(Lorg/w3c/dom/Element;)V
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_54} :catch_55
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_54} :catch_68
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_54} :catch_7b

    return-void

    :catch_55
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_68
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_7b
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

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

    sget-object v0, _algorithmHash:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, _algorithmHash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_5
.end method

.method public static providerInit()V
    .registers 3

    sget-object v0, log:Ljava/util/logging/Logger;

    if-nez v0, :cond_1a

    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    if-nez v0, :cond_3e

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithm"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    :cond_1a
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Init() called"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2d
    sget-boolean v0, _alreadyInitialized:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, _algorithmHash:Ljava/util/HashMap;

    const/4 v0, 0x1

    sput-boolean v0, _alreadyInitialized:Z

    :cond_3d
    return-void

    :cond_3e
    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    goto :goto_10
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Try to register "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_31
    invoke-static {p0}, getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_51

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object v0, v1, v5

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;

    const-string v2, "algorithm.alreadyRegistered"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_51
    :try_start_51
    sget-object v0, _algorithmHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_5a} :catch_6e

    return-void

    :catch_5b
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_6e
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "SignatureMethod"

    return-object v0
.end method

.method public getBaseNamespace()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    return-object v0
.end method

.method public getJCEAlgorithmString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetJCEAlgorithmString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEProviderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetJCEProviderName()Ljava/lang/String;

    move-result-object v0

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

.method public initSign(Ljava/security/Key;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitSign(Ljava/security/Key;)V

    return-void
.end method

.method public initSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public initSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public initVerify(Ljava/security/Key;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitVerify(Ljava/security/Key;)V

    return-void
.end method

.method public setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public sign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineUpdate(B)V

    return-void
.end method

.method public update([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineUpdate([B)V

    return-void
.end method

.method public update([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineUpdate([BII)V

    return-void
.end method

.method public verify([B)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method
