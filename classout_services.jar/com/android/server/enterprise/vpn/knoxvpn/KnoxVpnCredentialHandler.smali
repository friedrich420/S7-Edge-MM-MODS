.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, DBG:Z

    .line 51
    const-string v0, "FipsTimaKeyStore"

    sput-object v0, TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 52
    const-string v0, "/data/system/vpn/key"

    sput-object v0, KEYSTORE_FILE_PATH:Ljava/lang/String;

    .line 53
    sput-boolean v1, timaVersion20:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "N/A"

    iput-object v0, p0, mTimaVersion:Ljava/lang/String;

    .line 59
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, updateTimaVersion()V

    .line 61
    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 8
    .param p1, "in"    # Ljava/io/FileInputStream;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Ljava/io/File;

    sget-object v2, KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 477
    new-instance p1, Ljava/io/FileInputStream;

    .end local p1    # "in":Ljava/io/FileInputStream;
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 480
    .restart local p1    # "in":Ljava/io/FileInputStream;
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 482
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 483
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 486
    :cond_1f
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 487
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_36

    .line 488
    if-eqz p1, :cond_36

    .line 489
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 493
    :cond_36
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 355
    if-nez p1, :cond_4

    .line 356
    const/4 v1, 0x0

    .line 370
    :goto_3
    return-object v1

    .line 358
    :cond_4
    const/4 v1, 0x0

    .line 360
    .local v1, "ecryptfsKey":[B
    :try_start_5
    invoke-direct {p0}, generateSalt()[B

    move-result-object v4

    .line 361
    .local v4, "salt":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 362
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "HmacSHA256"

    const-string v6, "AndroidOpenSSL"

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 363
    .local v2, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_24

    move-result-object v1

    goto :goto_3

    .line 366
    .end local v2    # "hmac":Ljavax/crypto/Mac;
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "salt":[B
    :catch_24
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    :cond_2c
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "Error inside generateCMK "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private generateSalt()[B
    .registers 4

    .prologue
    .line 385
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 386
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 387
    .local v1, "salt":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 388
    return-object v1
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "password":Ljava/lang/String;
    const/4 v1, 0x0

    .line 376
    .local v1, "pwd":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 378
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 380
    :goto_23
    return-object v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_e

    .line 65
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 67
    :cond_e
    sget-object v0, mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v3, p0, mTimaVersion:Ljava/lang/String;

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 393
    invoke-direct {p0}, updateTimaVersion()V

    .line 394
    :cond_d
    const/4 v1, 0x0

    .line 395
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-direct {p0}, getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "tksName":Ljava/lang/String;
    :try_start_12
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 398
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1b
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_36

    .line 406
    return-object v1

    .line 399
    :catch_1c
    move-exception v0

    .line 400
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get TKS instance..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    throw v0

    .line 402
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_36
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load TKS instance..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    throw v0
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 292
    const-string v0, "N/A"

    .line 293
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, mTimaVersion:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_50

    :cond_c
    :goto_c
    packed-switch v1, :pswitch_data_5a

    .line 301
    :goto_f
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v0

    .line 293
    :sswitch_35
    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :sswitch_3f
    const-string v3, "FIPS3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_c

    .line 295
    :pswitch_49
    const-string v0, "TIMAKeyStore"

    .line 296
    goto :goto_f

    .line 298
    :pswitch_4c
    const-string v0, "FipsTimaKeyStore"

    goto :goto_f

    .line 293
    nop

    :sswitch_data_50
    .sparse-switch
        -0x7ec2e91 -> :sswitch_3f
        0xc535 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 3

    .prologue
    .line 71
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 73
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTimaStatus()I
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 306
    const/4 v1, -0x1

    .line 307
    .local v1, "timaStatus":I
    iget-object v2, p0, mTimaVersion:Ljava/lang/String;

    const-string v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 308
    invoke-direct {p0}, updateTimaVersion()V

    .line 310
    :cond_f
    :try_start_f
    iget-object v4, p0, mTimaVersion:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_a6

    :cond_19
    :goto_19
    packed-switch v2, :pswitch_data_b4

    .line 322
    const-string v2, "KnoxVpnCredentialHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_37} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_37} :catch_9c

    .line 330
    :goto_37
    const-string v2, "KnoxVpnCredentialHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimaStatus() - Tima Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 310
    :sswitch_51
    :try_start_51
    const-string v3, "2.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v2, 0x0

    goto :goto_19

    :sswitch_5b
    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v2, v3

    goto :goto_19

    :sswitch_65
    const-string v3, "FIPS3.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v2, 0x2

    goto :goto_19

    .line 312
    :pswitch_6f
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 313
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7e} :catch_9c

    goto :goto_37

    .line 325
    :catch_7f
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_89
    :try_start_89
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v1

    .line 317
    goto :goto_37

    .line 319
    :pswitch_92
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_9a} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9a} :catch_9c

    move-result v1

    .line 320
    goto :goto_37

    .line 327
    :catch_9c
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 310
    :sswitch_data_a6
    .sparse-switch
        -0x7ec2e91 -> :sswitch_65
        0xc174 -> :sswitch_51
        0xc535 -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_89
        :pswitch_92
    .end packed-switch
.end method

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .registers 5
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "in"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Ljava/io/File;

    sget-object v1, KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 467
    new-instance p2, Ljava/io/FileInputStream;

    .end local p2    # "in":Ljava/io/FileInputStream;
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 469
    .restart local p2    # "in":Ljava/io/FileInputStream;
    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 470
    return-void
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x20

    .line 411
    const/4 v5, 0x0

    .line 412
    .local v5, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 413
    .local v3, "key":[B
    new-array v0, v10, [B

    .line 414
    .local v0, "ecryptfsKey":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 415
    .local v8, "token":J
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    .line 416
    .local v7, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 417
    .local v4, "profileIndex":I
    if-eqz v7, :cond_62

    .line 419
    :try_start_14
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 420
    .local v1, "error":I
    const-string v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-nez v1, :cond_4d

    const/4 v10, -0x1

    if-eq v4, v10, :cond_4d

    .line 422
    invoke-interface {v7, v4}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    .line 423
    if-eqz v3, :cond_4d

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    if-nez v10, :cond_4d

    .line 424
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 425
    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 428
    :cond_4d
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_50} :catch_55
    .catchall {:try_start_14 .. :try_end_50} :catchall_5d

    .line 432
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "error":I
    :goto_53
    move-object v6, v5

    .line 436
    .end local v5    # "ret":Ljava/lang/String;
    .local v6, "ret":Ljava/lang/String;
    :goto_54
    return-object v6

    .line 429
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_55
    move-exception v2

    .line 430
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_56
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5d

    .line 432
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_53

    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_5d
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_62
    move-object v6, v5

    .line 436
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    goto :goto_54
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .registers 14
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v7, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, "result":Z
    const/4 v3, 0x0

    .line 98
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v1, 0x0

    .line 100
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_4
    invoke-direct {p0}, getTimaStatus()I

    move-result v8

    sparse-switch v8, :sswitch_data_1e0

    .line 123
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "Tima status is unknown"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 125
    invoke-direct {p0, v3, v1}, initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    .line 128
    :goto_1d
    if-eqz p2, :cond_48

    .line 129
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, ""

    invoke-direct {v5, p2, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 130
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 131
    .local v6, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 132
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_3c

    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "An entry is already present, deleting it and updating the name"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3c
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 135
    :cond_3f
    const/4 v7, 0x0

    invoke-direct {p0, v7}, getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v7

    invoke-virtual {v3, p1, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_47
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_47} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_17a
    .catchall {:try_start_4 .. :try_end_47} :catchall_1b5

    .line 136
    const/4 v4, 0x1

    .line 146
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_48
    if-eqz v1, :cond_4d

    .line 147
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_4d
    if-nez v3, :cond_57

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_57} :catch_124

    :cond_57
    :goto_57
    move v7, v4

    .line 156
    :cond_58
    :goto_58
    return v7

    .line 102
    :sswitch_59
    :try_start_59
    iget-object v9, p0, mTimaVersion:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1f6

    :cond_63
    move v7, v8

    :goto_64
    packed-switch v7, :pswitch_data_204

    .line 112
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "unknown TIMA Version"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/security/KeyStoreException; {:try_start_59 .. :try_end_6f} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6f} :catch_17a
    .catchall {:try_start_59 .. :try_end_6f} :catchall_1b5

    .line 146
    if-eqz v1, :cond_74

    .line 147
    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_74
    if-nez v3, :cond_7e

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_d7

    :cond_7e
    :goto_7e
    move v7, v4

    .line 154
    goto :goto_58

    .line 102
    :sswitch_80
    :try_start_80
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    goto :goto_64

    :sswitch_89
    const-string v7, "3.0"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    const/4 v7, 0x1

    goto :goto_64

    :sswitch_93
    const-string v7, "FIPS3.0"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    const/4 v7, 0x2

    goto :goto_64

    .line 104
    :pswitch_9d
    invoke-direct {p0, p1, p2}, storeCredentialsForTima20(Ljava/lang/String;[B)Z
    :try_end_a0
    .catch Ljava/security/KeyStoreException; {:try_start_80 .. :try_end_a0} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a0} :catch_17a
    .catchall {:try_start_80 .. :try_end_a0} :catchall_1b5

    move-result v7

    .line 146
    if-eqz v1, :cond_a6

    .line 147
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_a6
    if-nez v3, :cond_58

    .line 150
    const-string v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b0} :catch_b1

    goto :goto_58

    .line 152
    :catch_b1
    move-exception v2

    .line 153
    .local v2, "ioe":Ljava/io/IOException;
    const-string v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 106
    .end local v2    # "ioe":Ljava/io/IOException;
    :pswitch_cb
    :try_start_cb
    invoke-direct {p0}, getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 107
    goto/16 :goto_1d

    .line 109
    :pswitch_d1
    invoke-direct {p0}, getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_d4
    .catch Ljava/security/KeyStoreException; {:try_start_cb .. :try_end_d4} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d4} :catch_17a
    .catchall {:try_start_cb .. :try_end_d4} :catchall_1b5

    move-result-object v3

    .line 110
    goto/16 :goto_1d

    .line 152
    :catch_d7
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 120
    .end local v2    # "ioe":Ljava/io/IOException;
    :sswitch_f1
    :try_start_f1
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "TIMA Compromised"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/security/KeyStoreException; {:try_start_f1 .. :try_end_f8} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f8} :catch_17a
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_1b5

    .line 146
    if-eqz v1, :cond_fd

    .line 147
    :try_start_fa
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_fd
    if-nez v3, :cond_107

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_107} :catch_10a

    :cond_107
    :goto_107
    move v7, v4

    .line 154
    goto/16 :goto_58

    .line 152
    :catch_10a
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 152
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_124
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 138
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_13f
    move-exception v0

    .line 139
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_140
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_14e

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_14e
    .catchall {:try_start_140 .. :try_end_14e} :catchall_1b5

    .line 146
    :cond_14e
    if-eqz v1, :cond_153

    .line 147
    :try_start_150
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_153
    if-nez v3, :cond_57

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_15d} :catch_15f

    goto/16 :goto_57

    .line 152
    :catch_15f
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 141
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_17a
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17b
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "Exception occured while trying to store the info inside keystore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_189

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_189
    .catchall {:try_start_17b .. :try_end_189} :catchall_1b5

    .line 146
    :cond_189
    if-eqz v1, :cond_18e

    .line 147
    :try_start_18b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_18e
    if-nez v3, :cond_57

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_198} :catch_19a

    goto/16 :goto_57

    .line 152
    :catch_19a
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_1b5
    move-exception v7

    .line 146
    if-eqz v1, :cond_1bb

    .line 147
    :try_start_1b8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_1bb
    if-nez v3, :cond_1c5

    .line 150
    const-string v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c5
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1c5} :catch_1c6

    .line 154
    :cond_1c5
    :goto_1c5
    throw v7

    .line 152
    :catch_1c6
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    .line 100
    :sswitch_data_1e0
    .sparse-switch
        0x0 -> :sswitch_59
        0x1000c -> :sswitch_f1
        0x1000d -> :sswitch_f1
        0x1000e -> :sswitch_f1
        0x1000f -> :sswitch_f1
    .end sparse-switch

    .line 102
    :sswitch_data_1f6
    .sparse-switch
        -0x7ec2e91 -> :sswitch_93
        0xc174 -> :sswitch_80
        0xc535 -> :sswitch_89
    .end sparse-switch

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_cb
        :pswitch_d1
    .end packed-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v6, 0x0

    .line 440
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 441
    .local v3, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 442
    .local v2, "profileIndex":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 443
    .local v4, "token":J
    if-eqz v3, :cond_4d

    .line 445
    :try_start_f
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    .line 446
    .local v0, "error":I
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-nez v0, :cond_34

    const/4 v7, -0x1

    if-eq v2, v7, :cond_34

    .line 448
    invoke-interface {v3, v2, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    .line 450
    :cond_34
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_37} :catch_3c
    .catchall {:try_start_f .. :try_end_37} :catchall_48

    .line 455
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    const/4 v6, 0x1

    .line 460
    .end local v0    # "error":I
    :goto_3b
    return v6

    .line 451
    :catch_3c
    move-exception v1

    .line 452
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_3d
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_44

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_48

    .line 455
    :cond_44
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3b

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_48
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 459
    :cond_4d
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentialsForTima20 failed returning false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private updateTimaVersion()V
    .registers 5

    .prologue
    .line 335
    const-string v1, "N/A"

    iput-object v1, p0, mTimaVersion:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 338
    :try_start_a
    const-string v1, "2.0"

    invoke-direct {p0}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, timaVersion20:Z

    .line 339
    sget-boolean v1, timaVersion20:Z

    if-eqz v1, :cond_3e

    .line 340
    const-string v1, "2.0"

    iput-object v1, p0, mTimaVersion:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_49

    .line 350
    :goto_22
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_3d
    return-void

    .line 342
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 343
    const-string v1, "FIPS3.0"

    iput-object v1, p0, mTimaVersion:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_22

    .line 347
    :catch_49
    move-exception v0

    .line 348
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "KnoxVpnCredentialHandler"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 345
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_53
    :try_start_53
    const-string v1, "3.0"

    iput-object v1, p0, mTimaVersion:Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_49

    goto :goto_22
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 228
    .local v3, "ks":Ljava/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 230
    .local v4, "token":J
    :try_start_6
    invoke-direct {p0}, getTimaStatus()I

    move-result v6

    sparse-switch v6, :sswitch_data_2b0

    .line 253
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "Tima status is unknown"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 255
    invoke-direct {p0, v1, v3, p1}, deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_1f} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1f} :catch_18e
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_1f} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_208
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_245
    .catchall {:try_start_6 .. :try_end_1f} :catchall_282

    .line 278
    if-eqz v1, :cond_24

    .line 279
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_24
    if-nez v3, :cond_2e

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_11b

    .line 287
    :cond_2e
    :goto_2e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    :goto_31
    return-void

    .line 232
    :sswitch_32
    :try_start_32
    iget-object v7, p0, mTimaVersion:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2c6

    :cond_3c
    :goto_3c
    packed-switch v6, :pswitch_data_2d4

    .line 242
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "unknown TIMA Version"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/security/KeyStoreException; {:try_start_32 .. :try_end_47} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32 .. :try_end_47} :catch_18e
    .catch Ljava/security/cert/CertificateException; {:try_start_32 .. :try_end_47} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_47} :catch_208
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_47} :catch_245
    .catchall {:try_start_32 .. :try_end_47} :catchall_282

    .line 278
    if-eqz v1, :cond_4c

    .line 279
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_4c
    if-nez v3, :cond_56

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_cb

    .line 287
    :cond_56
    :goto_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 232
    :sswitch_5a
    :try_start_5a
    const-string v8, "2.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v6, 0x0

    goto :goto_3c

    :sswitch_64
    const-string v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v6, 0x1

    goto :goto_3c

    :sswitch_6e
    const-string v8, "FIPS3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/security/KeyStoreException; {:try_start_5a .. :try_end_73} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5a .. :try_end_73} :catch_18e
    .catch Ljava/security/cert/CertificateException; {:try_start_5a .. :try_end_73} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_73} :catch_208
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_73} :catch_245
    .catchall {:try_start_5a .. :try_end_73} :catchall_282

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v6, 0x2

    goto :goto_3c

    .line 278
    :pswitch_78
    if-eqz v1, :cond_7d

    .line 279
    :try_start_7a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_7d
    if-nez v3, :cond_87

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_87} :catch_8b

    .line 287
    :cond_87
    :goto_87
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 284
    :catch_8b
    move-exception v2

    .line 285
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 236
    .end local v2    # "ioe":Ljava/io/IOException;
    :pswitch_a5
    :try_start_a5
    invoke-direct {p0}, getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 258
    :goto_a9
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 259
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/security/KeyStoreException; {:try_start_a5 .. :try_end_b2} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a5 .. :try_end_b2} :catch_18e
    .catch Ljava/security/cert/CertificateException; {:try_start_a5 .. :try_end_b2} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b2} :catch_208
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b2} :catch_245
    .catchall {:try_start_a5 .. :try_end_b2} :catchall_282

    .line 278
    :cond_b2
    if-eqz v1, :cond_b7

    .line 279
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_b7
    if-nez v3, :cond_c1

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c1} :catch_136

    .line 287
    :cond_c1
    :goto_c1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 239
    :pswitch_c6
    :try_start_c6
    invoke-direct {p0}, getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_c9
    .catch Ljava/security/KeyStoreException; {:try_start_c6 .. :try_end_c9} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c6 .. :try_end_c9} :catch_18e
    .catch Ljava/security/cert/CertificateException; {:try_start_c6 .. :try_end_c9} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_208
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_245
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_282

    move-result-object v3

    .line 240
    goto :goto_a9

    .line 284
    :catch_cb
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 250
    .end local v2    # "ioe":Ljava/io/IOException;
    :sswitch_e6
    :try_start_e6
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "TIMA Compromised"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/security/KeyStoreException; {:try_start_e6 .. :try_end_ed} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e6 .. :try_end_ed} :catch_18e
    .catch Ljava/security/cert/CertificateException; {:try_start_e6 .. :try_end_ed} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ed} :catch_208
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ed} :catch_245
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_282

    .line 278
    if-eqz v1, :cond_f2

    .line 279
    :try_start_ef
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_f2
    if-nez v3, :cond_fc

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_fc} :catch_101

    .line 287
    :cond_fc
    :goto_fc
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 284
    :catch_101
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 284
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_11b
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 284
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_136
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 261
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_151
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_152
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_159

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 263
    :cond_159
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_152 .. :try_end_160} :catchall_282

    .line 278
    if-eqz v1, :cond_165

    .line 279
    :try_start_162
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_165
    if-nez v3, :cond_16f

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_16f} :catch_174

    .line 287
    :cond_16f
    :goto_16f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 284
    :catch_174
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16f

    .line 264
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_18e
    move-exception v0

    .line 265
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_18f
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_196

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 266
    :cond_196
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_18f .. :try_end_19d} :catchall_282

    .line 278
    if-eqz v1, :cond_1a2

    .line 279
    :try_start_19f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_1a2
    if-nez v3, :cond_1ac

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1ac} :catch_1b1

    .line 287
    :cond_1ac
    :goto_1ac
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 284
    :catch_1b1
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac

    .line 267
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1cb
    move-exception v0

    .line 268
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_1cc
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1d3

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 269
    :cond_1d3
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1da
    .catchall {:try_start_1cc .. :try_end_1da} :catchall_282

    .line 278
    if-eqz v1, :cond_1df

    .line 279
    :try_start_1dc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_1df
    if-nez v3, :cond_1e9

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1e9} :catch_1ee

    .line 287
    :cond_1e9
    :goto_1e9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 284
    :catch_1ee
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e9

    .line 270
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_208
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    :try_start_209
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_210

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    :cond_210
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "IOException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_217
    .catchall {:try_start_209 .. :try_end_217} :catchall_282

    .line 278
    if-eqz v1, :cond_21c

    .line 279
    :try_start_219
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_21c
    if-nez v3, :cond_226

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_226} :catch_22b

    .line 287
    :cond_226
    :goto_226
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 284
    :catch_22b
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_226

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_245
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    :try_start_246
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_24d

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :cond_24d
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "Exception occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_254
    .catchall {:try_start_246 .. :try_end_254} :catchall_282

    .line 278
    if-eqz v1, :cond_259

    .line 279
    :try_start_256
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_259
    if-nez v3, :cond_263

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_263
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_263} :catch_268

    .line 287
    :cond_263
    :goto_263
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_31

    .line 284
    :catch_268
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_263

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_282
    move-exception v6

    .line 278
    if-eqz v1, :cond_288

    .line 279
    :try_start_285
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_288
    if-nez v3, :cond_292

    .line 282
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_292
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_292} :catch_296

    .line 287
    :cond_292
    :goto_292
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 284
    :catch_296
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    .line 230
    :sswitch_data_2b0
    .sparse-switch
        0x0 -> :sswitch_32
        0x1000c -> :sswitch_e6
        0x1000d -> :sswitch_e6
        0x1000e -> :sswitch_e6
        0x1000f -> :sswitch_e6
    .end sparse-switch

    .line 232
    :sswitch_data_2c6
    .sparse-switch
        -0x7ec2e91 -> :sswitch_6e
        0xc174 -> :sswitch_5a
        0xc535 -> :sswitch_64
    .end sparse-switch

    :pswitch_data_2d4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_a5
        :pswitch_c6
    .end packed-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 160
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_20

    const-string v13, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_20
    const/4 v7, 0x0

    .line 162
    .local v7, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 163
    .local v9, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .line 164
    .local v5, "in":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 166
    .local v10, "token":J
    :try_start_27
    invoke-direct/range {p0 .. p0}, getTimaStatus()I

    move-result v13

    sparse-switch v13, :sswitch_data_21c

    .line 189
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "Tima status is unknown"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 191
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    .line 194
    :goto_42
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 195
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v12

    check-cast v12, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, v12

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v4, v0

    .line 196
    .local v4, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v4, :cond_6f

    .line 197
    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v12

    invoke-interface {v12}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 198
    .local v2, "bytesReceived":[B
    if-eqz v2, :cond_6f

    .line 199
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6e
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_6e} :catch_174
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6e} :catch_1b1
    .catchall {:try_start_27 .. :try_end_6e} :catchall_1ee

    .end local v7    # "key":Ljava/lang/String;
    .local v8, "key":Ljava/lang/String;
    move-object v7, v8

    .line 211
    .end local v2    # "bytesReceived":[B
    .end local v4    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v8    # "key":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_6f
    if-eqz v5, :cond_74

    .line 212
    :try_start_71
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_74
    if-nez v9, :cond_7e

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_159

    .line 220
    :cond_7e
    :goto_7e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_81
    move-object v12, v7

    .line 222
    :goto_82
    return-object v12

    .line 168
    :sswitch_83
    :try_start_83
    move-object/from16 v0, p0

    iget-object v14, v0, mTimaVersion:Ljava/lang/String;

    const/4 v13, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_232

    :cond_8f
    move v12, v13

    :goto_90
    packed-switch v12, :pswitch_data_240

    .line 178
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "unknown TIMA Version"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/security/KeyStoreException; {:try_start_83 .. :try_end_9b} :catch_174
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9b} :catch_1b1
    .catchall {:try_start_83 .. :try_end_9b} :catchall_1ee

    .line 211
    if-eqz v5, :cond_a0

    .line 212
    :try_start_9d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_a0
    if-nez v9, :cond_aa

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_aa} :catch_109

    .line 220
    :cond_aa
    :goto_aa
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v12, v7

    goto :goto_82

    .line 168
    :sswitch_af
    :try_start_af
    const-string v15, "2.0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8f

    goto :goto_90

    :sswitch_b8
    const-string v12, "3.0"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8f

    const/4 v12, 0x1

    goto :goto_90

    :sswitch_c2
    const-string v12, "FIPS3.0"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8f

    const/4 v12, 0x2

    goto :goto_90

    .line 170
    :pswitch_cc
    invoke-direct/range {p0 .. p1}, retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    :try_end_cf
    .catch Ljava/security/KeyStoreException; {:try_start_af .. :try_end_cf} :catch_174
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_cf} :catch_1b1
    .catchall {:try_start_af .. :try_end_cf} :catchall_1ee

    move-result-object v12

    .line 211
    if-eqz v5, :cond_d5

    .line 212
    :try_start_d2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_d5
    if-nez v9, :cond_df

    .line 215
    const-string v13, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_df} :catch_e3

    .line 220
    :cond_df
    :goto_df
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_82

    .line 217
    :catch_e3
    move-exception v6

    .line 218
    .local v6, "ioe":Ljava/io/IOException;
    const-string v13, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 172
    .end local v6    # "ioe":Ljava/io/IOException;
    :pswitch_fd
    :try_start_fd
    invoke-direct/range {p0 .. p0}, getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v9

    .line 173
    goto/16 :goto_42

    .line 175
    :pswitch_103
    invoke-direct/range {p0 .. p0}, getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_106
    .catch Ljava/security/KeyStoreException; {:try_start_fd .. :try_end_106} :catch_174
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_106} :catch_1b1
    .catchall {:try_start_fd .. :try_end_106} :catchall_1ee

    move-result-object v9

    .line 176
    goto/16 :goto_42

    .line 217
    :catch_109
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 186
    .end local v6    # "ioe":Ljava/io/IOException;
    :sswitch_123
    :try_start_123
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "TIMA Comprimised"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/security/KeyStoreException; {:try_start_123 .. :try_end_12a} :catch_174
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_12a} :catch_1b1
    .catchall {:try_start_123 .. :try_end_12a} :catchall_1ee

    .line 211
    if-eqz v5, :cond_12f

    .line 212
    :try_start_12c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_12f
    if-nez v9, :cond_139

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_139} :catch_13f

    .line 220
    :cond_139
    :goto_139
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v12, v7

    goto/16 :goto_82

    .line 217
    :catch_13f
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 217
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_159
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 203
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_174
    move-exception v3

    .line 204
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_175
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_183

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_183
    .catchall {:try_start_175 .. :try_end_183} :catchall_1ee

    .line 211
    :cond_183
    if-eqz v5, :cond_188

    .line 212
    :try_start_185
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_188
    if-nez v9, :cond_192

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_192} :catch_197

    .line 220
    :cond_192
    :goto_192
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_81

    .line 217
    :catch_197
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    .line 206
    .end local v3    # "e":Ljava/security/KeyStoreException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1b1
    move-exception v3

    .line 207
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1b2
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_1c0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c0
    .catchall {:try_start_1b2 .. :try_end_1c0} :catchall_1ee

    .line 211
    :cond_1c0
    if-eqz v5, :cond_1c5

    .line 212
    :try_start_1c2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_1c5
    if-nez v9, :cond_1cf

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1cf} :catch_1d4

    .line 220
    :cond_1cf
    :goto_1cf
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_81

    .line 217
    :catch_1d4
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf

    .line 210
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_1ee
    move-exception v12

    .line 211
    if-eqz v5, :cond_1f4

    .line 212
    :try_start_1f1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_1f4
    if-nez v9, :cond_1fe

    .line 215
    const-string v13, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1fe} :catch_202

    .line 220
    :cond_1fe
    :goto_1fe
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 217
    :catch_202
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v13, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fe

    .line 166
    :sswitch_data_21c
    .sparse-switch
        0x0 -> :sswitch_83
        0x1000c -> :sswitch_123
        0x1000d -> :sswitch_123
        0x1000e -> :sswitch_123
        0x1000f -> :sswitch_123
    .end sparse-switch

    .line 168
    :sswitch_data_232
    .sparse-switch
        -0x7ec2e91 -> :sswitch_c2
        0xc174 -> :sswitch_af
        0xc535 -> :sswitch_b8
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_fd
        :pswitch_103
    .end packed-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "status":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 81
    .local v2, "token":J
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 82
    .local v1, "updatedKey":[B
    if-eqz v1, :cond_35

    .line 83
    const-string v4, "N/A"

    iget-object v5, p0, mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 84
    invoke-direct {p0}, updateTimaVersion()V

    .line 86
    :cond_18
    invoke-direct {p0, p1, v1}, storeCredentials(Ljava/lang/String;[B)Z

    move-result v0

    .line 87
    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    .line 90
    :cond_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    return v0

    .line 90
    .end local v1    # "updatedKey":[B
    :catchall_39
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
