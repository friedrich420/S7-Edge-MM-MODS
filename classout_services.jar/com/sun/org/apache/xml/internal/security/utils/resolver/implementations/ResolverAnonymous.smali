.class public Lcom/sun/org/apache/xml/internal/security/utils/resolver/implementations/ResolverAnonymous;
.super Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.resolver.implementations.ResolverAnonymous"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$resolver$implementations$ResolverAnonymous:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

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
.method public engineCanResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public engineGetPropertyKeys()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public engineResolve(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 4

    iget-object v0, p0, _input:Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    return-object v0
.end method
