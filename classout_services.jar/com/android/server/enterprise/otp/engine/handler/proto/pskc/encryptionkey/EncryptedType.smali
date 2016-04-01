.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
.super Ljava/lang/Object;
.source "EncryptedType.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCipherData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

.field private mEncoding:Ljava/lang/String;

.field private mEncryptedMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

.field private mEncryptionProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, mCipherData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, mEncryptedMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

    return-object v0
.end method

.method public getEncryptionProperties()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, mEncryptionProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, mType:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, mAlgorithm:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCipherData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;)V
    .registers 2
    .param p1, "mCipherData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    .prologue
    .line 38
    iput-object p1, p0, mCipherData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    .line 39
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "mEncoding"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, mEncoding:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setEncryptedMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;)V
    .registers 2
    .param p1, "mEncryptedMethod"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

    .prologue
    .line 30
    iput-object p1, p0, mEncryptedMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

    .line 31
    return-void
.end method

.method public setEncryptionProperties(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "mEncryptionProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;>;"
    iput-object p1, p0, mEncryptionProperties:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mMimeType"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, mMimeType:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mType"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, mType:Ljava/lang/String;

    .line 63
    return-void
.end method
