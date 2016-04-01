.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CipherDataImpl"
.end annotation


# static fields
.field private static final referenceMessage:Ljava/lang/String; = "Data type is value type."

.field private static final valueMessage:Ljava/lang/String; = "Data type is reference type."


# instance fields
.field private cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

.field private cipherType:I

.field private cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    iput-object v0, p0, cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    const/high16 v0, -0x80000000

    iput v0, p0, cipherType:I

    iput p2, p0, cipherType:I

    return-void
.end method


# virtual methods
.method public getCipherReference()Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
    .registers 2

    iget-object v0, p0, cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    return-object v0
.end method

.method public getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
    .registers 2

    iget-object v0, p0, cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    return-object v0
.end method

.method public getDataType()I
    .registers 2

    iget v0, p0, cipherType:I

    return v0
.end method

.method public setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v0, p0, cipherType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Data type is value type."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_15
    iput-object p1, p0, cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    return-void
.end method

.method public setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v0, p0, cipherType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v1, "empty"

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Data type is reference type."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_15
    iput-object p1, p0, cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .registers 4

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string v2, "CipherData"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget v0, p0, cipherType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    iget-object v0, p0, cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_23
    :goto_23
    return-object v1

    :cond_24
    iget v0, p0, cipherType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    iget-object v0, p0, cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_23
.end method
