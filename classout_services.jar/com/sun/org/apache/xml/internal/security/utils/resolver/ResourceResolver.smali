.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;
.super Ljava/lang/Object;


# static fields
.field static _alreadyInitialized:Z

.field static _resolverVector:Ljava/util/List;

.field static class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _individualResolverVector:Ljava/util/List;

.field protected _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

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
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$ResourceResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _individualResolverVector:Ljava/util/List;

    iput-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    iput-object p1, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    return-void
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

    iput-object v0, p0, _individualResolverVector:Ljava/util/List;

    iput-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    iput-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    return-void
.end method

.method private canResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method public static final getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, _resolverVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_8
    if-ge v1, v3, :cond_4b

    sget-object v0, _resolverVector:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3e

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "check resolvability by class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3e
    if-eqz v0, :cond_47

    invoke-direct {v0, p0, p1}, canResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    return-object v0

    :cond_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_4b
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_62

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_54
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;

    const-string/jumbo v2, "utils.resolver.noClass"

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v0

    :cond_62
    const-string/jumbo v0, "null"

    goto :goto_54
.end method

.method public static final getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;Ljava/util/List;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "I was asked to create a ResourceResolver and got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_28
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " extra resolvers to my existing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, _resolverVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " system-wide resolvers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_58
    if-eqz p2, :cond_a5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a5

    const/4 v0, 0x0

    move v1, v0

    :goto_62
    if-ge v1, v2, :cond_a5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    if-eqz v0, :cond_a1

    iget-object v3, v0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_9a

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "check resolvability by class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_9a
    invoke-direct {v0, p0, p1}, canResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    :goto_a0
    return-object v0

    :cond_a1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    :cond_a5
    invoke-static {p0, p1}, getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v0

    goto :goto_a0
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

.method public static register(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    invoke-direct {v0, p0}, <init>(Ljava/lang/String;)V

    sget-object v1, _resolverVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_a} :catch_2d

    :goto_a
    return-void

    :catch_b
    move-exception v0

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error loading resolver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " disabling it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_a

    :catch_2d
    move-exception v0

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error loading resolver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " disabling it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static registerAtStart(Ljava/lang/String;)V
    .registers 3

    sget-object v0, _resolverVector:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static resolveStatic(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    invoke-static {p0, p1}, getInstance(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addProperties(Ljava/util/Map;)V
    .registers 3

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineAddProperies(Ljava/util/Map;)V

    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyKeys()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineGetPropertyKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->engineSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public understandsProperty(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, _resolverSpi:Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;->understandsProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
