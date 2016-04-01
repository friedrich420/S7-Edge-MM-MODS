.class public Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;


# instance fields
.field private final mModulus:Ljava/math/BigInteger;

.field private final mPublicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 39
    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, <init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 40
    const-string v0, "X.509"

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key export format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B
    .param p3, "modulus"    # Ljava/math/BigInteger;
    .param p4, "publicExponent"    # Ljava/math/BigInteger;

    .prologue
    .line 33
    const-string v0, "RSA"

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 34
    iput-object p3, p0, mModulus:Ljava/math/BigInteger;

    .line 35
    iput-object p4, p0, mPublicExponent:Ljava/math/BigInteger;

    .line 36
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, mModulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mPublicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
