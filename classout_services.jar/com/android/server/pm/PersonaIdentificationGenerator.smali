.class public Lcom/android/server/pm/PersonaIdentificationGenerator;
.super Ljava/lang/Object;
.source "PersonaIdentificationGenerator.java"


# static fields
.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/data/idkey"

.field private static final TAG:Ljava/lang/String; = "PersonaIdentificationGenerator"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "uniqueIdKey"

.field private static final VERSION:Ljava/lang/String; = "01"


# instance fields
.field private final mCryptoScheme:Ljava/lang/String;

.field private final mDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "cryptoScheme"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_e

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "need to provide a valid crypto scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_e
    :try_start_e
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, mDigest:Ljava/security/MessageDigest;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_16} :catch_19

    .line 60
    iput-object p1, p0, mCryptoScheme:Ljava/lang/String;

    .line 61
    return-void

    .line 56
    :catch_19
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get hash checksum provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "plain"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, getKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 105
    .local v3, "key":Ljavax/crypto/SecretKey;
    if-eqz v3, :cond_1e

    .line 106
    iget-object v4, p0, mCryptoScheme:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 107
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 109
    .local v2, "encryptedBytes":[B
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 111
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encryptedBytes":[B
    :cond_1e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "missing key for persona id encryption"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_27} :catch_27
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_27} :catch_31
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_27} :catch_3b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_27} :catch_45
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_27} :catch_4e

    .line 113
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    :catch_27
    move-exception v1

    .line 114
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "missing encryption algorithm"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 115
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_31
    move-exception v1

    .line 116
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "invalid key"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 117
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3b
    move-exception v1

    .line 118
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "illegal block size"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 119
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_45
    move-exception v1

    .line 120
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "bad padding exception"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4e
    move-exception v1

    .line 122
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "missing padding scheme"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getChecksum(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 93
    iget-object v0, p0, mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljavax/crypto/SecretKey;
    .registers 19

    .prologue
    .line 132
    const/4 v6, 0x0

    .line 133
    .local v6, "in":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 136
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 137
    .local v10, "mKeyStore":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/File;

    const-string v13, "/data/idkey"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_c1
    .catchall {:try_start_2 .. :try_end_11} :catchall_f7

    .line 140
    .local v3, "file":Ljava/io/File;
    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_59

    .line 141
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .local v12, "out":Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 150
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :goto_1e
    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_79
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_c1
    .catchall {:try_start_11 .. :try_end_22} :catchall_f7

    .line 173
    :goto_22
    :try_start_22
    const-string/jumbo v13, "uniqueIdKey"

    invoke-virtual {v10, v13}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d6

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, mCryptoScheme:Ljava/lang/String;

    invoke-static {v13}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 175
    .local v4, "generator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 177
    .local v8, "key":Ljavax/crypto/SecretKey;
    new-instance v9, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v9, v8}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 178
    .local v9, "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    const-string/jumbo v13, "uniqueIdKey"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v9, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 180
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 181
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 186
    .end local v4    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v8    # "key":Ljavax/crypto/SecretKey;
    :goto_4a
    invoke-virtual {v9}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4d} :catch_c1
    .catchall {:try_start_22 .. :try_end_4d} :catchall_f7

    move-result-object v13

    .line 191
    if-eqz v6, :cond_53

    .line 192
    :try_start_50
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_53
    if-eqz v11, :cond_58

    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_e2

    .line 203
    .end local v3    # "file":Ljava/io/File;
    .end local v9    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v10    # "mKeyStore":Ljava/security/KeyStore;
    :cond_58
    :goto_58
    return-object v13

    .line 143
    .restart local v3    # "file":Ljava/io/File;
    .restart local v10    # "mKeyStore":Ljava/security/KeyStore;
    :cond_59
    :try_start_59
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_72

    .line 144
    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "Creating key file again..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_1e

    .line 147
    :cond_72
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_77} :catch_79
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_77} :catch_c1
    .catchall {:try_start_59 .. :try_end_77} :catchall_f7

    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto :goto_1e

    .line 151
    :catch_79
    move-exception v5

    .line 152
    .local v5, "ie":Ljava/io/IOException;
    :try_start_7a
    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "io exception when getting key, removing file"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    if-eqz v11, :cond_113

    .line 155
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_87} :catch_c1
    .catchall {:try_start_7a .. :try_end_87} :catchall_f7

    .line 156
    const/4 v11, 0x0

    move-object v12, v11

    .line 158
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :goto_89
    if-eqz v6, :cond_8f

    .line 159
    :try_start_8b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 160
    const/4 v6, 0x0

    .line 163
    :cond_8f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_b4

    .line 164
    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "failed to delete file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9d} :catch_110
    .catchall {:try_start_8b .. :try_end_9d} :catchall_10d

    .line 165
    const/4 v13, 0x0

    .line 191
    if-eqz v6, :cond_a3

    .line 192
    :try_start_a0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_a3
    if-eqz v12, :cond_a8

    .line 196
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a8} :catch_aa

    :cond_a8
    :goto_a8
    move-object v11, v12

    .line 200
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_58

    .line 198
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_aa
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :cond_b4
    :try_start_b4
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v11, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_ba} :catch_110
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_10d

    .line 169
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_bc
    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c1
    .catchall {:try_start_bc .. :try_end_bf} :catchall_f7

    goto/16 :goto_22

    .line 187
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v10    # "mKeyStore":Ljava/security/KeyStore;
    :catch_c1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    :goto_c2
    :try_start_c2
    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "failed to get secret key"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_f7

    .line 191
    if-eqz v6, :cond_cf

    .line 192
    :try_start_cc
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_cf
    if-eqz v11, :cond_d4

    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_ed

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d4
    :goto_d4
    const/4 v13, 0x0

    goto :goto_58

    .line 183
    .restart local v3    # "file":Ljava/io/File;
    .restart local v10    # "mKeyStore":Ljava/security/KeyStore;
    :cond_d6
    :try_start_d6
    const-string/jumbo v13, "uniqueIdKey"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v9

    check-cast v9, Ljava/security/KeyStore$SecretKeyEntry;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e0} :catch_c1
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_f7

    .restart local v9    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    goto/16 :goto_4a

    .line 198
    :catch_e2
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 198
    .end local v3    # "file":Ljava/io/File;
    .end local v9    # "keyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v10    # "mKeyStore":Ljava/security/KeyStore;
    .local v2, "e":Ljava/lang/Exception;
    :catch_ed
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "failed to close IO"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_f7
    move-exception v13

    .line 191
    :goto_f8
    if-eqz v6, :cond_fd

    .line 192
    :try_start_fa
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 195
    :cond_fd
    if-eqz v11, :cond_102

    .line 196
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_102} :catch_103

    .line 200
    :cond_102
    :goto_102
    throw v13

    .line 198
    :catch_103
    move-exception v2

    .line 199
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "ie":Ljava/io/IOException;
    .restart local v10    # "mKeyStore":Ljava/security/KeyStore;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catchall_10d
    move-exception v13

    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_f8

    .line 187
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_110
    move-exception v2

    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_c2

    :cond_113
    move-object v12, v11

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_89
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "01"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "plainText":Ljava/lang/String;
    invoke-direct {p0, v1}, encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
