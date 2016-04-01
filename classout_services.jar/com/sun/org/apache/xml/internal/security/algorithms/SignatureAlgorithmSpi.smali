.class public abstract Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;
.super Ljava/lang/Object;


# static fields
.field static class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithmSpi:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _constructionElement:Lorg/w3c/dom/Element;

.field _doc:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithmSpi:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithmSpi"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithmSpi:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    return-void

    :cond_17
    sget-object v0, class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithmSpi:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _doc:Lorg/w3c/dom/Document;

    iput-object v0, p0, _constructionElement:Lorg/w3c/dom/Element;

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
.method protected engineGetContextFromElement(Lorg/w3c/dom/Element;)V
    .registers 2

    iput-object p1, p0, _constructionElement:Lorg/w3c/dom/Element;

    return-void
.end method

.method protected abstract engineGetJCEAlgorithmString()Ljava/lang/String;
.end method

.method protected abstract engineGetJCEProviderName()Ljava/lang/String;
.end method

.method protected abstract engineGetURI()Ljava/lang/String;
.end method

.method protected abstract engineInitSign(Ljava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineInitVerify(Ljava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected engineSetDocument(Lorg/w3c/dom/Document;)V
    .registers 2

    iput-object p1, p0, _doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method protected abstract engineSetHMACOutputLength(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineSign()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method

.method protected abstract engineVerify([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation
.end method
