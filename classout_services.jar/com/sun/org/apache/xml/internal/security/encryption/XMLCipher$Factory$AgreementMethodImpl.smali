.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgreementMethodImpl"
.end annotation


# instance fields
.field private agreementMethodInformation:Ljava/util/List;

.field private algorithmURI:Ljava/lang/String;

.field private kaNonce:[B

.field private originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v1, p0, kaNonce:[B

    iput-object v1, p0, agreementMethodInformation:Ljava/util/List;

    iput-object v1, p0, originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-object v1, p0, recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-object v1, p0, algorithmURI:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, agreementMethodInformation:Ljava/util/List;

    :try_start_17
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_17 .. :try_end_1c} :catch_23

    :goto_1c
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, algorithmURI:Ljava/lang/String;

    return-void

    :catch_23
    move-exception v0

    move-object v0, v1

    goto :goto_1c
.end method


# virtual methods
.method public addAgreementMethodInformation(Lorg/w3c/dom/Element;)V
    .registers 3

    iget-object v0, p0, agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAgreementMethodInformation()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, algorithmURI:Ljava/lang/String;

    return-object v0
.end method

.method public getKANonce()[B
    .registers 2

    iget-object v0, p0, kaNonce:[B

    return-object v0
.end method

.method public getOriginatorKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .registers 2

    iget-object v0, p0, originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0
.end method

.method public getRecipientKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .registers 2

    iget-object v0, p0, recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0
.end method

.method public revoveAgreementMethodInformation(Lorg/w3c/dom/Element;)V
    .registers 3

    iget-object v0, p0, agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_1 .. :try_end_6} :catch_a

    :goto_6
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    return-void

    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method public setKANonce([B)V
    .registers 2

    iput-object p1, p0, kaNonce:[B

    return-void
.end method

.method public setOriginatorKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    .registers 2

    iput-object p1, p0, originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-void
.end method

.method public setRecipientKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    .registers 2

    iput-object p1, p0, recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .registers 6

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string v2, "AgreementMethod"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "Algorithm"

    iget-object v3, p0, algorithmURI:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, kaNonce:[B

    if-eqz v0, :cond_4e

    iget-object v0, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#"

    const-string v3, "KA-Nonce"

    invoke-static {v0, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v2, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, kaNonce:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4e
    iget-object v0, p0, agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5c

    :cond_6c
    iget-object v0, p0, originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    if-eqz v0, :cond_79

    iget-object v0, p0, originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_79
    iget-object v0, p0, recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    if-eqz v0, :cond_86

    iget-object v0, p0, recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_86
    return-object v1
.end method
