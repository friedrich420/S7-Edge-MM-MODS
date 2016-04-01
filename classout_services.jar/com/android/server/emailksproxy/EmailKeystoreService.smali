.class public Lcom/android/server/emailksproxy/EmailKeystoreService;
.super Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emailksproxy/EmailKeystoreService$3;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreErrors;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "EmailKeystoreService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;-><init>()V

    .line 48
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/emailksproxy/EmailKeystoreService;

    .prologue
    .line 42
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scepuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 354
    if-nez p0, :cond_b

    .line 355
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "context == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 357
    :cond_b
    invoke-static {p0}, ensureNotOnMainThread(Landroid/content/Context;)V

    .line 358
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 359
    .local v6, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v5, Lcom/android/server/emailksproxy/EmailKeystoreService$2;

    invoke-direct {v5, v6}, Lcom/android/server/emailksproxy/EmailKeystoreService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 384
    .local v5, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-class v8, Landroid/security/IKeyChainService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 386
    .local v2, "comp":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 388
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_4f

    .line 389
    const-string v8, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyChainConnection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_4f
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 392
    .local v7, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 393
    .local v0, "backupUID":J
    invoke-virtual {p0, v3, v5, v11, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .line 394
    .local v4, "isBound":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    if-nez v4, :cond_6d

    .line 396
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 398
    :cond_6d
    new-instance v9, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v5, v8, v10}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/emailksproxy/EmailKeystoreService$1;)V

    return-object v9
.end method

.method private broadcastStorageChange()V
    .registers 3

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method private checkCEPCaller()Z
    .registers 4

    .prologue
    .line 407
    invoke-direct {p0}, checkCaller()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "actualForSCEP":Ljava/lang/String;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 409
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_16

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 410
    const/4 v2, 0x1

    .line 412
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 4

    .prologue
    .line 416
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "actualPackage":Ljava/lang/String;
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 402
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 403
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_14
    return-void
.end method

