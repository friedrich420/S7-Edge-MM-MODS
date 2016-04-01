.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptionPropertiesImpl"
.end annotation


# instance fields
.field private encryptionProperties:Ljava/util/List;

.field private id:Ljava/lang/String;

.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, id:Ljava/lang/String;

    iput-object v0, p0, encryptionProperties:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, encryptionProperties:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEncryptionProperty(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;)V
    .registers 3

    iget-object v0, p0, encryptionProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEncryptionProperties()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, encryptionProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, id:Ljava/lang/String;

    return-object v0
.end method

.method public removeEncryptionProperty(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;)V
    .registers 3

    iget-object v0, p0, encryptionProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, id:Ljava/lang/String;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .registers 5

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string v2, "EncryptionProperties"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v0, p0, id:Ljava/lang/String;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    const-string v2, "Id"

    iget-object v3, p0, id:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p0}, getEncryptionProperties()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_23

    :cond_37
    return-object v1
.end method
