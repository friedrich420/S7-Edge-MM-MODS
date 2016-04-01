.class public final Landroid/security/KeyPairGeneratorSpec$Builder;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyPairGeneratorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEndDate:Ljava/util/Date;

.field private mFlags:I

.field private mKeySize:I

.field private mKeyType:Ljava/lang/String;

.field private mKeystoreAlias:Ljava/lang/String;

.field private mSerialNumber:Ljava/math/BigInteger;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mStartDate:Ljava/util/Date;

.field private mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, -0x1

    iput v0, p0, mKeySize:I

    .line 303
    if-nez p1, :cond_10

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_10
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 307
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyPairGeneratorSpec;
    .registers 12

    .prologue
    .line 448
    new-instance v0, Landroid/security/KeyPairGeneratorSpec;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mKeystoreAlias:Ljava/lang/String;

    iget-object v3, p0, mKeyType:Ljava/lang/String;

    iget v4, p0, mKeySize:I

    iget-object v5, p0, mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iget-object v7, p0, mSerialNumber:Ljava/math/BigInteger;

    iget-object v8, p0, mStartDate:Ljava/util/Date;

    iget-object v9, p0, mEndDate:Ljava/util/Date;

    iget v10, p0, mFlags:I

    invoke-direct/range {v0 .. v10}, Landroid/security/KeyPairGeneratorSpec;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V

    return-object v0
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 363
    if-nez p1, :cond_b

    .line 364
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_b
    iput-object p1, p0, mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 367
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 316
    if-nez p1, :cond_a

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_a
    iput-object p1, p0, mKeystoreAlias:Ljava/lang/String;

    .line 320
    return-object p0
.end method

.method public setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 2

    .prologue
    .line 436
    iget v0, p0, mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mFlags:I

    .line 437
    return-object p0
.end method

.method public setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 415
    if-nez p1, :cond_a

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_a
    iput-object p1, p0, mEndDate:Ljava/util/Date;

    .line 419
    return-object p0
.end method

.method public setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "keySize"    # I

    .prologue
    .line 351
    if-gez p1, :cond_a

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_a
    iput p1, p0, mKeySize:I

    .line 355
    return-object p0
.end method

.method public setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 6
    .param p1, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p1, :cond_a

    .line 332
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "keyType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_a
    :try_start_a
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_10

    .line 340
    iput-object p1, p0, mKeyType:Ljava/lang/String;

    .line 341
    return-object p0

    .line 336
    :catch_10
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 389
    if-nez p1, :cond_b

    .line 390
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_b
    iput-object p1, p0, mSerialNumber:Ljava/math/BigInteger;

    .line 393
    return-object p0
.end method

.method public setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 402
    if-nez p1, :cond_b

    .line 403
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_b
    iput-object p1, p0, mStartDate:Ljava/util/Date;

    .line 406
    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .registers 4
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 376
    if-nez p1, :cond_b

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_b
    iput-object p1, p0, mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 380
    return-object p0
.end method
