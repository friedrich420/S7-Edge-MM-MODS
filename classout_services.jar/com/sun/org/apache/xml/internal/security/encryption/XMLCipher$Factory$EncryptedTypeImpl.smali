.class abstract Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EncryptedTypeImpl"
.end annotation


# instance fields
.field private cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

.field private encoding:Ljava/lang/String;

.field private encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

.field private encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

.field private id:Ljava/lang/String;

.field private keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private mimeType:Ljava/lang/String;

.field private final this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, id:Ljava/lang/String;

    iput-object v0, p0, type:Ljava/lang/String;

    iput-object v0, p0, mimeType:Ljava/lang/String;

    iput-object v0, p0, encoding:Ljava/lang/String;

    iput-object v0, p0, encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    iput-object v0, p0, keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-object v0, p0, cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    iput-object v0, p0, encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    iput-object p2, p0, cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    return-void
.end method


# virtual methods
.method public getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;
    .registers 2

    iget-object v0, p0, cipherData:Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;
    .registers 2

    iget-object v0, p0, encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    return-object v0
.end method

.method public getEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;
    .registers 2

    iget-object v0, p0, encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .registers 2

    iget-object v0, p0, keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, type:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
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

    iput-object v0, p0, encoding:Ljava/lang/String;

    return-void

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method public setEncryptionMethod(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;)V
    .registers 2

    iput-object p1, p0, encryptionMethod:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    return-void
.end method

.method public setEncryptionProperties(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;)V
    .registers 2

    iput-object p1, p0, encryptionProperties:Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, id:Ljava/lang/String;

    return-void
.end method

.method public setKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    .registers 2

    iput-object p1, p0, keyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, mimeType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
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

    iput-object v0, p0, type:Ljava/lang/String;

    return-void

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method
