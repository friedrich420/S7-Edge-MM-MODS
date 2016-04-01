.class Lcom/android/server/enterprise/certificate/EdmKeyStore;
.super Ljava/lang/Object;
.source "EdmKeyStore.java"


# static fields
.field public static final ALIAS_USERID_SEPARATOR:Ljava/lang/String; = "_"

.field private static final NATIVE_KEYSTORE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EdmKeyStore"

.field private static final TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field static final TYPE_NATIVE:I = 0x2

.field static final TYPE_TRUSTED:I = 0x0

.field static final TYPE_UNTRUSTED:I = 0x3

.field static final TYPE_USER:I = 0x1

.field private static final UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field private static final USER_KEYSTORE_PATH:Ljava/lang/String;

.field private static mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private static mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# instance fields
.field private mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mKeyStoreLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_cacerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_untrustedcerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_usercerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, USER_KEYSTORE_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "enterprise_nativecerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, mKeyStoreLock:Ljava/lang/Object;

    .line 153
    new-instance v6, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v6, p0, mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 154
    iput-object p1, p0, mPath:Ljava/lang/String;

    .line 155
    iput p2, p0, mType:I

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 159
    .local v4, "fos":Ljava/io/FileOutputStream;
    iget-object v7, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v7

    .line 162
    :try_start_1a
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, mKeyStore:Ljava/security/KeyStore;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_83

    .line 164
    :try_start_22
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_45
    .catchall {:try_start_22 .. :try_end_27} :catchall_7c

    .line 165
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_27
    iget-object v6, p0, mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_a7
    .catchall {:try_start_27 .. :try_end_2d} :catchall_9d

    .line 179
    if-eqz v4, :cond_ae

    .line 181
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3a
    .catchall {:try_start_2f .. :try_end_32} :catchall_97

    move-object v2, v3

    .line 188
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_33
    if-eqz v2, :cond_38

    .line 189
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 192
    :cond_38
    monitor-exit v7
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_8a

    .line 193
    return-void

    .line 182
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3a
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3b
    const-string v6, "EdmKeyStore"

    const-string/jumbo v8, "fos close failed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_97

    move-object v2, v3

    .line 184
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_33

    .line 166
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    :goto_46
    if-eqz v2, :cond_ac

    .line 168
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_7c

    .line 169
    const/4 v2, 0x0

    move-object v3, v2

    .line 173
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_4d
    :try_start_4d
    iget-object v6, p0, mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 174
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_9d

    .line 175
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_59
    iget-object v6, p0, mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 176
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_a0

    .line 177
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_64
    iget-object v6, p0, mKeyStore:Ljava/security/KeyStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_a4

    .line 179
    if-eqz v5, :cond_aa

    .line 181
    :try_start_6c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_71
    .catchall {:try_start_6c .. :try_end_6f} :catchall_9a

    move-object v4, v5

    .line 184
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_33

    .line 182
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_71
    move-exception v1

    .line 183
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_72
    const-string v6, "EdmKeyStore"

    const-string/jumbo v8, "fos close failed"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_9a

    move-object v4, v5

    .line 184
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_33

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_7c
    move-exception v6

    :goto_7d
    if-eqz v4, :cond_82

    .line 181
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8d
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    .line 184
    :cond_82
    :goto_82
    :try_start_82
    throw v6
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    .line 188
    :catchall_83
    move-exception v6

    :goto_84
    if-eqz v2, :cond_89

    .line 189
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_89
    throw v6

    .line 192
    :catchall_8a
    move-exception v6

    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    throw v6

    .line 182
    :catch_8d
    move-exception v1

    .line 183
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_8e
    const-string v8, "EdmKeyStore"

    const-string/jumbo v9, "fos close failed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_83

    goto :goto_82

    .line 188
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_97
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_84

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_9a
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_84

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_9d
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7d

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_a0
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7d

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_a4
    move-exception v6

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7d

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_46

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_aa
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_33

    :cond_ac
    move-object v3, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4d

    .end local v0    # "e":Ljava/io/IOException;
    :cond_ae
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_33
.end method

