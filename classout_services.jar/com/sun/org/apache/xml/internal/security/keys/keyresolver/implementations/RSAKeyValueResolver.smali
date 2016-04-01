.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/RSAKeyValueResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _rsaKeyElement:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RSAKeyValueResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$RSAKeyValueResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

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
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Can I resolve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2a
    if-nez p1, :cond_2d

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    const-string v2, "KeyValue"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "RSAKeyValue"

    invoke-static {p1, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, "RSAKeyValue"

    invoke-static {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_2c

    move v0, v1

    goto :goto_2c

    :cond_4d
    if-eqz v3, :cond_2c

    iput-object p1, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

    move v0, v1

    goto :goto_2c
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

    if-nez v1, :cond_10

    invoke-virtual {p0, p1, p2, p3}, engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;

    iget-object v2, p0, _rsaKeyElement:Lorg/w3c/dom/Element;

    invoke-direct {v1, v2, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1a
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_10 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_f

    :catch_1c
    move-exception v1

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "XMLSecurityException"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method
