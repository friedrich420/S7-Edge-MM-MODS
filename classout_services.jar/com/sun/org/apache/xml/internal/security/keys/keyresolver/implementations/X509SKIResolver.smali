.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/X509SKIResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _x509childNodes:[Lorg/w3c/dom/Element;

.field private _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.X509SKIResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$implementations$X509SKIResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    iput-object v0, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    iput-object v0, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

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
    .registers 9

    const/4 v0, 0x0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Can I resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2f
    const-string v1, "X509Data"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I can\'t"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    const-string v1, "X509SKI"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    if-eqz v1, :cond_71

    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-lez v1, :cond_71

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Yes Sir, I can"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6f
    const/4 v0, 0x1

    goto :goto_4a

    :cond_71
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I can\'t"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    if-nez v1, :cond_11

    invoke-virtual {p0, p1, p2, p3}, engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    if-nez p3, :cond_40

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "X509SKI"

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string v2, "KeyResolver.needStorageResolver"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    throw v1
    :try_end_36
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_2 .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_40
    :try_start_40
    iget-object v1, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    array-length v1, v1

    new-array v1, v1, [Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iput-object v1, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    move v1, v3

    :goto_48
    iget-object v2, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-ge v1, v2, :cond_5d

    iget-object v2, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iget-object v5, p0, _x509childNodes:[Lorg/w3c/dom/Element;

    aget-object v5, v5, v1

    invoke-direct {v4, v5, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_5d
    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;->next()Ljava/security/cert/X509Certificate;

    move-result-object v1

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    move v2, v3

    :goto_71
    iget-object v5, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    array-length v5, v5

    if-ge v2, v5, :cond_5d

    iget-object v5, p0, _x509childObject:[Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Return PublicKey from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_ac
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_40 .. :try_end_ac} :catch_36

    :cond_ac
    move-object v0, v1

    goto/16 :goto_10

    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_71
.end method