.method private addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p0, "cert1"    # Ljava/security/cert/X509Certificate;
    .param p1, "cert2"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 555
    const/4 v1, 0x0

    .line 557
    .local v1, "result":Z
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 558
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_10
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_10} :catch_12

    move-result v1

    .line 563
    :cond_11
    :goto_11
    return v1

    .line 560
    :catch_12
    move-exception v0

    .line 561
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private changeAlias(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "oldAlias"    # Ljava/lang/String;
    .param p2, "newAlias"    # Ljava/lang/String;

    .prologue
    .line 688
    :try_start_0
    iget-object v2, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 689
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_12
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_12} :catch_13

    .line 694
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_12
    return-void

    .line 691
    :catch_13
    move-exception v1

    .line 692
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private findCertificateOrIssuer(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Ljava/security/cert/X509Certificate;
    .registers 19
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "userId"    # I
    .param p4, "containerOwner"    # I

    .prologue
    .line 397
    const/4 v6, 0x0

    .line 400
    .local v6, "ca":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v11, v0, v1}, generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;

    move-result-object v4

    .line 402
    .local v4, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    .local v2, "alias":Ljava/lang/String;
    iget-object v11, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v11, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 404
    if-eqz v6, :cond_11

    move-object/from16 v0, p2

    invoke-static {v6, v0}, areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_11

    move-object v11, v6

    .line 434
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_32
    return-object v11

    .line 410
    .restart local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v11, v0, v1}, generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;

    move-result-object v10

    .line 412
    .local v10, "issuerAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 413
    .local v9, "issuerAlias":Ljava/lang/String;
    iget-object v11, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v11, v9}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 414
    if-eqz v6, :cond_43

    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-eqz v11, :cond_43

    move-object v11, v6

    .line 415
    goto :goto_32

    .line 420
    .end local v9    # "issuerAlias":Ljava/lang/String;
    :cond_65
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v0, v1}, getAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;II)Ljava/util/List;

    move-result-object v5

    .line 421
    .local v5, "aliasesForKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_71
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 422
    .local v3, "alias2":Ljava/lang/String;
    iget-object v11, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v11, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 423
    if-eqz v6, :cond_71

    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v11

    if-nez v11, :cond_99

    move-object/from16 v0, p2

    invoke-static {v6, v0}, areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    :try_end_96
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_96} :catch_9b

    move-result v11

    if-eqz v11, :cond_71

    :cond_99
    move-object v11, v6

    .line 425
    goto :goto_32

    .line 429
    .end local v3    # "alias2":Ljava/lang/String;
    .end local v4    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "aliasesForKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "issuerAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_9b
    move-exception v7

    .line 430
    .local v7, "e":Ljava/security/KeyStoreException;
    const-string v11, "EdmKeyStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "get error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v6, 0x0

    .line 434
    .end local v7    # "e":Ljava/security/KeyStoreException;
    :cond_b6
    const/4 v11, 0x0

    goto/16 :goto_32
.end method

.method private generateAlias(Ljava/security/cert/X509Certificate;I)Ljava/lang/String;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "userId"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1}, generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 5
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 314
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 315
    .local v0, "hash":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateAlias(Ljavax/security/auth/x500/X500Principal;I)Ljava/lang/String;
    .registers 4
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "userId"    # I

    .prologue
    .line 323
    invoke-direct {p0, p1}, generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;
    .registers 9
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "userId"    # I
    .param p4, "containerOwner"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificateCache;",
            "Ljavax/security/auth/x500/X500Principal;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v0, p3}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-static {p3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 335
    invoke-direct {p0, p1, v0, p4}, isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 336
    invoke-direct {p0, v0, v3}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_24
    :goto_24
    return-object v1

    .line 338
    :cond_25
    if-eqz p3, :cond_24

    .line 340
    invoke-direct {p0, v0, v3}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method private getAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;II)Ljava/util/List;
    .registers 12
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "userId"    # I
    .param p3, "containerOwner"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificateCache;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    .line 572
    .local v3, "isContainer":Z
    :try_start_9
    iget-object v5, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 573
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 574
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    .local v0, "alias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 577
    if-eqz v3, :cond_5f

    .line 579
    invoke-direct {p0, p1, v0, p3}, isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 580
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_44} :catch_45

    goto :goto_f

    .line 590
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_45
    move-exception v2

    .line 591
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :cond_5e
    return-object v4

    .line 583
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5f
    :try_start_5f
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 585
    :cond_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz p2, :cond_f

    .line 587
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/security/KeyStoreException; {:try_start_5f .. :try_end_85} :catch_45

    goto :goto_f
