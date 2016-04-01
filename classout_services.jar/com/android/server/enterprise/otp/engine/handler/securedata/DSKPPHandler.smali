.class public Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPHandler;
.super Ljava/lang/Object;
.source "DSKPPHandler.java"


# static fields
.field private static final DSKPP_NONCE_LEN:I = 0x8

.field private static final DSKPP_PRF_SHA256_DESIRED_OUTPUT_LENGTH:I = 0x10

.field private static final PBKDF2_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PBKDF2_DERIVED_KEY_LENGTH:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMAC([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 11
    .param p0, "k_ac"    # [B
    .param p1, "client_id"    # Ljava/lang/String;
    .param p2, "url_s"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "dsLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 101
    .local v0, "client_id_bytes":[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 102
    .local v4, "url_s_bytes":[B
    invoke-static {p3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->base64ToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 105
    .local v2, "nonce_bytes":[B
    invoke-static {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v3

    .line 109
    .local v3, "s":[B
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->toBytes(I)[B

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->encode([B[B)[B

    move-result-object v1

    .line 111
    .local v1, "macBytes":[B
    const/4 v5, 0x0

    invoke-static {v1, v5, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    return-object v5
.end method

.method public static generateNonce()[B
    .registers 3

    .prologue
    .line 115
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 116
    .local v1, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 117
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 118
    return-object v0
.end method

.method public static keyProvClientHello(Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;[B)Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .registers 14
    .param p0, "trigger"    # Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;
    .param p1, "pubKey"    # [B

    .prologue
    const/4 v11, 0x0

    .line 29
    if-eqz p0, :cond_5

    if-nez p1, :cond_12

    .line 30
    :cond_5
    const-string v7, "DSKPPHandler::keyProvClientHello : invalid input"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 31
    new-instance v5, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    const/16 v7, 0x401

    invoke-direct {v5, v11, v11, v7}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;-><init>([B[BI)V

    .line 61
    :goto_11
    return-object v5

    .line 34
    :cond_12
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 37
    .local v4, "passwdCharArr":[C
    invoke-static {}, generateNonce()[B

    move-result-object v3

    .line 39
    .local v3, "nonceByteArr":[B
    const/4 v5, 0x0

    .line 42
    .local v5, "result":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    :try_start_1f
    invoke-static {v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/securedata/DSKPPUtils;->mergeByteArray([B[B)[B

    move-result-object v6

    .line 44
    .local v6, "salt":[B
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getnIterationCount()I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v4, v6, v7, v8}, pbkdf2([C[BII)[B

    move-result-object v1

    .line 47
    .local v1, "k_ac":[B
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvTrigger;->getServerUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v1, v7, v8, v9, v10}, calculateMAC([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    .line 51
    .local v2, "macBytes":[B
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAC(Base64 encoded) : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    new-instance v5, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    .end local v5    # "result":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    const/4 v7, 0x0

    invoke-direct {v5, v2, v3, v7}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;-><init>([B[BI)V
    :try_end_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f .. :try_end_6e} :catch_6f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1f .. :try_end_6e} :catch_81
    .catch Ljava/security/InvalidKeyException; {:try_start_1f .. :try_end_6e} :catch_7f

    .restart local v5    # "result":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    goto :goto_11

    .line 56
    .end local v1    # "k_ac":[B
    .end local v2    # "macBytes":[B
    .end local v5    # "result":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    .end local v6    # "salt":[B
    :catch_6f
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_70
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 58
    new-instance v5, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;

    const/16 v7, 0x4ff

    invoke-direct {v5, v11, v11, v7}, Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;-><init>([B[BI)V

    .restart local v5    # "result":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    goto :goto_11

    .line 56
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v5    # "result":Lcom/sec/enterprise/knox/otp/dskpp/DSKPPKeyProvClientHello;
    :catch_7f
    move-exception v0

    goto :goto_70

    :catch_81
    move-exception v0

    goto :goto_70
.end method

.method private static parsePublicKey([B)[B
    .registers 5
    .param p0, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 123
    .local v2, "f":Ljava/io/InputStream;
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 124
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 126
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private static pbkdf2([C[BII)[B
    .registers 7
    .param p0, "password"    # [C
    .param p1, "salt"    # [B
    .param p2, "iterations"    # I
    .param p3, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 89
    .local v0, "skf":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    mul-int/lit8 v2, p3, 0x8

    invoke-direct {v1, p0, p1, p2, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 90
    .local v1, "spec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    return-object v2
.end method