.method private installCaCertificate([B)V
    .registers 8
    .param p1, "caCertificate"    # [B

    .prologue
    .line 305
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 307
    .local v3, "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :try_start_5
    monitor-enter v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_39
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_49

    .line 308
    :try_start_6
    invoke-direct {p0, p1}, parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 309
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_19

    .line 310
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_17

    .line 311
    const-string v4, "EmailKeystoreService"

    const-string v5, "CA Certificate parse error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_17
    monitor-exit v3

    .line 337
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_18
    return-void

    .line 315
    .restart local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_19
    invoke-virtual {v3, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 318
    invoke-direct {p0, p1}, parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 319
    .local v0, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 320
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_31

    .line 321
    const-string v4, "EmailKeystoreService"

    const-string v5, "CA Certificate successfully installed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_36

    .line 336
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_32
    invoke-direct {p0}, broadcastStorageChange()V

    goto :goto_18

    .line 324
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v4
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_39} :catch_49

    .line 325
    :catch_39
    move-exception v2

    .line 326
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_45

    .line 327
    const-string v4, "EmailKeystoreService"

    const-string v5, "IOException while installing CA Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_45
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 330
    .end local v2    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v2

    .line 331
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_55

    .line 332
    const-string v4, "EmailKeystoreService"

    const-string v5, "CertificateException while installing CA Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_55
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_32
.end method

.method private isHardwareBackedKey([B)Z
    .registers 10
    .param p1, "keyData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 441
    :try_start_1
    new-instance v2, Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6}, Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 442
    .local v2, "bIn":Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/sec/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 443
    .local v4, "pki":Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    if-nez v4, :cond_16

    .line 452
    .end local v2    # "bIn":Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_15
    :goto_15
    return v5

    .line 444
    .restart local v2    # "bIn":Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v4    # "pki":Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_16
    invoke-virtual {v4}, Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/sec/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/sec/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/sec/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/sec/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "algId":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 446
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 448
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result v5

    goto :goto_15

    .line 449
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/sec/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/sec/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_2f
    move-exception v3

    .line 450
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    const-string v6, "System Service"

    const-string v7, "Failed to parse key data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private makeUidWithUserID(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .prologue
    .line 457
    if-gez p1, :cond_3

    .line 460
    .end local p2    # "uid":I
    :goto_2
    return p2

    .restart local p2    # "uid":I
    :cond_3
    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    goto :goto_2
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 340
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public getKeystoreStatus()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "status":I
    invoke-direct {p0}, checkCEPCaller()Z

    move-result v4

    if-nez v4, :cond_9

    .line 301
    :goto_8
    return v3

    .line 280
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 281
    .local v1, "keystoreService":Landroid/security/KeyStore;
    sget-object v4, Lcom/android/server/emailksproxy/EmailKeystoreService$3;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v5

    aget v3, v4, v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_42

    packed-switch v3, :pswitch_data_48

    .line 292
    const/4 v2, 0x0

    .line 299
    :goto_1d
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3a

    .line 300
    const-string v3, "EmailKeystoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getKeystoreStatus returns: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    move v3, v2

    .line 301
    goto :goto_8

    .line 283
    :pswitch_3c
    const/4 v2, 0x1

    .line 284
    goto :goto_1d

    .line 286
    :pswitch_3e
    const/4 v2, 0x2

    .line 287
    goto :goto_1d

    .line 289
    :pswitch_40
    const/4 v2, 0x3

    .line 290
    goto :goto_1d

    .line 295
    .end local v1    # "keystoreService":Landroid/security/KeyStore;
    :catch_42
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 281
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
    .end packed-switch
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 5
    .param p1, "uidscep"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_7

    .line 252
    :cond_6
    :goto_6
    return-void

    .line 226
    :cond_7
    if-eqz p2, :cond_6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/emailksproxy/EmailKeystoreService$1;-><init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method public installCACert(Lcom/samsung/android/emailksproxy/CertificateAKS;)I
    .registers 6
    .param p1, "caCert"    # Lcom/samsung/android/emailksproxy/CertificateAKS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, checkCEPCaller()Z

    move-result v3

    if-nez v3, :cond_8

    .line 257
    const/4 v3, 0x1

    .line 270
    :goto_7
    return v3

    .line 259
    :cond_8
    if-nez p1, :cond_c

    .line 260
    const/4 v3, -0x2

    goto :goto_7

    .line 262
    :cond_c
    :try_start_c
    iget-object v2, p1, Lcom/samsung/android/emailksproxy/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    .line 263
    .local v2, "mCertArray":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_24

    .line 264
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {p0, v3}, installCaCertificate([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1e

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 265
    .end local v1    # "i":I
    .end local v2    # "mCertArray":[Ljava/security/cert/Certificate;
    :catch_1e
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const/4 v3, -0x1

    goto :goto_7

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "mCertArray":[Ljava/security/cert/Certificate;
    :cond_24
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/emailksproxy/CertByte;Ljava/lang/String;[CZI)I
    .registers 21
    .param p1, "certificate"    # Lcom/samsung/android/emailksproxy/CertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, checkCEPCaller()Z

    move-result v11

    if-nez v11, :cond_8

    .line 109
    const/4 v11, 0x1

    .line 215
    :goto_7
    return v11

    .line 111
    :cond_8
    if-nez p1, :cond_c

    .line 112
    const/4 v11, 0x1

    goto :goto_7

    .line 114
    :cond_c
    const-wide/16 v4, 0x0

    .line 116
    .local v4, "id":J
    :try_start_e
    const-string v11, "PKCS12"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 117
    .local v8, "mJavaKey":Ljava/security/KeyStore;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/emailksproxy/CertByte;->certsize:I

    new-array v7, v11, [B

    .line 118
    .local v7, "mCertficate":[B
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/samsung/android/emailksproxy/CertByte;->certBytes:[B

    .line 119
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 120
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 121
    .local v10, "mcert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v9

    .line 122
    .local v9, "mPriv":Ljava/security/Key;
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/security/cert/Certificate;

    .line 123
    .local v2, "certchain":[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    aput-object v10, v2, v11

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 126
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_63

    .line 127
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_63
    if-eqz p4, :cond_11f

    .line 130
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .line 132
    .local v6, "keystoreService":Landroid/security/KeyStore;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_8e
    .catch Ljava/security/KeyStoreException; {:try_start_e .. :try_end_8e} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_8e} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_8e} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8e} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_e .. :try_end_8e} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_8e} :catch_2cc
    .catchall {:try_start_e .. :try_end_8e} :catchall_2d6

    move-result v11

    if-nez v11, :cond_97

    .line 134
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 136
    :cond_97
    :try_start_97
    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {p0, v11}, isHardwareBackedKey([B)Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_c0
    .catch Ljava/security/KeyStoreException; {:try_start_97 .. :try_end_c0} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_97 .. :try_end_c0} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_97 .. :try_end_c0} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_c0} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_97 .. :try_end_c0} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_c0} :catch_2cc
    .catchall {:try_start_97 .. :try_end_c0} :catchall_2d6

    move-result v11

    if-nez v11, :cond_f1

    .line 139
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 142
    :cond_c9
    :try_start_c9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    const/16 v13, 0x3f2

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_e8
    .catch Ljava/security/KeyStoreException; {:try_start_c9 .. :try_end_e8} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c9 .. :try_end_e8} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_c9 .. :try_end_e8} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_e8} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_c9 .. :try_end_e8} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e8} :catch_2cc
    .catchall {:try_start_c9 .. :try_end_e8} :catchall_2d6

    move-result v11

    if-nez v11, :cond_f1

    .line 144
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 147
    :cond_f1
    :try_start_f1
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/emailksproxy/CertByte;->caSize:I

    if-lez v11, :cond_294

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/emailksproxy/CertByte;->caCertBytes:[B

    const/16 v13, 0x3f2

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_116
    .catch Ljava/security/KeyStoreException; {:try_start_f1 .. :try_end_116} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f1 .. :try_end_116} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_f1 .. :try_end_116} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_116} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_f1 .. :try_end_116} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_116} :catch_2cc
    .catchall {:try_start_f1 .. :try_end_116} :catchall_2d6

    move-result v11

    if-nez v11, :cond_294

    .line 150
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 156
    .end local v6    # "keystoreService":Landroid/security/KeyStore;
    :cond_11f
    :try_start_11f
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    .line 158
    .restart local v6    # "keystoreService":Landroid/security/KeyStore;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, makeUidWithUserID(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_1a0

    .line 160
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_19a

    .line 161
    const-string v11, "EmailKeystoreService"

    const-string v12, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias : USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, makeUidWithUserID(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/security/KeyStoreException; {:try_start_11f .. :try_end_19a} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11f .. :try_end_19a} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_11f .. :try_end_19a} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_19a} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_11f .. :try_end_19a} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_19a} :catch_2cc
    .catchall {:try_start_11f .. :try_end_19a} :catchall_2d6

    .line 166
    :cond_19a
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 168
    :cond_1a0
    :try_start_1a0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, makeUidWithUserID(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_217

    .line 170
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_211

    .line 171
    const-string v11, "EmailKeystoreService"

    const-string v12, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias : USRPKEY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, makeUidWithUserID(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Ljava/security/KeyStoreException; {:try_start_1a0 .. :try_end_211} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a0 .. :try_end_211} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_1a0 .. :try_end_211} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_211} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1a0 .. :try_end_211} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_211} :catch_2cc
    .catchall {:try_start_1a0 .. :try_end_211} :catchall_2d6

    .line 175
    :cond_211
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 177
    :cond_217
    :try_start_217
    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/emailksproxy/CertByte;->caSize:I

    if-lez v11, :cond_294

    .line 178
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/emailksproxy/CertByte;->caCertBytes:[B

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, makeUidWithUserID(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_294

    .line 180
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_28e

    .line 181
    const-string v11, "EmailKeystoreService"

    const-string v12, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alias : CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v11, "EmailKeystoreService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-direct {p0, v13, v14}, makeUidWithUserID(II)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28e
    .catch Ljava/security/KeyStoreException; {:try_start_217 .. :try_end_28e} :catch_29a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_217 .. :try_end_28e} :catch_2a4
    .catch Ljava/security/cert/CertificateException; {:try_start_217 .. :try_end_28e} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_28e} :catch_2b8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_217 .. :try_end_28e} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_28e} :catch_2cc
    .catchall {:try_start_217 .. :try_end_28e} :catchall_2d6

    .line 185
    :cond_28e
    const/4 v11, 0x1

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 189
    :cond_294
    const/4 v11, 0x0

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 191
    .end local v2    # "certchain":[Ljava/security/cert/Certificate;
    .end local v6    # "keystoreService":Landroid/security/KeyStore;
    .end local v7    # "mCertficate":[B
    .end local v8    # "mJavaKey":Ljava/security/KeyStore;
    .end local v9    # "mPriv":Ljava/security/Key;
    .end local v10    # "mcert":Ljava/security/cert/X509Certificate;
    :catch_29a
    move-exception v3

    .line 193
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_29b
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_29e
    .catchall {:try_start_29b .. :try_end_29e} :catchall_2d6

    .line 194
    const/4 v11, 0x2

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 195
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_2a4
    move-exception v3

    .line 197
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2a5
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2a8
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_2d6

    .line 198
    const/4 v11, 0x2

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 199
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2ae
    move-exception v3

    .line 201
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_2af
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2b2
    .catchall {:try_start_2af .. :try_end_2b2} :catchall_2d6

    .line 202
    const/4 v11, 0x3

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 203
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_2b8
    move-exception v3

    .line 205
    .local v3, "e":Ljava/io/IOException;
    :try_start_2b9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2bc
    .catchall {:try_start_2b9 .. :try_end_2bc} :catchall_2d6

    .line 206
    const/4 v11, 0x4

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 207
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2c2
    move-exception v3

    .line 209
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_2c3
    invoke-virtual {v3}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_2c6
    .catchall {:try_start_2c3 .. :try_end_2c6} :catchall_2d6

    .line 210
    const/4 v11, 0x2

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .line 211
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_2cc
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2cd
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d0
    .catchall {:try_start_2cd .. :try_end_2d0} :catchall_2d6

    .line 213
    const/4 v11, 0x4

    .line 215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_2d6
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-direct {p0}, checkCEPCaller()Z

    move-result v6

    if-nez v6, :cond_9

    .line 84
    :cond_8
    :goto_8
    return v4

    .line 58
    :cond_9
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2a

    .line 59
    const-string v6, "EmailKeystoreService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAliasExists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 63
    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .line 64
    .local v1, "UidoftheCertWifi":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 66
    .local v3, "mAndroid":Landroid/security/KeyStore;
    if-eqz p2, :cond_8e

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_8b
    move v4, v5

    .line 70
    goto/16 :goto_8

    .line 73
    :cond_8e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_d6} :catch_dc

    move-result v6

    if-eqz v6, :cond_8

    :cond_d9
    move v4, v5

    .line 76
    goto/16 :goto_8

    .line 79
    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    .end local v3    # "mAndroid":Landroid/security/KeyStore;
    :catch_dc
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method
