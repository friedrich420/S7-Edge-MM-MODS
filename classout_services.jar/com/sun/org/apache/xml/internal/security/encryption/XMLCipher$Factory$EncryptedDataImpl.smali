.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedDataImpl;
.super Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedDataImpl"
.end annotation


# instance fields
.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    return-void
.end method


# virtual methods
.method toElement()Lorg/w3c/dom/Element;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string v2, "EncryptedData"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v0, "Id"

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v0, "Type"

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string v0, "MimeType"

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    const-string v0, "Encoding"

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6b
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7c
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9c
    return-object v1
.end method
