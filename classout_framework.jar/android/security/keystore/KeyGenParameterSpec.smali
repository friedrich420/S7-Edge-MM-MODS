.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mCertificateNotAfter:Ljava/util/Date;

.field private final mCertificateNotBefore:Ljava/util/Date;

.field private final mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 228
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 229
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 230
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 231
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x23d19d43c00L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI)V
    .registers 22
    .param p1, "keyStoreAlias"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "certificateSubject"    # Ljavax/security/auth/x500/X500Principal;
    .param p5, "certificateSerialNumber"    # Ljava/math/BigInteger;
    .param p6, "certificateNotBefore"    # Ljava/util/Date;
    .param p7, "certificateNotAfter"    # Ljava/util/Date;
    .param p8, "keyValidityStart"    # Ljava/util/Date;
    .param p9, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p10, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p11, "purposes"    # I
    .param p12, "digests"    # [Ljava/lang/String;
    .param p13, "encryptionPaddings"    # [Ljava/lang/String;
    .param p14, "signaturePaddings"    # [Ljava/lang/String;
    .param p15, "blockModes"    # [Ljava/lang/String;
    .param p16, "randomizedEncryptionRequired"    # Z
    .param p17, "userAuthenticationRequired"    # Z
    .param p18, "userAuthenticationValidityDurationSeconds"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyStoreAlias must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_11
    if-nez p4, :cond_15

    .line 279
    sget-object p4, DEFAULT_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 281
    :cond_15
    if-nez p6, :cond_19

    .line 282
    sget-object p6, DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 284
    :cond_19
    if-nez p7, :cond_1d

    .line 285
    sget-object p7, DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    .line 287
    :cond_1d
    if-nez p5, :cond_21

    .line 288
    sget-object p5, DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 291
    :cond_21
    invoke-virtual {p7, p6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_2f
    iput-object p1, p0, mKeystoreAlias:Ljava/lang/String;

    .line 296
    iput p2, p0, mKeySize:I

    .line 297
    iput-object p3, p0, mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 298
    iput-object p4, p0, mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 299
    iput-object p5, p0, mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 300
    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mCertificateNotBefore:Ljava/util/Date;

    .line 301
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mCertificateNotAfter:Ljava/util/Date;

    .line 302
    invoke-static {p8}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mKeyValidityStart:Ljava/util/Date;

    .line 303
    invoke-static {p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 304
    invoke-static {p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 305
    iput p11, p0, mPurposes:I

    .line 306
    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mDigests:[Ljava/lang/String;

    .line 307
    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mEncryptionPaddings:[Ljava/lang/String;

    .line 309
    invoke-static/range {p14 .. p14}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mSignaturePaddings:[Ljava/lang/String;

    .line 310
    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mBlockModes:[Ljava/lang/String;

    .line 311
    move/from16 v0, p16

    iput-boolean v0, p0, mRandomizedEncryptionRequired:Z

    .line 312
    move/from16 v0, p17

    iput-boolean v0, p0, mUserAuthenticationRequired:Z

    .line 313
    move/from16 v0, p18

    iput v0, p0, mUserAuthenticationValidityDurationSeconds:I

    .line 314
    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getBlockModes()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getDigests()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, mDigests:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_c
    iget-object v0, p0, mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, mKeySize:I

    return v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposes()I
    .registers 2

    .prologue
    .line 413
    iget v0, p0, mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    .prologue
    .line 524
    iget v0, p0, mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isDigestsSpecified()Z
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRandomizedEncryptionRequired()Z
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, mUserAuthenticationRequired:Z

    return v0
.end method
