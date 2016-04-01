.class public Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/implementations/DSAKeyValueResolver;
.super Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;


# instance fields
.field private _dsaKeyElement:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    const-string v2, "KeyValue"

    invoke-static {p1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "DSAKeyValue"

    invoke-static {p1, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->elementIsInSignatureSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_25

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, "DSAKeyValue"

    invoke-static {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v2

    iput-object v2, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    iget-object v2, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_25
    if-eqz v3, :cond_4

    iput-object p1, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    move v0, v1

    goto :goto_4
.end method

.method public engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    if-nez v1, :cond_10

    invoke-virtual {p0, p1, p2, p3}, engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;

    iget-object v2, p0, _dsaKeyElement:Lorg/w3c/dom/Element;

    invoke-direct {v1, v2, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1a
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_10 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_f

    :catch_1c
    move-exception v1

    goto :goto_f
.end method

.method public engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method
