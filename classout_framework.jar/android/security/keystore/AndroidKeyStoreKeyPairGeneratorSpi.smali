.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$EC;,
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
    }
.end annotation


# static fields
.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field private static final SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x209

    const/16 v5, 0x180

    const/16 v4, 0xe0

    const/16 v3, 0x100

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    .line 118
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-224"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp224r1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-256"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp256r1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "prime256v1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-384"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp384r1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-521"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp521r1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    sget-object v1, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    sget-object v0, SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 138
    sget-object v0, SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    sget-object v0, SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 141
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3
    .param p1, "keymasterAlgorithm"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, mKeymasterAlgorithm:I

    .line 165
    iput p1, p0, mOriginalKeymasterAlgorithm:I

    .line 166
    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 5
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 535
    iget v0, p0, mKeymasterAlgorithm:I

    packed-switch v0, :pswitch_data_2a

    .line 543
    :pswitch_5
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :pswitch_20
    const v0, 0x500000c8

    iget-object v1, p0, mRSAPublicExponent:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 545
    :pswitch_28
    return-void

    .line 535
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_5
        :pswitch_28
    .end packed-switch
.end method

.method private static checkValidKeySize(II)V
    .registers 5
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 643
    packed-switch p0, :pswitch_data_5e

    .line 657
    :pswitch_3
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :pswitch_1c
    sget-object v0, SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 646
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits. Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :pswitch_4d
    const/16 v0, 0x200

    if-lt p1, v0, :cond_55

    const/16 v0, 0x2000

    if-le p1, v0, :cond_5d

    .line 652
    :cond_55
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_5d
    return-void

    .line 643
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 549
    iget v2, p0, mKeymasterAlgorithm:I

    iget v3, p0, mKeySizeBits:I

    iget-object v4, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v2, v3, v4}, getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "signatureAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 553
    invoke-direct {p0, p2}, generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 565
    :goto_10
    return-object v2

    .line 557
    :cond_11
    :try_start_11
    invoke-direct {p0, p1, p2, v1}, generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16

    move-result-object v2

    goto :goto_10

    .line 559
    :catch_16
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2}, generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    goto :goto_10
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .registers 17
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    .line 591
    .local v7, "tbsGenerator":Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
    iget v10, p0, mKeymasterAlgorithm:I

    packed-switch v10, :pswitch_data_102

    .line 606
    :pswitch_a
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported key algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mKeymasterAlgorithm:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 593
    :pswitch_25
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 594
    .local v3, "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 595
    .local v2, "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 596
    .local v8, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 597
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 598
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v4

    .line 609
    .end local v8    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "signature":[B
    :goto_4e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const/4 v11, 0x0

    .line 610
    :try_start_58
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_63} :catch_e9
    .catchall {:try_start_58 .. :try_end_63} :catchall_100

    .line 612
    if-eqz v0, :cond_6a

    if-eqz v11, :cond_e5

    :try_start_67
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_e0

    .line 613
    :cond_6a
    :goto_6a
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 614
    new-instance v5, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v10, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    .line 616
    .local v5, "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 617
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    .line 618
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 619
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    .line 620
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 621
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v6

    .line 623
    .local v6, "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 624
    .local v1, "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 625
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 626
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v10, v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 627
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v10

    .line 601
    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "signature":[B
    .end local v5    # "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    .end local v6    # "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    :pswitch_d2
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 602
    .restart local v3    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 603
    .restart local v2    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v10, 0x1

    new-array v4, v10, [B

    .line 604
    .restart local v4    # "signature":[B
    goto/16 :goto_4e

    .line 612
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_e0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6a

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_e5
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    goto :goto_6a

    .line 609
    :catch_e9
    move-exception v10

    :try_start_ea
    throw v10
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    .line 612
    :catchall_eb
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_ef
    if-eqz v0, :cond_f6

    if-eqz v11, :cond_fc

    :try_start_f3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_f6} :catch_f7

    :cond_f6
    :goto_f6
    throw v10

    :catch_f7
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f6

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_fc
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    goto :goto_f6

    :catchall_100
    move-exception v10

    goto :goto_ef

    .line 591
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_a
        :pswitch_25
    .end packed-switch
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "signatureAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 574
    .local v0, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 575
    iget-object v1, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 576
    iget-object v1, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 577
    iget-object v1, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 578
    iget-object v1, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 579
    iget-object v1, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 580
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .param p0, "authorizedKeyDigests"    # [Ljava/lang/String;
    .param p1, "supportedSignatureDigests"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 800
    .local v1, "authorizedKeymasterKeyDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v4, :cond_19

    aget v3, v0, v2

    .line 801
    .local v3, "keymasterDigest":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 803
    .end local v3    # "keymasterDigest":I
    :cond_19
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 805
    .local v6, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v4, :cond_32

    aget v3, v0, v2

    .line 806
    .restart local v3    # "keymasterDigest":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 808
    .end local v3    # "keymasterDigest":I
    :cond_32
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 809
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 810
    return-object v5
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .registers 15
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySizeBits"    # I
    .param p2, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 678
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_c

    move-object v8, v9

    .line 788
    :goto_b
    return-object v8

    .line 682
    :cond_c
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v8

    if-eqz v8, :cond_14

    move-object v8, v9

    .line 684
    goto :goto_b

    .line 686
    :cond_14
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v8

    if-nez v8, :cond_1c

    move-object v8, v9

    .line 688
    goto :goto_b

    .line 690
    :cond_1c
    packed-switch p0, :pswitch_data_f6

    .line 792
    :pswitch_1f
    new-instance v8, Ljava/security/ProviderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 693
    :pswitch_38
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 697
    .local v0, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 698
    .local v2, "bestKeymasterDigest":I
    const/4 v1, -0x1

    .line 699
    .local v1, "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 700
    .local v4, "keymasterDigest":I
    invoke-static {v4}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v6

    .line 701
    .local v6, "outputSizeBits":I
    if-ne v6, p1, :cond_66

    .line 703
    move v2, v4

    .line 704
    move v1, v6

    .line 733
    .end local v4    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_62
    if-ne v2, v11, :cond_79

    move-object v8, v9

    .line 734
    goto :goto_b

    .line 708
    .restart local v4    # "keymasterDigest":I
    .restart local v6    # "outputSizeBits":I
    :cond_66
    if-ne v2, v11, :cond_6b

    .line 710
    move v2, v4

    .line 711
    move v1, v6

    goto :goto_4a

    .line 715
    :cond_6b
    if-ge v1, p1, :cond_72

    .line 718
    if-le v6, v1, :cond_4a

    .line 719
    move v2, v4

    .line 720
    move v1, v6

    goto :goto_4a

    .line 725
    :cond_72
    if-ge v6, v1, :cond_4a

    if-lt v6, p1, :cond_4a

    .line 727
    move v2, v4

    .line 728
    move v1, v6

    goto :goto_4a

    .line 736
    .end local v4    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "WithECDSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_b

    .line 745
    .end local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "bestDigestOutputSizeBits":I
    .end local v2    # "bestKeymasterDigest":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_92
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    const/4 v10, 0x5

    invoke-static {v8, v10}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    .line 750
    .local v7, "pkcs1SignaturePaddingSupported":Z
    if-nez v7, :cond_a4

    move-object v8, v9

    .line 752
    goto/16 :goto_b

    .line 755
    :cond_a4
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 764
    .restart local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v5, p1, -0xf0

    .line 765
    .local v5, "maxDigestOutputSizeBits":I
    const/4 v2, -0x1

    .line 766
    .restart local v2    # "bestKeymasterDigest":I
    const/4 v1, -0x1

    .line 767
    .restart local v1    # "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b8
    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 768
    .restart local v4    # "keymasterDigest":I
    invoke-static {v4}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v6

    .line 769
    .restart local v6    # "outputSizeBits":I
    if-gt v6, v5, :cond_b8

    .line 773
    if-ne v2, v11, :cond_d3

    .line 775
    move v2, v4

    .line 776
    move v1, v6

    goto :goto_b8

    .line 779
    :cond_d3
    if-le v6, v1, :cond_b8

    .line 780
    move v2, v4

    .line 781
    move v1, v6

    goto :goto_b8

    .line 785
    .end local v4    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_d8
    if-ne v2, v11, :cond_dd

    move-object v8, v9

    .line 786
    goto/16 :goto_b

    .line 788
    :cond_dd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "WithRSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_b

    .line 690
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_92
        :pswitch_1f
        :pswitch_38
    .end packed-switch
.end method

.method private static getDefaultKeySize(I)I
    .registers 4
    .param p0, "keymasterAlgorithm"    # I

    .prologue
    .line 631
    packed-switch p0, :pswitch_data_22

    .line 637
    :pswitch_3
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :pswitch_1c
    const/16 v0, 0x100

    .line 635
    :goto_1e
    return v0

    :pswitch_1f
    const/16 v0, 0x800

    goto :goto_1e

    .line 631
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private initAlgorithmSpecificParameters()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 371
    iget-object v6, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 372
    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget v6, p0, mKeymasterAlgorithm:I

    packed-switch v6, :pswitch_data_17c

    .line 429
    :pswitch_c
    new-instance v6, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mKeymasterAlgorithm:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 375
    :pswitch_27
    const/4 v4, 0x0

    .line 376
    .local v4, "publicExponent":Ljava/math/BigInteger;
    instance-of v6, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v6, :cond_aa

    move-object v5, v0

    .line 377
    check-cast v5, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 378
    .local v5, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v6, p0, mKeySizeBits:I

    if-ne v6, v8, :cond_63

    .line 379
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v6

    iput v6, p0, mKeySizeBits:I

    .line 385
    :cond_39
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 390
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_3d
    if-nez v4, :cond_41

    .line 391
    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 393
    :cond_41
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_b4

    .line 394
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSA public exponent must be positive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    .restart local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_63
    iget v6, p0, mKeySizeBits:I

    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v7

    if-eq v6, v7, :cond_39

    .line 381
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSA key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mKeySizeBits:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 386
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_aa
    if-eqz v0, :cond_3d

    .line 387
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 397
    :cond_b4
    sget-object v6, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_e1

    .line 398
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported RSA public exponent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Maximum supported value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    :cond_e1
    iput-object v4, p0, mRSAPublicExponent:Ljava/math/BigInteger;

    .line 431
    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    :cond_e3
    :goto_e3
    return-void

    .line 406
    :pswitch_e4
    instance-of v6, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v6, :cond_172

    move-object v2, v0

    .line 407
    check-cast v2, Ljava/security/spec/ECGenParameterSpec;

    .line 408
    .local v2, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "curveName":Ljava/lang/String;
    sget-object v6, SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 411
    .local v3, "ecSpecKeySizeBits":Ljava/lang/Integer;
    if-nez v3, :cond_124

    .line 412
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported EC curve name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 416
    :cond_124
    iget v6, p0, mKeySizeBits:I

    if-ne v6, v8, :cond_12f

    .line 417
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, mKeySizeBits:I

    goto :goto_e3

    .line 418
    :cond_12f
    iget v6, p0, mKeySizeBits:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_e3

    .line 419
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EC key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mKeySizeBits:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 423
    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v3    # "ecSpecKeySizeBits":Ljava/lang/Integer;
    :cond_172
    if-eqz v0, :cond_e3

    .line 424
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "EC may only use ECGenParameterSpec"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 372
    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_c
        :pswitch_e4
    .end packed-switch
.end method

.method private resetAll()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 354
    iput-object v1, p0, mEntryAlias:Ljava/lang/String;

    .line 355
    iput-object v1, p0, mJcaKeyAlgorithm:Ljava/lang/String;

    .line 356
    const/4 v0, -0x1

    iput v0, p0, mKeymasterAlgorithm:I

    .line 357
    iput-object v1, p0, mKeymasterPurposes:[I

    .line 358
    iput-object v1, p0, mKeymasterBlockModes:[I

    .line 359
    iput-object v1, p0, mKeymasterEncryptionPaddings:[I

    .line 360
    iput-object v1, p0, mKeymasterSignaturePaddings:[I

    .line 361
    iput-object v1, p0, mKeymasterDigests:[I

    .line 362
    iput v2, p0, mKeySizeBits:I

    .line 363
    iput-object v1, p0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 364
    iput-object v1, p0, mRSAPublicExponent:Ljava/math/BigInteger;

    .line 365
    iput-boolean v2, p0, mEncryptionAtRestRequired:Z

    .line 366
    iput-object v1, p0, mRng:Ljava/security/SecureRandom;

    .line 367
    iput-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    .line 368
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 19

    .prologue
    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v2, :cond_14

    .line 436
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v15, "Not initialized"

    invoke-direct {v2, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEncryptionAtRestRequired:Z

    if-eqz v2, :cond_33

    const/4 v6, 0x1

    .line 440
    .local v6, "flags":I
    :goto_1b
    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v15, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v2, v15, :cond_35

    .line 442
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v15, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    invoke-direct {v2, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    .end local v6    # "flags":I
    :cond_33
    const/4 v6, 0x0

    goto :goto_1b

    .line 447
    .restart local v6    # "flags":I
    :cond_35
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 448
    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    const v2, 0x30000003

    move-object/from16 v0, p0

    iget v15, v0, mKeySizeBits:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 449
    const v2, 0x10000002

    move-object/from16 v0, p0

    iget v15, v0, mKeymasterAlgorithm:I

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 450
    const v2, 0x20000001

    move-object/from16 v0, p0

    iget-object v15, v0, mKeymasterPurposes:[I

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 451
    const v2, 0x20000004

    move-object/from16 v0, p0

    iget-object v15, v0, mKeymasterBlockModes:[I

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 452
    const v2, 0x20000006

    move-object/from16 v0, p0

    iget-object v15, v0, mKeymasterEncryptionPaddings:[I

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 453
    const v2, 0x20000006

    move-object/from16 v0, p0

    iget-object v15, v0, mKeymasterSignaturePaddings:[I

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 454
    const v2, 0x20000005

    move-object/from16 v0, p0

    iget-object v15, v0, mKeymasterDigests:[I

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v15

    invoke-static {v4, v2, v15}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    .line 459
    const v2, 0x60000190

    move-object/from16 v0, p0

    iget-object v15, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 460
    const v2, 0x60000191

    move-object/from16 v0, p0

    iget-object v15, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 462
    const v2, 0x60000192

    move-object/from16 v0, p0

    iget-object v15, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v4, v2, v15}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 464
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, mRng:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget v15, v0, mKeySizeBits:I

    add-int/lit8 v15, v15, 0x7

    div-int/lit8 v15, v15, 0x8

    invoke-static {v2, v15}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    .line 470
    .local v5, "additionalEntropy":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRPKEY_"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, mEntryAlias:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "privateKeyAlias":Ljava/lang/String;
    const/4 v14, 0x0

    .line 473
    .local v14, "success":Z
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v15, v0, mEntryAlias:Ljava/lang/String;

    invoke-static {v2, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 474
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 475
    .local v7, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v11

    .line 481
    .local v11, "errorCode":I
    const/4 v2, 0x1

    if-eq v11, v2, :cond_129

    .line 482
    new-instance v2, Ljava/security/ProviderException;

    const-string v15, "Failed to generate key pair"

    invoke-static {v11}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_118
    .catchall {:try_start_ef .. :try_end_118} :catchall_118

    .line 528
    .end local v7    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v11    # "errorCode":I
    :catchall_118
    move-exception v2

    if-nez v14, :cond_128

    .line 529
    move-object/from16 v0, p0

    iget-object v15, v0, mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v0, v0, mEntryAlias:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_128
    throw v2

    .line 488
    .restart local v7    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v11    # "errorCode":I
    :cond_129
    :try_start_129
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_130
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_129 .. :try_end_130} :catch_174
    .catchall {:try_start_129 .. :try_end_130} :catchall_118

    move-result-object v13

    .line 494
    .local v13, "result":Ljava/security/KeyPair;
    :try_start_131
    move-object/from16 v0, p0

    iget-object v2, v0, mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17d

    .line 495
    new-instance v2, Ljava/security/ProviderException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Generated key pair algorithm does not match requested algorithm: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " vs "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mJcaKeyAlgorithm:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    .end local v13    # "result":Ljava/security/KeyPair;
    :catch_174
    move-exception v10

    .line 491
    .local v10, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v15, "Failed to load generated key pair from keystore"

    invoke-direct {v2, v15, v10}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_17d
    .catchall {:try_start_131 .. :try_end_17d} :catchall_118

    .line 502
    .end local v10    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v13    # "result":Ljava/security/KeyPair;
    :cond_17d
    :try_start_17d
    invoke-virtual {v13}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v13}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_18a} :catch_1c5
    .catchall {:try_start_17d .. :try_end_18a} :catchall_118

    move-result-object v8

    .line 509
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    :try_start_18b
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_18e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18b .. :try_end_18e} :catch_1ce
    .catchall {:try_start_18b .. :try_end_18e} :catchall_118

    move-result-object v9

    .line 515
    .local v9, "certBytes":[B
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "USRCERT_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mEntryAlias:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v9, v0, v6}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v12

    .line 520
    .local v12, "insertErrorCode":I
    const/4 v2, 0x1

    if-eq v12, v2, :cond_1d7

    .line 521
    new-instance v2, Ljava/security/ProviderException;

    const-string v15, "Failed to store self-signed certificate"

    invoke-static {v12}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 503
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "certBytes":[B
    .end local v12    # "insertErrorCode":I
    :catch_1c5
    move-exception v10

    .line 504
    .local v10, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/ProviderException;

    const-string v15, "Failed to generate self-signed certificate"

    invoke-direct {v2, v15, v10}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 510
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    :catch_1ce
    move-exception v10

    .line 511
    .local v10, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v15, "Failed to obtain encoded form of self-signed certificate"

    invoke-direct {v2, v15, v10}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1d7
    .catchall {:try_start_18f .. :try_end_1d7} :catchall_118

    .line 525
    .end local v10    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v9    # "certBytes":[B
    .restart local v12    # "insertErrorCode":I
    :cond_1d7
    const/4 v14, 0x1

    .line 528
    if-nez v14, :cond_1e5

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v15, v0, mEntryAlias:Ljava/lang/String;

    invoke-static {v2, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_1e5
    return-object v13
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 21
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct/range {p0 .. p0}, resetAll()V

    .line 180
    const/4 v14, 0x0

    .line 182
    .local v14, "success":Z
    if-nez p1, :cond_3c

    .line 183
    :try_start_6
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Must supply params of type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " or "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_35

    .line 347
    :catchall_35
    move-exception v15

    if-nez v14, :cond_3b

    .line 348
    invoke-direct/range {p0 .. p0}, resetAll()V

    :cond_3b
    throw v15

    .line 189
    :cond_3c
    const/4 v4, 0x0

    .line 190
    .local v4, "encryptionAtRestRequired":Z
    :try_start_3d
    move-object/from16 v0, p0

    iget v7, v0, mOriginalKeymasterAlgorithm:I

    .line 191
    .local v7, "keymasterAlgorithm":I
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v15, :cond_92

    .line 192
    move-object/from16 v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v11, v0

    .line 285
    .local v11, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :goto_4c
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mEntryAlias:Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    iput-object v11, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 287
    move-object/from16 v0, p0

    iput v7, v0, mKeymasterAlgorithm:I

    .line 288
    move-object/from16 v0, p0

    iput-boolean v4, v0, mEncryptionAtRestRequired:Z

    .line 289
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, mKeySizeBits:I

    .line 290
    invoke-direct/range {p0 .. p0}, initAlgorithmSpecificParameters()V

    .line 291
    move-object/from16 v0, p0

    iget v15, v0, mKeySizeBits:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7d

    .line 292
    invoke-static {v7}, getDefaultKeySize(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, mKeySizeBits:I

    .line 294
    :cond_7d
    move-object/from16 v0, p0

    iget v15, v0, mKeySizeBits:I

    invoke-static {v7, v15}, checkValidKeySize(II)V

    .line 296
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_20c

    .line 297
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    const-string v16, "KeyStore entry alias not provided"

    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 193
    .end local v11    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_92
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v15, :cond_1cb

    .line 195
    move-object/from16 v0, p1

    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    move-object v9, v0
    :try_end_9d
    .catchall {:try_start_3d .. :try_end_9d} :catchall_35

    .line 198
    .local v9, "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    :try_start_9d
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_9d .. :try_end_a0} :catch_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a0} :catch_dc
    .catchall {:try_start_9d .. :try_end_a0} :catchall_35

    move-result-object v13

    .line 199
    .local v13, "specKeyAlgorithm":Ljava/lang/String;
    if-eqz v13, :cond_a7

    .line 202
    :try_start_a3
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_a6} :catch_d1
    .catch Ljava/lang/NullPointerException; {:try_start_a3 .. :try_end_a6} :catch_c9
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_35

    move-result v7

    .line 210
    :cond_a7
    packed-switch v7, :pswitch_data_2ee

    .line 256
    :pswitch_aa
    :try_start_aa
    new-instance v15, Ljava/security/ProviderException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported algorithm: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, mKeymasterAlgorithm:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_c9
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_c9} :catch_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_aa .. :try_end_c9} :catch_dc
    .catchall {:try_start_aa .. :try_end_c9} :catchall_35

    .line 275
    .end local v13    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_c9
    move-exception v15

    move-object v3, v15

    .line 276
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_cb
    :try_start_cb
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v15, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_35

    .line 205
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_d1
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_d2
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    const-string v16, "Invalid key type in parameters"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 275
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_dc
    move-exception v15

    move-object v3, v15

    goto :goto_cb

    .line 212
    .restart local v13    # "specKeyAlgorithm":Ljava/lang/String;
    :pswitch_df
    new-instance v12, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 218
    .local v12, "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "NONE"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "SHA-1"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "SHA-224"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "SHA-256"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "SHA-384"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "SHA-512"

    aput-object v17, v15, v16

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 260
    :goto_116
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_127

    .line 261
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 263
    :cond_127
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v15

    if-eqz v15, :cond_134

    .line 264
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 267
    :cond_134
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 268
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 269
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 270
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 271
    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->isEncryptionRequired()Z

    move-result v4

    .line 272
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 274
    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v11

    .restart local v11    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    goto/16 :goto_4c

    .line 227
    .end local v11    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v12    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :pswitch_15e
    new-instance v12, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v9}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 234
    .restart local v12    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "NONE"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "MD5"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "SHA-1"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "SHA-224"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "SHA-256"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "SHA-384"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "SHA-512"

    aput-object v17, v15, v16

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 244
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "NoPadding"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "PKCS1Padding"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "OAEPPadding"

    aput-object v17, v15, v16

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 248
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "PKCS1"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "PSS"

    aput-object v17, v15, v16

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 253
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_1c9
    .catch Ljava/lang/NullPointerException; {:try_start_d2 .. :try_end_1c9} :catch_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d2 .. :try_end_1c9} :catch_dc
    .catchall {:try_start_d2 .. :try_end_1c9} :catchall_35

    goto/16 :goto_116

    .line 279
    .end local v9    # "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    .end local v12    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v13    # "specKeyAlgorithm":Ljava/lang/String;
    :cond_1cb
    :try_start_1cb
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported params class: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Supported: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_20c
    .catchall {:try_start_1cb .. :try_end_20c} :catchall_35

    .line 302
    .restart local v11    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_20c
    :try_start_20c
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v15

    invoke-static {v15}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mKeymasterPurposes:[I

    .line 305
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mKeymasterBlockModes:[I

    .line 306
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mKeymasterEncryptionPaddings:[I

    .line 308
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v15

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_290

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v15

    if-eqz v15, :cond_290

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, mKeymasterEncryptionPaddings:[I

    .local v2, "arr$":[I
    array-length v10, v2

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_248
    if-ge v5, v10, :cond_290

    aget v8, v2, v5

    .line 311
    .local v8, "keymasterPadding":I
    invoke-static {v8}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v15

    if-nez v15, :cond_28d

    .line 314
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". See "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " documentation."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_285
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20c .. :try_end_285} :catch_285
    .catch Ljava/lang/IllegalStateException; {:try_start_20c .. :try_end_285} :catch_2ea
    .catchall {:try_start_20c .. :try_end_285} :catchall_35

    .line 338
    .end local v2    # "arr$":[I
    .end local v5    # "i$":I
    .end local v6    # "jcaKeyAlgorithm":Ljava/lang/String;
    .end local v8    # "keymasterPadding":I
    .end local v10    # "len$":I
    :catch_285
    move-exception v15

    move-object v3, v15

    .line 339
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_287
    :try_start_287
    new-instance v15, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v15, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_28d
    .catchall {:try_start_287 .. :try_end_28d} :catchall_35

    .line 310
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "arr$":[I
    .restart local v5    # "i$":I
    .restart local v6    # "jcaKeyAlgorithm":Ljava/lang/String;
    .restart local v8    # "keymasterPadding":I
    .restart local v10    # "len$":I
    :cond_28d
    add-int/lit8 v5, v5, 0x1

    goto :goto_248

    .line 324
    .end local v2    # "arr$":[I
    .end local v5    # "i$":I
    .end local v8    # "keymasterPadding":I
    .end local v10    # "len$":I
    :cond_290
    :try_start_290
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mKeymasterSignaturePaddings:[I

    .line 326
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v15

    if-eqz v15, :cond_2e3

    .line 327
    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mKeymasterDigests:[I

    .line 335
    :goto_2ae
    new-instance v15, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v15}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v17

    invoke-static/range {v15 .. v17}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    :try_end_2ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_290 .. :try_end_2ca} :catch_285
    .catch Ljava/lang/IllegalStateException; {:try_start_290 .. :try_end_2ca} :catch_2ea
    .catchall {:try_start_290 .. :try_end_2ca} :catchall_35

    .line 342
    :try_start_2ca
    move-object/from16 v0, p0

    iput-object v6, v0, mJcaKeyAlgorithm:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mRng:Ljava/security/SecureRandom;

    .line 344
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mKeyStore:Landroid/security/KeyStore;
    :try_end_2dc
    .catchall {:try_start_2ca .. :try_end_2dc} :catchall_35

    .line 345
    const/4 v14, 0x1

    .line 347
    if-nez v14, :cond_2e2

    .line 348
    invoke-direct/range {p0 .. p0}, resetAll()V

    .line 351
    :cond_2e2
    return-void

    .line 329
    :cond_2e3
    :try_start_2e3
    sget-object v15, Llibcore/util/EmptyArray;->INT:[I

    move-object/from16 v0, p0

    iput-object v15, v0, mKeymasterDigests:[I
    :try_end_2e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e3 .. :try_end_2e9} :catch_285
    .catch Ljava/lang/IllegalStateException; {:try_start_2e3 .. :try_end_2e9} :catch_2ea
    .catchall {:try_start_2e3 .. :try_end_2e9} :catchall_35

    goto :goto_2ae

    .line 338
    .end local v6    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_2ea
    move-exception v15

    move-object v3, v15

    goto :goto_287

    .line 210
    nop

    :pswitch_data_2ee
    .packed-switch 0x1
        :pswitch_15e
        :pswitch_aa
        :pswitch_df
    .end packed-switch
.end method
