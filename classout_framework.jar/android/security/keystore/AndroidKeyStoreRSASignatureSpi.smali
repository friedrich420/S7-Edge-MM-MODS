.class abstract Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;
.super Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PSSPadding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding;,
        Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PKCS1Padding;
    }
.end annotation


# instance fields
.field private final mKeymasterDigest:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "keymasterDigest"    # I
    .param p2, "keymasterPadding"    # I

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;-><init>()V

    .line 134
    iput p1, p0, mKeymasterDigest:I

    .line 135
    iput p2, p0, mKeymasterPadding:I

    .line 136
    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 4
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    .line 160
    const v0, 0x10000002

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 161
    const v0, 0x20000005

    iget v1, p0, mKeymasterDigest:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 162
    const v0, 0x20000006

    iget v1, p0, mKeymasterPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 163
    return-void
.end method

.method protected final initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .registers 5
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v0, "RSA"

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 141
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3b
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    .line 145
    return-void
.end method

.method protected final resetAll()V
    .registers 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 150
    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .registers 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    .line 155
    return-void
.end method
