.class public abstract Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;
.super Ljava/lang/Object;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$transforms$TransformSpi:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$TransformSpi:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.TransformSpi"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$TransformSpi:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$TransformSpi:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, _transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

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
.method protected abstract engineGetURI()Ljava/lang/String;
.end method

.method protected abstract enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected setTransform(Lcom/sun/org/apache/xml/internal/security/transforms/Transform;)V
    .registers 2

    iput-object p1, p0, _transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    return-void
.end method
