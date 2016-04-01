.class public Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;
.super Ljava/lang/Object;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$utils$IdResolver:Ljava/lang/Class;

.field static docMap:Ljava/util/WeakHashMap;

.field static log:Ljava/util/logging/Logger;

.field static names:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$IdResolver:Ljava/lang/Class;

    if-nez v0, :cond_3f

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.IdResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$IdResolver:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, docMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://www.w3.org/2000/09/xmldsig#"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "http://schemas.xmlsoap.org/soap/security/2000-12"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "http://www.w3.org/2002/03/xkms#"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, names:Ljava/util/List;

    return-void

    :cond_3f
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$IdResolver:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
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

.method public static getElementById(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7

    invoke-static {p0, p1}, getElementByIdType(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2f

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "I could find an Element using the simple getElementByIdType method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    invoke-static {p0, p1}, getElementByIdUsingDOM(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_5e

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "I could find an Element using the simple getElementByIdUsingDOM method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2e

    :cond_5e
    invoke-static {p0, p1}, getElementBySearching(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-static {v0, p1}, registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_2e

    :cond_68
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private static getElementByIdType(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "getElementByIdType() Search for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_25
    sget-object v0, docMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_3d
    return-object v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private static getElementByIdUsingDOM(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "getElementByIdUsingDOM() Search for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_25
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method private static getElementBySearching(Lorg/w3c/dom/Node;Ljava/lang/String;[Lorg/w3c/dom/Element;)I
    .registers 9

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_98

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :sswitch_c
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, names:Ljava/util/List;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_22

    move v1, v2

    :cond_22
    const-string v4, "Id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    aput-object v0, p2, v1

    if-nez v1, :cond_46

    move v0, v3

    goto :goto_b

    :cond_34
    const-string/jumbo v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    const/4 v4, 0x2

    if-eq v1, v4, :cond_95

    :goto_44
    aput-object v0, p2, v2

    :cond_46
    :goto_46
    :sswitch_46
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4a
    if-eqz v0, :cond_a

    invoke-static {v0, p1, p2}, getElementBySearching(Lorg/w3c/dom/Node;Ljava/lang/String;[Lorg/w3c/dom/Element;)I

    move-result v1

    if-ne v1, v3, :cond_8e

    move v0, v3

    goto :goto_b

    :cond_54
    const-string v4, "ID"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    if-eq v1, v5, :cond_93

    :goto_62
    aput-object v0, p2, v2

    goto :goto_46

    :cond_65
    if-ne v1, v5, :cond_46

    const-string v1, "OriginalRequestID"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "RequestID"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "ResponseID"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_8b
    aput-object v0, p2, v5

    goto :goto_46

    :cond_8e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4a

    :cond_93
    move v2, v1

    goto :goto_62

    :cond_95
    move v2, v1

    goto :goto_44

    nop

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_c
        0x9 -> :sswitch_46
    .end sparse-switch
.end method

.method private static getElementBySearching(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 5

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/w3c/dom/Element;

    invoke-static {p0, p1, v1}, getElementBySearching(Lorg/w3c/dom/Node;Ljava/lang/String;[Lorg/w3c/dom/Element;)I

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_14

    aget-object v2, v1, v0

    if-eqz v2, :cond_11

    aget-object v0, v1, v0

    :goto_10
    return-object v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    sget-object v0, docMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sget-object v2, docMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerElementById(Lorg/w3c/dom/Element;Lorg/w3c/dom/Attr;)V
    .registers 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method
