.class abstract Landroid/security/keystore/KeyStoreCryptoOperationUtils;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationUtils.java"


# static fields
.field private static volatile sRng:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;
    .registers 5
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .param p2, "beginOpResultCode"    # I

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 77
    const/4 v0, 0x0

    .line 89
    :goto_4
    return-object v0

    .line 81
    :cond_5
    packed-switch p2, :pswitch_data_1e

    .line 89
    :pswitch_8
    invoke-static {p0, p1, p2}, getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v0

    goto :goto_4

    .line 83
    :pswitch_d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 85
    :pswitch_15
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Caller-provided IV not permitted"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 81
    nop

    :pswitch_data_1e
    .packed-switch -0x37
        :pswitch_15
        :pswitch_8
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method static getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;
    .registers 6
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .param p2, "beginOpResultCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    move-object v0, v1

    .line 66
    :cond_5
    :goto_5
    return-object v0

    .line 53
    :cond_6
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    move-result-object v0

    .line 55
    .local v0, "e":Ljava/security/InvalidKeyException;
    packed-switch p2, :pswitch_data_18

    goto :goto_5

    .line 61
    :pswitch_12
    instance-of v2, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 62
    goto :goto_5

    .line 55
    :pswitch_data_18
    .packed-switch 0xf
        :pswitch_12
    .end packed-switch
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .registers 3
    .param p0, "rng"    # Ljava/security/SecureRandom;
    .param p1, "sizeBytes"    # I

    .prologue
    .line 99
    if-gtz p1, :cond_5

    .line 100
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 107
    :goto_4
    return-object v0

    .line 102
    :cond_5
    if-nez p0, :cond_b

    .line 103
    invoke-static {}, getRng()Ljava/security/SecureRandom;

    move-result-object p0

    .line 105
    :cond_b
    new-array v0, p1, [B

    .line 106
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_4
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .registers 1

    .prologue
    .line 113
    sget-object v0, sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, sRng:Ljava/security/SecureRandom;

    .line 116
    :cond_b
    sget-object v0, sRng:Ljava/security/SecureRandom;

    return-object v0
.end method
