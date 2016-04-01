.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptionPropertyImpl"
.end annotation


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;

.field private encryptionInformation:Ljava/util/List;

.field private id:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, target:Ljava/lang/String;

    iput-object v0, p0, id:Ljava/lang/String;

    iput-object v0, p0, attributeName:Ljava/lang/String;

    iput-object v0, p0, attributeValue:Ljava/lang/String;

    iput-object v0, p0, encryptionInformation:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, encryptionInformation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEncryptionInformation(Lorg/w3c/dom/Element;)V
    .registers 3

    iget-object v0, p0, encryptionInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionInformation()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, encryptionInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, id:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, target:Ljava/lang/String;

    return-object v0
.end method

.method public removeEncryptionInformation(Lorg/w3c/dom/Element;)V
    .registers 3

    iget-object v0, p0, encryptionInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, attributeName:Ljava/lang/String;

    iput-object p2, p0, attributeValue:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, id:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_1 .. :try_end_6} :catch_d

    :goto_6
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, target:Ljava/lang/String;

    return-void

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method toElement()Lorg/w3c/dom/Element;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string v2, "EncryptionProperty"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, target:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, "Target"

    iget-object v2, p0, target:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v1, p0, id:Ljava/lang/String;

    if-eqz v1, :cond_2e

    const-string v1, "Id"

    iget-object v2, p0, id:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-object v0
.end method
