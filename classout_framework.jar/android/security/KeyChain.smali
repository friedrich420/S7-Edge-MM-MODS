.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$KeyChainConnection;,
        Landroid/security/KeyChain$AliasResponse;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field private static final ANDROID_SOURCE:Ljava/lang/String; = "android"

.field private static final CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"

.field private static final TAG:Ljava/lang/String; = "KeyChain"

.field private static final UCM_KEYCHAIN_SCHEME:Ljava/lang/String; = "ucmkeychain"

.field private static final UCS_SSL_ENGINE:Ljava/lang/String; = "ucsengine"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    return-void
.end method

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 669
    if-nez p0, :cond_b

    .line 670
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "context == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 672
    :cond_b
    invoke-static {p0}, ensureNotOnMainThread(Landroid/content/Context;)V

    .line 673
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 674
    .local v4, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    invoke-direct {v3, v4}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 688
    .local v3, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Landroid/security/IKeyChainService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 690
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 691
    invoke-virtual {p0, v1, v3, v7, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 695
    .local v2, "isBound":Z
    if-nez v2, :cond_3d

    .line 696
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "could not bind to KeyChainService"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 698
    :cond_3d
    new-instance v6, Landroid/security/KeyChain$KeyChainConnection;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/IKeyChainService;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v5, v7}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$1;)V

    return-object v6
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 370
    if-nez p0, :cond_b

    .line 371
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_b
    if-nez p1, :cond_16

    .line 374
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "response == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string/jumbo v1, "response"

    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    const-string v1, "alias"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "sender"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v4, 0x0

    .line 307
    .local v4, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_37

    .line 308
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-eq p5, v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    :cond_37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 312
    invoke-static/range {v0 .. v5}, choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 313
    return-void

    .line 308
    :cond_40
    const-string v0, ""

    goto :goto_27
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 253
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string/jumbo v4, "senderpackagename"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packagename from createInstallIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_32} :catch_3a

    .line 260
    .end local v0    # "callingPackageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_32
    const-string v4, "com.android.certinstaller"

    const-string v5, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    return-object v1

    .line 256
    :catch_3a
    move-exception v3

    .line 257
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while extracting packagename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 702
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 703
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 704
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_14
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "certChain":[Ljava/security/cert/X509Certificate;
    if-nez p1, :cond_b

    .line 492
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "alias == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 497
    :cond_b
    move-object v7, p1

    .line 499
    .local v7, "originalAlias":Ljava/lang/String;
    invoke-static {p1}, isKeyChainUri(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 500
    invoke-static {p1}, getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 501
    .local v8, "provider":Ljava/lang/String;
    const-string v11, "KeyChain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Provider : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz v8, :cond_6f

    .line 503
    invoke-static {p1}, getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    const-string v11, "KeyChain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "originalAlias : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v11, "android"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8f

    .line 507
    const-string v11, "KeyChain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Provider is ANDROID_SOURCE, flow default sequence with alias : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object p1, v7

    .line 533
    .end local v8    # "provider":Ljava/lang/String;
    :cond_6f
    :goto_6f
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7a

    .line 535
    :try_start_76
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_79} :catch_d8

    move-result-object v0

    .line 542
    :cond_7a
    :goto_7a
    if-nez v0, :cond_12d

    .line 543
    invoke-static {p0}, bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4

    .line 545
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_80
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    .line 546
    .local v5, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v5, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_87
    .catch Ljava/security/cert/CertificateException; {:try_start_80 .. :try_end_87} :catch_113
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_87} :catch_11f
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_87} :catch_126
    .catchall {:try_start_80 .. :try_end_87} :catchall_11a

    move-result-object v1

    .line 547
    .local v1, "certificateBytes":[B
    if-nez v1, :cond_f5

    .line 548
    const/4 v11, 0x0

    .line 563
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 567
    .end local v1    # "certificateBytes":[B
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_8e
    return-object v11

    .line 510
    .restart local v8    # "provider":Ljava/lang/String;
    :cond_8f
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v6

    .line 511
    .local v6, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v6, :cond_6f

    .line 513
    :try_start_95
    invoke-interface {v6, p1}, Landroid/sec/enterprise/IEDMProxy;->getCertificateChain(Ljava/lang/String;)[B

    move-result-object v1

    .line 514
    .restart local v1    # "certificateBytes":[B
    if-nez v1, :cond_9d

    .line 515
    const/4 v11, 0x0

    goto :goto_8e

    .line 517
    :cond_9d
    new-instance v10, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v10}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 518
    .local v10, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/security/cert/X509Certificate;
    :try_end_b6
    .catch Ljava/security/cert/CertificateException; {:try_start_95 .. :try_end_b6} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_b6} :catch_be

    goto :goto_8e

    .line 521
    .end local v1    # "certificateBytes":[B
    .end local v2    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v10    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_b7
    move-exception v3

    .line 522
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v11, Landroid/security/KeyChainException;

    invoke-direct {v11, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 523
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_be
    move-exception v9

    .line 524
    .local v9, "re":Landroid/os/RemoteException;
    const-string v11, "KeyChain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remote Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 536
    .end local v6    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v8    # "provider":Ljava/lang/String;
    .end local v9    # "re":Landroid/os/RemoteException;
    :catch_d8
    move-exception v3

    .line 537
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v11, "KeyChain"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error retrieving certificate from CCM for alias: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_7a

    .line 551
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "certificateBytes":[B
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_f5
    :try_start_f5
    new-instance v10, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v10}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 552
    .restart local v10    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    .line 554
    .restart local v2    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/security/cert/X509Certificate;
    :try_end_10e
    .catch Ljava/security/cert/CertificateException; {:try_start_f5 .. :try_end_10e} :catch_113
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_10e} :catch_11f
    .catch Ljava/lang/RuntimeException; {:try_start_f5 .. :try_end_10e} :catch_126
    .catchall {:try_start_f5 .. :try_end_10e} :catchall_11a

    .line 563
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto/16 :goto_8e

    .line 555
    .end local v1    # "certificateBytes":[B
    .end local v2    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v10    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_113
    move-exception v3

    .line 556
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_114
    new-instance v11, Landroid/security/KeyChainException;

    invoke-direct {v11, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_11a
    .catchall {:try_start_114 .. :try_end_11a} :catchall_11a

    .line 563
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catchall_11a
    move-exception v11

    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v11

    .line 557
    :catch_11f
    move-exception v3

    .line 558
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_120
    new-instance v11, Landroid/security/KeyChainException;

    invoke-direct {v11, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 559
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_126
    move-exception v3

    .line 561
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v11, Landroid/security/KeyChainException;

    invoke-direct {v11, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_12d
    .catchall {:try_start_120 .. :try_end_12d} :catchall_11a

    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_12d
    move-object v11, v0

    .line 567
    goto/16 :goto_8e
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 411
    const/4 v5, 0x0

    .line 412
    .local v5, "privateKey":Ljava/security/PrivateKey;
    if-nez p1, :cond_c

    .line 413
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    :cond_c
    move-object v4, p1

    .line 420
    .local v4, "originalAlias":Ljava/lang/String;
    invoke-static {p1}, isKeyChainUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 421
    invoke-static {p1}, getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "provider":Ljava/lang/String;
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-eqz v6, :cond_6e

    .line 424
    invoke-static {p1}, getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_9c

    .line 428
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider is ANDROID_SOURCE, flow default sequence with alias : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object p1, v4

    .line 441
    .end local v6    # "provider":Ljava/lang/String;
    :cond_6e
    :goto_6e
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v7

    if-ne v7, v10, :cond_78

    .line 443
    :try_start_74
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_77} :catch_a9

    move-result-object v5

    .line 450
    :cond_78
    :goto_78
    if-nez v5, :cond_e0

    .line 451
    invoke-static {p0}, bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 453
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_7e
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 454
    .local v2, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "keyId":Ljava/lang/String;
    if-nez v3, :cond_c6

    .line 456
    new-instance v7, Landroid/security/KeyChainException;

    const-string v8, "keystore had a problem"

    invoke-direct {v7, v8}, Landroid/security/KeyChainException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_90} :catch_90
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_90} :catch_d2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7e .. :try_end_90} :catch_d9
    .catchall {:try_start_7e .. :try_end_90} :catchall_97

    .line 461
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v3    # "keyId":Ljava/lang/String;
    :catch_90
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_91
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_97

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_97
    move-exception v7

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v7

    .line 432
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v6    # "provider":Ljava/lang/String;
    :cond_9c
    invoke-static {p1}, getUCMPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v7

    .line 472
    .end local v6    # "provider":Ljava/lang/String;
    :goto_a0
    return-object v7

    .line 436
    :cond_a1
    const-string v7, "KeyChain"

    const-string v8, "it is not UCM uri type"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 444
    :catch_a9
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error retrieving key from CCM for alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_78

    .line 459
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v3    # "keyId":Ljava/lang/String;
    :cond_c6
    :try_start_c6
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cd} :catch_90
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_cd} :catch_d2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_c6 .. :try_end_cd} :catch_d9
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_97

    move-result-object v7

    .line 469
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_a0

    .line 463
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v3    # "keyId":Ljava/lang/String;
    :catch_d2
    move-exception v0

    .line 465
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_d3
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 466
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_d9
    move-exception v0

    .line 467
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v7, Landroid/security/KeyChainException;

    invoke-direct {v7, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_e0
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_97

    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_e0
    move-object v7, v5

    .line 472
    goto :goto_a0
.end method

.method private static getRawAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 735
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_12

    .line 736
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Source is not known. Invalid URI."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 739
    :cond_12
    const/4 v5, 0x0

    :try_start_13
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 740
    .local v3, "sourcePath":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 741
    .local v2, "resourcetype":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 742
    .local v4, "uriuid":Ljava/lang/String;
    const-string v5, "KeyChain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSource: source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resource type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_53} :catch_54

    .line 747
    .end local v2    # "resourcetype":Ljava/lang/String;
    .end local v3    # "sourcePath":Ljava/lang/String;
    .end local v4    # "uriuid":Ljava/lang/String;
    :goto_53
    return-object v3

    .line 744
    :catch_54
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 747
    const/4 v3, 0x0

    goto :goto_53
.end method

.method private static getUCMPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 761
    :try_start_0
    const-string/jumbo v2, "ucsengine"

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 762
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    invoke-virtual {v1, p0}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v2

    .line 765
    .end local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :goto_b
    return-object v2

    .line 763
    :catch_c
    move-exception v0

    .line 764
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "KeyChain"

    const-string v3, "InvalidKeyException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "RSA"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 605
    const/4 v0, 0x1

    .line 612
    :goto_15
    return v0

    .line 608
    :cond_16
    invoke-static {p0}, isKeyAlgorithmSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 609
    const/4 v0, 0x0

    goto :goto_15

    .line 612
    :cond_1e
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_15
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 577
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "algUpper":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private static isKeyChainUri(Ljava/lang/String;)Z
    .registers 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 712
    if-nez p0, :cond_5

    .line 726
    :cond_4
    :goto_4
    return v2

    .line 715
    :cond_5
    const-string v4, "KeyChain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isKeyChainUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 717
    .local v0, "parsedUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 720
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 724
    const-string/jumbo v4, "ucmkeychain"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_4

    move v2, v3

    .line 725
    goto :goto_4
.end method

.method public static toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 618
    if-nez p0, :cond_a

    .line 619
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bytes == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 622
    :cond_a
    :try_start_a
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 623
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 624
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_1b} :catch_1c

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    .line 625
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_1c
    move-exception v2

    .line 626
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
