.class public Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field static _alreadyInitialized:Z

.field static class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _internalKeyResolvers:Ljava/util/List;

.field _storageResolvers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.KeyInfo"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, _alreadyInitialized:Z

    return-void

    :cond_1a
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _internalKeyResolvers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _storageResolvers:Ljava/util/List;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _internalKeyResolvers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, _storageResolvers:Ljava/util/List;

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

.method public static init()V
    .registers 3

    sget-boolean v0, _alreadyInitialized:Z

    if-nez v0, :cond_2a

    sget-object v0, log:Ljava/util/logging/Logger;

    if-nez v0, :cond_27

    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    if-nez v0, :cond_2b

    const-string v0, "com.sun.org.apache.xml.internal.security.keys.KeyInfo"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Had to assign log in the init() function"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_27
    const/4 v0, 0x1

    sput-boolean v0, _alreadyInitialized:Z

    :cond_2a
    return-void

    :cond_2b
    sget-object v0, class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    goto :goto_14
.end method


# virtual methods
.method public add(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_11

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->martial(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_11
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;)V
    .registers 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_12
    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public add(Ljava/security/PublicKey;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Ljava/security/PublicKey;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public addKeyName(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;)V

    return-void
.end method

.method public addKeyValue(Ljava/security/PublicKey;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Ljava/security/PublicKey;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public addKeyValue(Lorg/w3c/dom/Element;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public addMgmtData(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;)V

    return-void
.end method

.method public addRetrievalMethod(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, add(Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;)V

    return-void
.end method

.method public addStorageResolver(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public addUnknownElement(Lorg/w3c/dom/Element;)V
    .registers 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_e
    return-void
.end method

.method public containsKeyName()Z
    .registers 2

    invoke-virtual {p0}, lengthKeyName()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsKeyValue()Z
    .registers 2

    invoke-virtual {p0}, lengthKeyValue()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsMgmtData()Z
    .registers 2

    invoke-virtual {p0}, lengthMgmtData()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsPGPData()Z
    .registers 2

    invoke-virtual {p0}, lengthPGPData()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsRetrievalMethod()Z
    .registers 2

    invoke-virtual {p0}, lengthRetrievalMethod()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsSPKIData()Z
    .registers 2

    invoke-virtual {p0}, lengthSPKIData()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsUnknownElement()Z
    .registers 2

    invoke-virtual {p0}, lengthUnknownElement()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsX509Data()Z
    .registers 2

    invoke-virtual {p0}, lengthX509Data()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .registers 2

    const-string v0, "KeyInfo"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Id"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-virtual {p0}, getPublicKeyFromInternalResolvers()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I could find a key using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "I couldn\'t find a key using the per-KeyInfo key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, getPublicKeyFromStaticResolvers()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I could find a key using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_19

    :cond_47
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "I couldn\'t find a key using the system-wide key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_5a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method getPublicKeyFromInternalResolvers()Ljava/security/PublicKey;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, v4

    :goto_3
    invoke-virtual {p0}, lengthInternalKeyResolver()I

    move-result v0

    if-ge v3, v0, :cond_a4

    invoke-virtual {p0, v3}, itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    move-result-object v7

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Try "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_3f
    if-eqz v1, :cond_9f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9a

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6b

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_9a

    :cond_6a
    :goto_6a
    return-object v0

    :cond_6b
    move v5, v4

    :goto_6c
    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9a

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_96

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_6a

    :cond_96
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6c

    :cond_9a
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_3f

    :cond_9f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_a4
    move-object v0, v6

    goto :goto_6a
.end method

.method getPublicKeyFromStaticResolvers()Ljava/security/PublicKey;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, v4

    :goto_3
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v0

    if-ge v3, v0, :cond_77

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_73

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6e

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3f

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_6e

    :cond_3e
    :goto_3e
    return-object v0

    :cond_3f
    move v5, v4

    :goto_40
    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6e

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_3e

    :cond_6a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_40

    :cond_6e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_13

    :cond_73
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_77
    move-object v0, v6

    goto :goto_3e
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-virtual {p0}, getSecretKeyFromInternalResolvers()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I could find a secret key using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "I couldn\'t find a secret key using the per-KeyInfo key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, getSecretKeyFromStaticResolvers()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I could find a secret key using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_19

    :cond_47
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "I couldn\'t find a secret key using the system-wide key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_5a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method getSecretKeyFromInternalResolvers()Ljavax/crypto/SecretKey;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, v4

    :goto_3
    invoke-virtual {p0}, lengthInternalKeyResolver()I

    move-result v0

    if-ge v3, v0, :cond_a4

    invoke-virtual {p0, v3}, itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    move-result-object v7

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Try "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_3f
    if-eqz v1, :cond_9f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9a

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6b

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_9a

    :cond_6a
    :goto_6a
    return-object v0

    :cond_6b
    move v5, v4

    :goto_6c
    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9a

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_96

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_6a

    :cond_96
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6c

    :cond_9a
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_3f

    :cond_9f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_a4
    move-object v0, v6

    goto :goto_6a
.end method

.method getSecretKeyFromStaticResolvers()Ljavax/crypto/SecretKey;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, v4

    :goto_3
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v0

    if-ge v3, v0, :cond_77

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_73

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6e

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3f

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_6e

    :cond_3e
    :goto_3e
    return-object v0

    :cond_3f
    move v5, v4

    :goto_40
    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6e

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_3e

    :cond_6a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_40

    :cond_6e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_13

    :cond_73
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_77
    move-object v0, v6

    goto :goto_3e
.end method

.method getStorageResolvers()Ljava/util/List;
    .registers 2

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    return-object v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    invoke-virtual {p0}, getX509CertificateFromInternalResolvers()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I could find a X509Certificate using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "I couldn\'t find a X509Certificate using the per-KeyInfo key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, getX509CertificateFromStaticResolvers()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "I could find a X509Certificate using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_19

    :cond_47
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "I couldn\'t find a X509Certificate using the system-wide key resolvers"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_5a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method getX509CertificateFromInternalResolvers()Ljava/security/cert/X509Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Start getX509CertificateFromInternalResolvers() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, lengthInternalKeyResolver()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " resolvers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_30
    move v3, v4

    :goto_31
    invoke-virtual {p0}, lengthInternalKeyResolver()I

    move-result v0

    if-ge v3, v0, :cond_d2

    invoke-virtual {p0, v3}, itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    move-result-object v7

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Try "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_67
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_6d
    if-eqz v1, :cond_cd

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c8

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_99

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-eqz v0, :cond_c8

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_c8

    :cond_98
    :goto_98
    return-object v0

    :cond_99
    move v5, v4

    :goto_9a
    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_c8

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_c4

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_98

    :cond_c4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_9a

    :cond_c8
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_6d

    :cond_cd
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_31

    :cond_d2
    move-object v0, v6

    goto :goto_98
.end method

.method getX509CertificateFromStaticResolvers()Ljava/security/cert/X509Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Start getX509CertificateFromStaticResolvers() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " resolvers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_30
    move v3, v4

    :goto_31
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v0

    if-ge v3, v0, :cond_a5

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_41
    if-eqz v1, :cond_a1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9c

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6d

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v6}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_9c

    :cond_6c
    :goto_6c
    return-object v0

    :cond_6d
    move v5, v4

    :goto_6e
    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9c

    iget-object v0, p0, _storageResolvers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v2

    if-eqz v2, :cond_98

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8, v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_6c

    :cond_98
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6e

    :cond_9c
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_41

    :cond_a1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_31

    :cond_a5
    move-object v0, v6

    goto :goto_6c
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public itemEncryptedKey(I)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "EncryptedKey"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectXencNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->loadEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
    .registers 3

    iget-object v0, p0, _internalKeyResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    return-object v0
.end method

.method public itemKeyName(I)Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "KeyName"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public itemKeyValue(I)Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "KeyValue"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public itemMgmtData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "MgmtData"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public itemPGPData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "PGPData"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public itemRetrievalMethod(I)Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "RetrievalMethod"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public itemSPKIData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "SPKIData"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public itemUnknownElement(I)Lorg/w3c/dom/Element;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_9
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_32

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_2e

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_2d
    return-object v0

    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_32
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public itemX509Data(I)Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "X509Data"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method lengthInternalKeyResolver()I
    .registers 2

    iget-object v0, p0, _internalKeyResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public lengthKeyName()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "KeyName"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthKeyValue()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "KeyValue"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthMgmtData()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "MgmtData"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthPGPData()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "PGPData"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthRetrievalMethod()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "RetrievalMethod"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthSPKIData()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "SPKIData"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthUnknownElement()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2b

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v1, v1, 0x1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2b
    return v1
.end method

.method public lengthX509Data()I
    .registers 3

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "X509Data"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerInternalKeyResolver(Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;)V
    .registers 3

    iget-object v0, p0, _internalKeyResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string v2, "Id"

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
