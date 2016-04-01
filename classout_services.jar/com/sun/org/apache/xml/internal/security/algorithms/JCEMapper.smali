.class public Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;
    }
.end annotation


# static fields
.field private static algorithmsMap:Ljava/util/Map;

.field static class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;

.field private static providerName:Ljava/lang/String;

.field private static uriToJCEName:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

    if-nez v0, :cond_28

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.JCEMapper"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, uriToJCEName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, algorithmsMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, providerName:Ljava/lang/String;

    return-void

    :cond_28
    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$JCEMapper:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static getAlgorithmClassFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Request for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_24
    sget-object v0, algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->algorithmClass:Ljava/lang/String;

    return-object v0
.end method

.method static getAlgorithmMapping(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;
    .registers 2

    sget-object v0, algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    return-object v0
.end method

.method public static getJCEKeyAlgorithmFromURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->requiredKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyLengthFromURI(Ljava/lang/String;)I
    .registers 2

    sget-object v0, algorithmsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->keyLength:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProviderId()Ljava/lang/String;
    .registers 1

    sget-object v0, providerName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Lorg/w3c/dom/Element;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Algorithms"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, loadAlgorithms(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static loadAlgorithms(Lorg/w3c/dom/Element;)V
    .registers 7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v2, "Algorithm"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_31

    aget-object v2, v1, v0

    const-string v3, "URI"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "JCEName"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, uriToJCEName:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, algorithmsMap:Ljava/util/Map;

    new-instance v5, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;

    invoke-direct {v5, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_31
    return-void
.end method

.method public static setProviderId(Ljava/lang/String;)V
    .registers 1

    sput-object p0, providerName:Ljava/lang/String;

    return-void
.end method

.method public static translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Request for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_24
    sget-object v0, uriToJCEName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
