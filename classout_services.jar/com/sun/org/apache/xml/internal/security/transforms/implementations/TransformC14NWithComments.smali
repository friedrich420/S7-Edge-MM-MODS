.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformC14NWithComments;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315WithComments;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315WithComments;-><init>()V

    if-eqz p2, :cond_a

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->setWriter(Ljava/io/OutputStream;)V

    :cond_a
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setNeedsToBeExpanded(Z)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    if-eqz p2, :cond_1c

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V

    :cond_1c
    return-object v1
.end method
