.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$1;,
        Lcom/android/settings/CredentialStorage$UnlockDialog;,
        Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field private static final SYSTEM_CREDENTIAL_UIDS:[I


# instance fields
.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mInstallBundle:Landroid/os/Bundle;

.field private mIsShowingConfigureKeyGuardDialog:Z

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 151
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage;->mIsShowingConfigureKeyGuardDialog:Z

    .line 851
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/CredentialStorage;Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/CredentialStorage;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->isUserRemoveCertificatesAllowed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/CredentialStorage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/settings/CredentialStorage;->mIsShowingConfigureKeyGuardDialog:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/CredentialStorage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/settings/CredentialStorage;->mIsShowingConfigureKeyGuardDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/CredentialStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/CredentialStorage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 769
    const-string v7, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    move v6, v5

    .line 800
    :cond_0
    :goto_1
    return v6

    :cond_1
    move v5, v6

    .line 772
    goto :goto_0

    .line 778
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 780
    .local v0, "launchedFromUid":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 781
    const-string v5, "CredentialStorage"

    const-string v7, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 789
    .end local v0    # "launchedFromUid":I
    :catch_0
    move-exception v3

    .line 791
    .local v3, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 784
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "launchedFromUid":I
    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 788
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 794
    .local v1, "launchedFromUserId":I
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 795
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 796
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ne v7, v8, :cond_0

    move v6, v5

    .line 800
    goto :goto_1
.end method

.method private checkKeyGuardQuality()Z
    .locals 4

    .prologue
    .line 257
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 258
    .local v0, "parent":Landroid/content/pm/UserInfo;
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 260
    .local v1, "quality":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 261
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 263
    :cond_0
    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 258
    .end local v1    # "quality":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0

    .line 263
    .restart local v1    # "quality":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private confirmKeyGuard()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 808
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v3, 0x7f0e0b73

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    .line 811
    .local v0, "launched":Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private getCertificateFromBytes([B)Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "certBytes"    # [B

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "cert":Ljava/security/cert/Certificate;
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 522
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v0

    .line 523
    :catch_0
    move-exception v2

    .line 524
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v3, "CredentialStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCertificateFromBytes(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFormattedPrivateKey(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 14
    .param p1, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p2, "rsaPublicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 531
    const/4 v0, 0x3

    .line 532
    .local v0, "NO_OF_TYPES":I
    const/4 v1, 0x4

    .line 533
    .local v1, "TYPE_SIZE_IN_BYTES":I
    const/4 v2, 0x4

    .line 534
    .local v2, "VALUE_LEN_SIZE_IN_BYTES":I
    const/4 v5, 0x0

    .line 536
    .local v5, "output":[B
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 537
    :cond_0
    const-string v11, "CredentialStorage"

    const-string v12, "Failed to import privatekey"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 570
    .end local v5    # "output":[B
    .local v6, "output":[B
    :goto_0
    return-object v6

    .line 542
    .end local v6    # "output":[B
    .restart local v5    # "output":[B
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CredentialStorage;->trimByteArray([B)[B

    move-result-object v4

    .line 543
    .local v4, "mod":[B
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CredentialStorage;->trimByteArray([B)[B

    move-result-object v9

    .line 544
    .local v9, "pExp":[B
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/CredentialStorage;->trimByteArray([B)[B

    move-result-object v10

    .line 546
    .local v10, "pubExp":[B
    array-length v11, v4

    array-length v12, v9

    add-int/2addr v11, v12

    array-length v12, v10

    add-int/2addr v11, v12

    add-int/lit8 v8, v11, 0x18

    .line 547
    .local v8, "outputLength":I
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Output Length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 550
    .local v7, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 552
    const/16 v11, 0x120

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 553
    array-length v11, v4

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 554
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 556
    const/16 v11, 0x122

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 557
    array-length v11, v10

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 560
    const/16 v11, 0x123

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 561
    array-length v11, v9

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 562
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 564
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v4    # "mod":[B
    .end local v7    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "outputLength":I
    .end local v9    # "pExp":[B
    .end local v10    # "pubExp":[B
    :goto_1
    move-object v6, v5

    .line 570
    .end local v5    # "output":[B
    .restart local v6    # "output":[B
    goto :goto_0

    .line 565
    .end local v6    # "output":[B
    .restart local v5    # "output":[B
    :catch_0
    move-exception v3

    .line 566
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "CredentialStorage"

    const-string v12, "Unable to format private key for ccm"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "pKeyBytes"    # [B

    .prologue
    .line 506
    const/4 v2, 0x0

    .line 508
    .local v2, "pKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 509
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 515
    return-object v2

    .line 510
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 512
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 513
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/android/settings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 217
    :pswitch_1
    new-instance v0, Lcom/android/settings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 19
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 421
    const/16 v16, 0x0

    .line 422
    .local v16, "pKeyAlias":Ljava/lang/String;
    const/16 v17, 0x0

    .line 423
    .local v17, "pKeyBytes":[B
    const-string v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const-string v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 425
    const-string v2, "user_private_key_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 428
    :cond_0
    const/4 v11, 0x0

    .line 429
    .local v11, "certBytes":[B
    const-string v2, "user_certificate_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const-string v2, "user_certificate_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 433
    :cond_1
    const/4 v9, 0x0

    .line 434
    .local v9, "caCertBytes":[B
    const-string v2, "ca_certificates_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    const-string v2, "ca_certificates_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 438
    :cond_2
    if-eqz v11, :cond_9

    if-eqz v16, :cond_9

    .line 441
    if-eqz p2, :cond_3

    .line 442
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 443
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 444
    const/16 p2, 0x0

    .line 449
    :cond_3
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v3, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 450
    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const-string v2, "USRPKEY_"

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "alias":Ljava/lang/String;
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 452
    .local v4, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 453
    const-string v2, "install_as_uid"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x3f2

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 456
    iput-object v8, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 457
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v13, "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "keystorekeychain"

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    if-eqz p2, :cond_4

    .line 460
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_4
    iput-object v13, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 463
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 465
    if-eqz v17, :cond_7

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/CredentialStorage;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v15

    .line 467
    .local v15, "pKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/CredentialStorage;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v10

    .line 468
    .local v10, "cert":Ljava/security/cert/Certificate;
    const/16 v18, 0x0

    .line 469
    .local v18, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    .line 470
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .restart local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    const/4 v5, 0x3

    check-cast v15, Ljava/security/interfaces/RSAPrivateKey;

    .end local v15    # "pKey":Ljava/security/PrivateKey;
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/settings/CredentialStorage;->getFormattedPrivateKey(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 479
    const-string v2, "CredentialStorage"

    const-string v5, "Error installing private key into CCM, installObjectWithProfile returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v2, 0x0

    .line 502
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v4    # "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v8    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/Certificate;
    .end local v13    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return v2

    .line 453
    .restart local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v4    # "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .restart local v8    # "alias":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 484
    .restart local v13    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 485
    .local v14, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 486
    if-eqz v9, :cond_8

    .line 487
    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 490
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 493
    const-string v2, "CredentialStorage"

    const-string v5, "Error installing certificate into CCM, installCertificate returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    const/4 v2, 0x0

    goto :goto_1

    .line 496
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v4    # "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v8    # "alias":Ljava/lang/String;
    .end local v13    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v12

    .line 497
    .local v12, "ex":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    const-string v2, "CredentialStorage"

    const-string v5, "Error installing certificate into CCM"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v2, 0x0

    goto :goto_1

    .line 502
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_9
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private installIfAvailable()V
    .locals 30

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Bundle;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 289
    .local v5, "bundle":Landroid/os/Bundle;
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 291
    const-string v27, "install_as_uid"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 293
    .local v21, "uid":I
    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const/4 v14, 0x0

    .line 295
    .local v14, "flags":I
    :goto_1
    const-string v27, "senderpackagename"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 297
    .local v20, "packageName":Ljava/lang/String;
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PackageName from CredentialStorage : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v27

    move/from16 v0, v21

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v27

    if-nez v27, :cond_4

    .line 300
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 301
    .local v12, "dstUserId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    .line 304
    .local v19, "myUserId":I
    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 305
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to install credentials as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": cross-user installs"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " may only target wifi uids"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    .end local v12    # "dstUserId":I
    .end local v14    # "flags":I
    .end local v19    # "myUserId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x1

    goto :goto_1

    .line 310
    .restart local v12    # "dstUserId":I
    .restart local v14    # "flags":I
    .restart local v19    # "myUserId":I
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v27, Landroid/content/Intent;

    const-string v28, "com.android.credentials.INSTALL"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v28, 0x2000000

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v15

    .line 313
    .local v15, "installIntent":Landroid/content/Intent;
    new-instance v27, Landroid/os/UserHandle;

    move-object/from16 v0, v27

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 317
    .end local v12    # "dstUserId":I
    .end local v15    # "installIntent":Landroid/content/Intent;
    .end local v19    # "myUserId":I
    :cond_4
    const/4 v8, 0x0

    .line 318
    .local v8, "ccmVersion":Ljava/lang/String;
    const/16 v17, 0x0

    .line 321
    .local v17, "isCCMEnabled":Z
    :try_start_0
    new-instance v11, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v27

    move/from16 v0, v27

    invoke-direct {v11, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 322
    .local v11, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const-string v27, "knox_ccm_policy"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v8

    .line 325
    :goto_2
    const-string v27, "3.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 326
    const-string v27, "CredentialStorage"

    const-string v28, "CCM is available on this device"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 329
    const/16 v17, 0x1

    .line 330
    const-string v27, "CredentialStorage"

    const-string v28, "CCM is available for KeyChain"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v11    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/CredentialStorage;->isCCMSupportKeyAlgorithm(Landroid/os/Bundle;)Z

    move-result v16

    .line 349
    .local v16, "isAlgSupported":Z
    if-eqz v17, :cond_9

    if-eqz v16, :cond_9

    .line 350
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CCM is enabled for this package : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/settings/CredentialStorage;->installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 352
    const-string v27, "CredentialStorage"

    const-string v28, "installCertificateinCCM failed"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .end local v16    # "isAlgSupported":Z
    .restart local v11    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 332
    :cond_7
    :try_start_1
    const-string v27, "CredentialStorage"

    const-string v28, "CCM is not available for KeyChain"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 338
    .end local v11    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :catch_0
    move-exception v13

    .line 339
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v8, 0x0

    .line 340
    const/16 v17, 0x0

    .line 341
    const-string v27, "CredentialStorage"

    const-string v28, "Failed at ClientCertificateManager API isCCMPolicyEnabledForPackage-Exception "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 336
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v11    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_8
    :try_start_2
    const-string v27, "CredentialStorage"

    const-string v28, "CCM is NOT available on this device"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 356
    .end local v11    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v16    # "isAlgSupported":Z
    :cond_9
    const-string v27, "user_private_key_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 357
    const-string v27, "user_private_key_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 358
    .local v18, "key":Ljava/lang/String;
    const-string v27, "user_private_key_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .line 361
    .local v22, "value":[B
    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 364
    const-string v27, "CredentialStorage"

    const-string v28, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v14, 0x0

    .line 368
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_b

    .line 369
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    .end local v18    # "key":Ljava/lang/String;
    .end local v22    # "value":[B
    :cond_b
    const-string v27, "user_certificate_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 375
    const-string v27, "user_certificate_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "certName":Ljava/lang/String;
    const-string v27, "user_certificate_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 378
    .local v9, "certData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v10, v9, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_c

    .line 379
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 384
    .end local v9    # "certData":[B
    .end local v10    # "certName":Ljava/lang/String;
    :cond_c
    sget-boolean v27, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v27, :cond_e

    .line 385
    const-string v27, "wapi_as_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 386
    const-string v27, "wapi_as_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 387
    .local v24, "wapiascertName":Ljava/lang/String;
    const-string v27, "wapi_as_certificates_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v23

    .line 389
    .local v23, "wapiascertData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_d

    .line 390
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 395
    .end local v23    # "wapiascertData":[B
    .end local v24    # "wapiascertName":Ljava/lang/String;
    :cond_d
    const-string v27, "wapi_user_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 396
    const-string v27, "wapi_user_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 397
    .local v26, "wapiuscertName":Ljava/lang/String;
    const-string v27, "wapi_user_certificates_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v25

    .line 399
    .local v25, "wapiuscertData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_e

    .line 400
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 407
    .end local v25    # "wapiuscertData":[B
    .end local v26    # "wapiuscertName":Ljava/lang/String;
    :cond_e
    const-string v27, "ca_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 408
    const-string v27, "ca_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "caListName":Ljava/lang/String;
    const-string v27, "ca_certificates_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 411
    .local v6, "caListData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v7, v6, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_f

    .line 412
    const-string v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    .end local v6    # "caListData":[B
    .end local v7    # "caListName":Ljava/lang/String;
    :cond_f
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    goto/16 :goto_0
.end method

.method private isCCMSupportKeyAlgorithm(Landroid/os/Bundle;)Z
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 941
    if-nez p1, :cond_0

    .line 942
    const/4 v11, 0x1

    .line 1000
    :goto_0
    return v11

    .line 946
    :cond_0
    const-string v11, "user_certificate_data"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 947
    .local v3, "certBytes":[B
    if-eqz v3, :cond_2

    .line 948
    invoke-direct {p0, v3}, Lcom/android/settings/CredentialStorage;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 949
    .local v2, "cert":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_2

    .line 950
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 951
    .local v8, "pk":Ljava/security/PublicKey;
    if-eqz v8, :cond_2

    .line 952
    invoke-interface {v8}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "alg":Ljava/lang/String;
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get algorithm from PublicKey: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v11, "RSA"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 957
    :try_start_0
    move-object v0, v8

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v10, v0

    .line 958
    .local v10, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v10}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 959
    .local v6, "length":I
    const/16 v11, 0x800

    if-le v6, v11, :cond_1

    .line 960
    const/4 v11, 0x0

    goto :goto_0

    .line 962
    .end local v6    # "length":I
    .end local v10    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :catch_0
    move-exception v4

    .line 964
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 968
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v11, "RSA"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_0

    .line 974
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    .end local v8    # "pk":Ljava/security/PublicKey;
    :cond_2
    const-string v11, "user_private_key_data"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 976
    .local v7, "pKeyBytes":[B
    if-eqz v7, :cond_4

    .line 979
    :try_start_1
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 980
    .local v5, "keyFactory":Ljava/security/KeyFactory;
    new-instance v11, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v11, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v11}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v8

    .line 981
    .local v8, "pk":Ljava/security/PrivateKey;
    const-string v11, "CredentialStorage"

    const-string v12, "Generate RSA PrivateKey: success"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 983
    :try_start_2
    move-object v0, v8

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    move-object v9, v0

    .line 984
    .local v9, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    .line 985
    .restart local v6    # "length":I
    const/16 v11, 0x800

    if-le v6, v11, :cond_3

    .line 986
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 988
    .end local v6    # "length":I
    .end local v9    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :catch_1
    move-exception v4

    .line 990
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 992
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "length":I
    .restart local v9    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_3
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 993
    .end local v5    # "keyFactory":Ljava/security/KeyFactory;
    .end local v6    # "length":I
    .end local v8    # "pk":Ljava/security/PrivateKey;
    .end local v9    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :catch_2
    move-exception v4

    .line 994
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v11, "CredentialStorage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrivateKey key is not RSA: err msg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1000
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 268
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 270
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "algId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "algName":Ljava/lang/String;
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 276
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_0
    return v5

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "CredentialStorage"

    const-string v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isKnoxUser()Z
    .locals 2

    .prologue
    .line 841
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 842
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserRemoveCertificatesAllowed(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1006
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1009
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v4, "isUserRemoveCertificatesAllowed"

    invoke-static {p0, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    .local v0, "isPolicyEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isPolicyEnabled":Z
    :cond_0
    move v0, v2

    .line 1009
    goto :goto_0
.end method

.method private trimByteArray([B)[B
    .locals 4
    .param p1, "inBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 574
    if-nez p1, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    .line 578
    :cond_0
    aget-byte v1, p1, v3

    if-nez v1, :cond_1

    .line 579
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    .line 580
    .local v0, "outBytes":[B
    const/4 v1, 0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .end local v0    # "outBytes":[B
    :cond_1
    move-object v0, p1

    .line 583
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 816
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 821
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 822
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 823
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 826
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->isKnoxUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 829
    .restart local v0    # "password":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    goto :goto_0

    .line 836
    .end local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 181
    .local v2, "userManager":Landroid/os/UserManager;
    const-string v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    const-string v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    new-instance v3, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    .line 200
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    .line 194
    :cond_2
    const-string v3, "com.android.credentials.UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_3

    .line 195
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method
