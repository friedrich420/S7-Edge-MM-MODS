.class public Lcom/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;
.super Ljava/lang/Object;
.source "SamsungAccountValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/SamsungAccountValidationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AESCrypto"
.end annotation


# static fields
.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->iv:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        -0x4bt
        0x1t
        0x45t
        -0x1ct
        -0x8t
        0x75t
        0x3ft
        0x8t
        -0x63t
        -0x61t
        0x57t
        0x3bt
        0x63t
        -0x11t
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .param p0, "keyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 193
    .local v0, "digester":Ljava/security/MessageDigest;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 194
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 195
    .local v1, "gigest":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 196
    .local v2, "spec":Ljavax/crypto/spec/SecretKeySpec;
    return-object v2
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v6, 0x0

    .line 222
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 224
    .local v2, "inp":[B
    if-eqz v2, :cond_0

    .line 225
    invoke-static {p0}, Lcom/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->buildKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    .line 226
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->iv:[B

    invoke-direct {v3, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 227
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 228
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 229
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 230
    .local v5, "output":[B
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "result":Ljava/lang/String;
    .local v7, "result":Ljava/lang/String;
    move-object v6, v7

    .line 235
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "inp":[B
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "output":[B
    .end local v7    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v5, 0x0

    .line 204
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->buildKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    .line 205
    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v7, Lcom/android/settings/fmm/SamsungAccountValidationActivity$AESCrypto;->iv:[B

    invoke-direct {v2, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 206
    .local v2, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 207
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 208
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 209
    .local v4, "output":[B
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    move-object v5, v6

    .line 215
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "output":[B
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
