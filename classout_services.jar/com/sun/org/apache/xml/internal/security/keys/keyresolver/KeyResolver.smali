.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;
.super Ljava/lang/Object;


# static fields
.field static _alreadyInitialized:Z

.field static _resolverVector:Ljava/util/List;

.field static class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

.field protected _storage:Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, _alreadyInitialized:Z

    const/4 v0, 0x0

    sput-object v0, _resolverVector:Ljava/util/List;

    return-void

    :cond_1d
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$keyresolver$KeyResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    iput-object v0, p0, _storage:Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    iput-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

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

.method public static final getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x1

    move v1, v2

    :goto_3
    sget-object v0, _resolverVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_65

    sget-object v0, _resolverVector:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    if-nez v0, :cond_32

    new-array v1, v7, [Ljava/lang/Object;

    if-eqz p0, :cond_2e

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_2e

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    :goto_23
    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "utils.resolver.noClass"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2e
    const-string/jumbo v0, "null"

    goto :goto_23

    :cond_32
    sget-object v3, log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "check resolvability by class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_5a
    invoke-virtual {v0, p0, p1, p2}, canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v3

    if-eqz v3, :cond_61

    return-object v0

    :cond_61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_65
    new-array v1, v7, [Ljava/lang/Object;

    if-eqz p0, :cond_7e

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v7, :cond_7e

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    :goto_73
    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v2, "utils.resolver.noClass"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7e
    const-string/jumbo v0, "null"

    goto :goto_73
.end method

.method public static init()V
    .registers 2

    sget-boolean v0, _alreadyInitialized:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, _resolverVector:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, _alreadyInitialized:Z

    :cond_10
    return-void
.end method

.method public static item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    sget-object v0, _resolverVector:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    if-nez v0, :cond_13

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;

    const-string/jumbo v1, "utils.resolver.noClass"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-object v0
.end method

.method public static length()I
    .registers 1

    sget-object v0, _resolverVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static register(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    sget-object v0, _resolverVector:Ljava/util/List;

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    invoke-direct {v1, p0}, <init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static registerAtStart(Ljava/lang/String;)V
    .registers 3

    sget-object v0, _resolverVector:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static resolveStatic(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .registers 5

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyKeys()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineGetPropertyKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public resolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public resolverClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public understandsProperty(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->understandsProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
