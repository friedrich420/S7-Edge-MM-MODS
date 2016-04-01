.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverXPointer;
.super Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;


# static fields
.field private static final XP:Ljava/lang/String; = "#xpointer(id("

.field private static final XP_LENGTH:I

.field static class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverXPointer:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverXPointer:Ljava/lang/Class;

    if-nez v0, :cond_1f

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.resolver.implementations.ResolverXPointer"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverXPointer:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const-string v0, "#xpointer(id("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, XP_LENGTH:I

    return-void

    :cond_1f
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverXPointer:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;-><init>()V

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

.method private static getXPointerId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x0

    const-string v0, "#xpointer(id("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "))"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    sget v0, XP_LENGTH:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_3f

    :cond_33
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_45

    :cond_3f
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_44
    return-object v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private static isXPointerId(Ljava/lang/String;)Z
    .registers 8

    const/16 v6, 0x27

    const/16 v5, 0x22

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "#xpointer(id("

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "))"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    sget v2, XP_LENGTH:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_34

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_40

    :cond_34
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_69

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_69

    :cond_40
    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return v0

    :cond_69
    move v0, v1

    goto :goto_68
.end method

.method private static isXPointerSlash(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "#xpointer(/)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, isXPointerSlash(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v1}, isXPointerId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_14
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, isXPointerSlash(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_13
    :goto_13
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>(Lorg/w3c/dom/Node;)V

    const-string/jumbo v0, "text/xml"

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setMIMEType(Ljava/lang/String;)V

    if-eqz p2, :cond_51

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    :goto_31
    return-object v1

    :cond_32
    invoke-static {v2}, isXPointerId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-static {v2}, getXPointerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->getElementById(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;

    const-string/jumbo v2, "signature.Verification.MissingID"

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Attr;Ljava/lang/String;)V

    throw v1

    :cond_51
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setSourceURI(Ljava/lang/String;)V

    goto :goto_31

    :cond_59
    move-object v0, v1

    goto :goto_13
.end method