.end method

.method private static getAuthorityKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    .registers 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 512
    const-string v3, "2.5.29.35"

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 513
    .local v0, "akidBytes":[B
    if-nez v0, :cond_a

    .line 520
    :goto_9
    return-object v2

    .line 518
    :cond_a
    :try_start_a
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    .line 519
    :catch_f
    move-exception v1

    .line 520
    .local v1, "e":Ljava/io/IOException;
    goto :goto_9
.end method

.method static declared-synchronized getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 5
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    const-class v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    monitor-enter v2

    if-nez p0, :cond_26

    .line 107
    :try_start_6
    sget-object v1, mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_23

    if-nez v1, :cond_13

    .line 109
    :try_start_a
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, <init>(Ljava/lang/String;I)V

    sput-object v1, mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_17
    .catchall {:try_start_a .. :try_end_13} :catchall_23

    .line 115
    :cond_13
    :goto_13
    :try_start_13
    sget-object v1, mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_23

    .line 147
    :cond_15
    :goto_15
    monitor-exit v2

    return-object v1

    .line 110
    :catch_17
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :try_start_18
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/4 v1, 0x0

    sput-object v1, mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    goto :goto_13

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 116
    :cond_26
    const/4 v3, 0x1

    if-ne p0, v3, :cond_45

    .line 117
    :try_start_29
    sget-object v1, mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_23

    if-nez v1, :cond_36

    .line 119
    :try_start_2d
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, USER_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, <init>(Ljava/lang/String;I)V

    sput-object v1, mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_39
    .catchall {:try_start_2d .. :try_end_36} :catchall_23

    .line 125
    :cond_36
    :goto_36
    :try_start_36
    sget-object v1, mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    .line 120
    :catch_39
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v1, 0x0

    sput-object v1, mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_36

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_45
    const/4 v3, 0x2

    if-ne p0, v3, :cond_64

    .line 127
    sget-object v1, mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_23

    if-nez v1, :cond_55

    .line 129
    :try_start_4c
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, <init>(Ljava/lang/String;I)V

    sput-object v1, mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_58
    .catchall {:try_start_4c .. :try_end_55} :catchall_23

    .line 135
    :cond_55
    :goto_55
    :try_start_55
    sget-object v1, mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    .line 130
    :catch_58
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const/4 v1, 0x0

    sput-object v1, mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_55

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    const/4 v3, 0x3

    if-ne p0, v3, :cond_15

    .line 137
    sget-object v1, mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_23

    if-nez v1, :cond_74

    .line 139
    :try_start_6b
    new-instance v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p0}, <init>(Ljava/lang/String;I)V

    sput-object v1, mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_77
    .catchall {:try_start_6b .. :try_end_74} :catchall_23

    .line 145
    :cond_74
    :goto_74
    :try_start_74
    sget-object v1, mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    goto :goto_15

    .line 140
    :catch_77
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EdmKeyStore"

    const-string v3, "Should not happen! "

    invoke-static {v1, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    const/4 v1, 0x0

    sput-object v1, mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_23

    goto :goto_74
.end method

.method private static getSubjectKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    .registers 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 528
    const-string v3, "2.5.29.14"

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 529
    .local v1, "skidBytes":[B
    if-nez v1, :cond_a

    .line 536
    :goto_9
    return-object v2

    .line 534
    :cond_a
    :try_start_a
    invoke-static {v1}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    .line 535
    :catch_f
    move-exception v0

    .line 536
    .local v0, "e":Ljava/io/IOException;
    goto :goto_9
.end method

.method static isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 542
    :try_start_1
    const-string v4, "2.5.29.19"

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 543
    .local v0, "basicConstraints":[B
    if-nez v0, :cond_a

    .line 550
    .end local v0    # "basicConstraints":[B
    :goto_9
    return v3

    .line 545
    .restart local v0    # "basicConstraints":[B
    :cond_a
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 546
    .local v2, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .end local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    .line 547
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 548
    .restart local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result v3

    goto :goto_9

    .line 549
    .end local v0    # "basicConstraints":[B
    :catch_2d
    move-exception v1

    .line 550
    .local v1, "e":Ljava/io/IOException;
    goto :goto_9
.end method

.method private isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "containerOwner"    # I

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->isInAdminList(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSelfSigned(Ljava/security/cert/X509Certificate;)Z
    .registers 14
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v11, 0x0

    .line 458
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    move v10, v11

    .line 505
    :goto_10
    return v10

    .line 462
    :cond_11
    invoke-static {p0}, getAuthorityKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    .line 463
    .local v0, "akid":Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    if-eqz v0, :cond_90

    .line 464
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v1

    .line 465
    .local v1, "akidKeyId":[B
    if-eqz v1, :cond_2f

    .line 466
    invoke-static {p0}, getSubjectKeyIdentifier(Ljava/security/cert/X509Certificate;)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v8

    .line 467
    .local v8, "skid":Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    if-eqz v8, :cond_2f

    invoke-virtual {v8}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v10

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_2f

    move v10, v11

    .line 468
    goto :goto_10

    .line 472
    .end local v8    # "skid":Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;
    :cond_2f
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 473
    .local v2, "akidSerial":Ljava/math/BigInteger;
    if-eqz v2, :cond_41

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_41

    move v10, v11

    .line 474
    goto :goto_10

    .line 477
    :cond_41
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v6

    .line 478
    .local v6, "possibleIssuerNames":Lorg/apache/harmony/security/x509/GeneralNames;
    if-eqz v6, :cond_90

    .line 479
    const/4 v5, 0x0

    .line 482
    .local v5, "issuerName":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/security/x509/GeneralName;

    .line 483
    .local v7, "possibleName":Lorg/apache/harmony/security/x509/GeneralName;
    if-eqz v7, :cond_50

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_50

    .line 484
    move-object v5, v7

    .line 489
    .end local v7    # "possibleName":Lorg/apache/harmony/security/x509/GeneralName;
    :cond_66
    if-eqz v5, :cond_90

    .line 490
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/harmony/security/x501/Name;

    const-string v12, "CANONICAL"

    invoke-virtual {v10, v12}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "issuerCanonical":Ljava/lang/String;
    :try_start_74
    new-instance v10, Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v12, "CANONICAL"

    invoke-virtual {v10, v12}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, "subjectCanonical":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_8a} :catch_8f

    move-result v10

    if-nez v10, :cond_90

    move v10, v11

    .line 497
    goto :goto_10

    .line 499
    .end local v9    # "subjectCanonical":Ljava/lang/String;
    :catch_8f
    move-exception v10

    .line 505
    .end local v1    # "akidKeyId":[B
    .end local v2    # "akidSerial":Ljava/math/BigInteger;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "issuerCanonical":Ljava/lang/String;
    .end local v5    # "issuerName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v6    # "possibleIssuerNames":Lorg/apache/harmony/security/x509/GeneralNames;
    :cond_90
    const/4 v10, 0x1

    goto/16 :goto_10
.end method

.method private matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 444
    .local v1, "result":Z
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 445
    :try_start_5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 446
    const/4 v1, 0x1

    .line 451
    :cond_d
    :goto_d
    return v1

    .line 448
    :catch_e
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private removeUserIdFromAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 602
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 604
    .end local p1    # "alias":Ljava/lang/String;
    :goto_9
    return-object p1

    .restart local p1    # "alias":Ljava/lang/String;
    :cond_a
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method private saveKeyStore()V
    .registers 9

    .prologue
    .line 286
    iget-object v5, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5

    .line 287
    const/4 v2, 0x0

    .line 289
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_24
    .catchall {:try_start_4 .. :try_end_b} :catchall_51

    .line 290
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    iget-object v4, p0, mKeyStore:Ljava/security/KeyStore;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_68
    .catchall {:try_start_b .. :try_end_11} :catchall_65

    .line 294
    if-eqz v3, :cond_6b

    .line 296
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_62

    move-object v2, v3

    .line 302
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_4e

    .line 303
    return-void

    .line 297
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_19
    move-exception v1

    .line 298
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1a
    const-string v4, "EdmKeyStore"

    const-string/jumbo v6, "fos close failed"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_62

    move-object v2, v3

    .line 299
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_17

    .line 291
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :goto_25
    :try_start_25
    const-string v4, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_51

    .line 294
    if-eqz v2, :cond_17

    .line 296
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    goto :goto_17

    .line 297
    :catch_44
    move-exception v1

    .line 298
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_45
    const-string v4, "EdmKeyStore"

    const-string/jumbo v6, "fos close failed"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_4e
    move-exception v4

    :goto_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_4e

    throw v4

    .line 294
    :catchall_51
    move-exception v4

    :goto_52
    if-eqz v2, :cond_57

    .line 296
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_4e

    .line 299
    :cond_57
    :goto_57
    :try_start_57
    throw v4

    .line 297
    :catch_58
    move-exception v1

    .line 298
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v6, "EdmKeyStore"

    const-string/jumbo v7, "fos close failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_4e

    goto :goto_57

    .line 302
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_62
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4f

    .line 294
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_65
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_52

    .line 291
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_68
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_25

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_6b
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_17
.end method


# virtual methods
.method public cleanUid(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, getAliases()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 715
    .local v0, "alias":Ljava/lang/String;
    :try_start_19
    iget-object v5, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_3f

    .line 716
    :try_start_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 717
    iget-object v4, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 719
    :cond_3a
    monitor-exit v5

    goto :goto_d

    :catchall_3c
    move-exception v4

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v4
    :try_end_3f
    .catch Ljava/security/KeyStoreException; {:try_start_3e .. :try_end_3f} :catch_3f

    .line 720
    :catch_3f
    move-exception v1

    .line 721
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v4, "EdmKeyStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with keystore "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 724
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :cond_59
    invoke-direct {p0}, saveKeyStore()V

    .line 725
    return-object v3
.end method

.method containsCertificateOrChain(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z
    .registers 8
    .param p1, "cache"    # Lcom/android/server/enterprise/certificate/CertificateCache;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "userId"    # I
    .param p4, "containerOwner"    # I

    .prologue
    .line 367
    if-eqz p2, :cond_3b

    iget-object v1, p0, mPath:Ljava/lang/String;

    sget-object v2, TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, mPath:Ljava/lang/String;

    sget-object v2, UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 370
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, findCertificateOrIssuer(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 372
    const/4 v1, 0x1

    .line 387
    :goto_1d
    return v1

    .line 376
    :cond_1e
    iget-object v1, p0, mPath:Ljava/lang/String;

    sget-object v2, TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p2}, isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 378
    iget-object v1, p0, mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 379
    .local v0, "aux":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_3b

    .line 381
    invoke-virtual {p0, p1, v0, p3, p4}, containsCertificateOrChain(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v1

    goto :goto_1d

    .line 387
    .end local v0    # "aux":Ljava/security/cert/X509Certificate;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, v0}, generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliases()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v3, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 702
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 703
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_b

    .line 705
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_19
    move-exception v1

    .line 706
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v3, "EdmKeyStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with keystore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :cond_32
    return-object v2
.end method

.method getCertificates(Ljava/util/List;I)Ljava/util/Map;
    .registers 12
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v4, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, "alias":Ljava/lang/String;
    :try_start_15
    iget-object v7, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_2e

    .line 271
    :try_start_18
    invoke-direct {p0, v0, p2}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "userAlias":Ljava/lang/String;
    iget-object v6, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 273
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_29

    .line 274
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_29
    monitor-exit v7

    goto :goto_9

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "userAlias":Ljava/lang/String;
    :catchall_2b
    move-exception v6

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v6
    :try_end_2e
    .catch Ljava/security/KeyStoreException; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 277
    :catch_2e
    move-exception v2

    .line 278
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v6, "EdmKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception with keystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 281
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :cond_48
    return-object v4
.end method

.method getKeyStore()Ljava/security/KeyStore;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, mKeyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method installCertificates(Ljava/util/List;I)Ljava/util/List;
    .registers 11
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 204
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1, p2}, generateAlias(Ljava/security/cert/X509Certificate;I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "alias":Ljava/lang/String;
    :try_start_19
    iget-object v6, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_35

    .line 207
    :try_start_1c
    iget-object v5, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 208
    iget-object v5, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 209
    invoke-direct {p0, v0}, removeUserIdFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_30
    monitor-exit v6

    goto :goto_9

    :catchall_32
    move-exception v5

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_32

    :try_start_34
    throw v5
    :try_end_35
    .catch Ljava/security/KeyStoreException; {:try_start_34 .. :try_end_35} :catch_35

    .line 212
    :catch_35
    move-exception v2

    .line 213
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 216
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :cond_4f
    invoke-direct {p0}, saveKeyStore()V

    .line 217
    return-object v4
.end method

.method installCertificates(Ljava/util/Map;I)Ljava/util/List;
    .registers 11
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 225
    .local v2, "entryCert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :try_start_19
    iget-object v6, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_45

    .line 226
    :try_start_1c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "alias":Ljava/lang/String;
    iget-object v7, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v7, v0, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 228
    iget-object v5, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_40
    monitor-exit v6

    goto :goto_d

    .end local v0    # "alias":Ljava/lang/String;
    :catchall_42
    move-exception v5

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_42

    :try_start_44
    throw v5
    :try_end_45
    .catch Ljava/security/KeyStoreException; {:try_start_44 .. :try_end_45} :catch_45

    .line 232
    :catch_45
    move-exception v1

    .line 233
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 236
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "entryCert":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_5f
    invoke-direct {p0}, saveKeyStore()V

    .line 237
    return-object v4
.end method

.method isEmpty()Z
    .registers 6

    .prologue
    .line 346
    const/4 v1, 0x1

    .line 348
    .local v1, "result":Z
    :try_start_1
    invoke-virtual {p0}, getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->size()I
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_8} :catch_f

    move-result v2

    if-nez v2, :cond_d

    const/4 v1, 0x1

    .line 353
    :goto_c
    return v1

    .line 348
    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    .line 349
    :catch_f
    move-exception v0

    .line 350
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "EdmKeyStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public performKeystoreUpgrade()V
    .registers 7

    .prologue
    .line 660
    invoke-virtual {p0}, getAliases()Ljava/util/List;

    move-result-object v1

    .line 661
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p0, mType:I

    packed-switch v4, :pswitch_data_76

    .line 683
    :cond_9
    invoke-direct {p0}, saveKeyStore()V

    .line 684
    return-void

    .line 666
    :pswitch_d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    .local v0, "alias":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 674
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "newAlias":Ljava/lang/String;
    :pswitch_3c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_40

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1010_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    .restart local v3    # "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 661
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_3c
        :pswitch_d
    .end packed-switch
.end method

.method public performKeystoreUpgrade_old(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, getAliases()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 627
    .local v0, "alias":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 628
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 629
    .local v5, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 641
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newAlias":Ljava/lang/String;
    .end local v5    # "userId":I
    :cond_4b
    const/4 v7, 0x0

    const-string v8, "_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 644
    .local v6, "userIdStr":Ljava/lang/String;
    :try_start_56
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 645
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 646
    .restart local v4    # "newAlias":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, changeAlias(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_73} :catch_74

    goto :goto_8

    .line 647
    .end local v4    # "newAlias":Ljava/lang/String;
    :catch_74
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "EdmKeyStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performKeystoreMigration NumberFormatException userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 652
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "userIdStr":Ljava/lang/String;
    :cond_90
    invoke-direct {p0}, saveKeyStore()V

    .line 653
    return-void
.end method

.method removeCertificates(Ljava/util/List;I)Ljava/util/List;
    .registers 11
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "alias":Ljava/lang/String;
    :try_start_15
    iget-object v6, p0, mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_31

    .line 249
    :try_start_18
    invoke-direct {p0, v0, p2}, addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "userIdAlias":Ljava/lang/String;
    iget-object v5, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 251
    iget-object v5, p0, mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 252
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2c
    monitor-exit v6

    goto :goto_9

    .end local v4    # "userIdAlias":Ljava/lang/String;
    :catchall_2e
    move-exception v5

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v5
    :try_end_31
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_31} :catch_31

    .line 255
    :catch_31
    move-exception v1

    .line 256
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v5, "EdmKeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 259
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :cond_4b
    invoke-direct {p0}, saveKeyStore()V

    .line 260
    return-object v3
.end method
