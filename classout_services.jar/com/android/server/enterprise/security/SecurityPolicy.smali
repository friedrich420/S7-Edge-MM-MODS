.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;,
        Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    }
.end annotation


# static fields
.field private static final AES256ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final AES_BLOCK_SIZE:I = 0x1000

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEVICE_LAST_BOOT_SAFE_MODE_ACTION:Ljava/lang/String; = "edm.intent.action.LAST_BOOT_SAFE_MODE"

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field private static final InitialVectorNum:I = 0x10

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field public static final SECURITY_POLICY_PACKAGE_MARKER:Ljava/lang/String; = "SecurityPolicy"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field private static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMediaFormatRet:Z

.field private mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPersona:Landroid/os/PersonaManager;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureRandom:Ljava/security/SecureRandom;

.field private pkgNameList_allowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, mMediaFormatRet:Z

    .line 187
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPersonaObservers:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, pkgNameList_allowed:Ljava/util/ArrayList;

    .line 205
    iput-object v4, p0, mSecureRandom:Ljava/security/SecureRandom;

    .line 206
    iput-object v4, p0, secretKey:Ljavax/crypto/SecretKey;

    .line 229
    iput-object v4, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 246
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v0, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 2222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPendingGetCerificates:Ljava/util/HashMap;

    .line 212
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 216
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v3, "filterBoot":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mBannerMap:Ljava/util/Map;

    .line 222
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-nez v0, :cond_77

    .line 223
    iget-object v0, p0, pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_76
    return-void

    .line 226
    :cond_77
    iget-object v0, p0, pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.email.provider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, mMediaFormatRet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .registers 1

    .prologue
    .line 168
    sget-object v0, mBannerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1}, saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 168
    invoke-direct {p0}, isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I

    .prologue
    .line 2410
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 23
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I
    .param p5, "userId"    # I

    .prologue
    .line 2416
    const/4 v11, 0x1

    .line 2418
    .local v11, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2420
    .local v12, "token":J
    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_bd

    move-result v14

    if-nez v14, :cond_14

    .line 2421
    const/4 v11, 0x0

    .line 2453
    :cond_10
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    return v11

    .line 2423
    :cond_14
    :try_start_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2424
    .local v4, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c2

    .line 2425
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    :goto_24
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_28
    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2431
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v10

    .line 2433
    .local v10, "pemCert":[B
    if-eqz v10, :cond_28

    .line 2434
    invoke-static {v10}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v6

    .line 2435
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 2436
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_5d

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5d

    .line 2437
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v14

    and-int/2addr v11, v14

    .line 2440
    const-string v14, "USRCERT_"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 2443
    move-object/from16 v0, p0

    iget-object v14, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "USRPKEY_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_bb
    .catchall {:try_start_14 .. :try_end_bb} :catchall_bd

    goto/16 :goto_28

    .line 2453
    .end local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "pemCert":[B
    :catchall_bd
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .line 2427
    .restart local v4    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c2
    :try_start_c2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    :try_end_cd
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_bd

    move-result-object v4

    goto/16 :goto_24
.end method

.method private enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 1987
    const/4 v2, 0x1

    .line 1988
    .local v2, "result":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1990
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1992
    .local v0, "callingUid":I
    if-nez p2, :cond_a

    .line 1993
    const/4 p3, 0x0

    .line 1995
    :cond_a
    :try_start_a
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string/jumbo v5, "deviceEnrolled"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1999
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "bannerText"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e

    .line 2006
    :goto_1d
    return v2

    .line 2003
    :catch_1e
    move-exception v1

    .line 2004
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 376
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 385
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 368
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    .local p1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-direct {p0, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1794
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1797
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_a
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 1799
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1800
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_30} :catch_93
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_30} :catch_65
    .catchall {:try_start_a .. :try_end_30} :catchall_7d

    .line 1801
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1802
    .local v4, "resultLine":Ljava/lang/String;
    :goto_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 1803
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3a} :catch_90
    .catchall {:try_start_31 .. :try_end_3a} :catchall_8d

    goto :goto_31

    .line 1805
    :catch_3b
    move-exception v0

    move-object v2, v3

    .line 1806
    .end local v1    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "resultLine":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_3d
    :try_start_3d
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_7d

    .line 1811
    if-eqz v2, :cond_4a

    .line 1812
    :try_start_47
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_5c

    .line 1818
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4a
    :goto_4a
    return-object v5

    .line 1811
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :cond_4b
    if-eqz v3, :cond_50

    .line 1812
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    :cond_50
    move-object v2, v3

    .line 1816
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 1814
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_52
    move-exception v0

    .line 1815
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 1817
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 1814
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 1815
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 1807
    .end local v0    # "e":Ljava/io/IOException;
    :catch_65
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_66
    :try_start_66
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_7d

    .line 1811
    if-eqz v2, :cond_4a

    .line 1812
    :try_start_70
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_4a

    .line 1814
    :catch_74
    move-exception v0

    .line 1815
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 1810
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7d
    move-exception v6

    .line 1811
    :goto_7e
    if-eqz v2, :cond_83

    .line 1812
    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 1816
    :cond_83
    :goto_83
    throw v6

    .line 1814
    :catch_84
    move-exception v0

    .line 1815
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_83

    .line 1810
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :catchall_8d
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_7e

    .line 1807
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_90
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_66

    .line 1805
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_93
    move-exception v0

    goto :goto_3d
.end method

.method private formatExternalStorageCard()Z
    .registers 11

    .prologue
    .line 715
    :try_start_0
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v5

    .line 717
    .local v5, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v5}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 734
    .local v6, "storageVolumes":[Landroid/os/storage/StorageVolume;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 735
    .local v4, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 737
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 738
    .local v2, "lock":Ljava/lang/Object;
    new-instance v3, Lcom/android/server/enterprise/security/SecurityPolicy$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy$2;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .line 756
    .local v3, "mediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 757
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    const-string/jumbo v7, "file"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 759
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 761
    monitor-enter v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_53

    .line 763
    const-wide/16 v8, 0x1b58

    :try_start_3a
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_46
    .catchall {:try_start_3a .. :try_end_3d} :catchall_50

    .line 767
    :goto_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_50

    .line 768
    :try_start_3e
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_53

    .line 774
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_43
    iget-boolean v7, p0, mMediaFormatRet:Z

    return v7

    .line 764
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v2    # "lock":Ljava/lang/Object;
    .restart local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .restart local v4    # "sm":Landroid/os/storage/StorageManager;
    .restart local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .restart local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_46
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v7, "SecurityPolicy"

    const-string/jumbo v8, "formatStorageCard - InterruptedException"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 767
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_50
    move-exception v7

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_50

    :try_start_52
    throw v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 770
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v3    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v5    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v6    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_53
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SecurityPolicy"

    const-string/jumbo v8, "formatStorageCard fail"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;
    .registers 21
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1124
    .local v14, "token":J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v16 .. v17}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .line 1125
    .local v9, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1f} :catch_d3
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_1f} :catch_f7
    .catchall {:try_start_9 .. :try_end_1f} :catchall_11f

    move-result-object v10

    .line 1127
    .local v10, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v10, :cond_ac

    .line 1129
    :try_start_22
    invoke-interface {v10}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v13

    .line 1130
    .local v13, "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1131
    .local v2, "alias":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3d} :catch_8d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_ce

    move-result-object v4

    .line 1132
    .local v4, "certData":[B
    if-eqz v4, :cond_2a

    .line 1134
    :try_start_40
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v11

    .line 1135
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_48
    :goto_48
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1136
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_48

    .line 1137
    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v5}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 1138
    .local v5, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v5, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1139
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 1140
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1141
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_6f} :catch_70
    .catch Ljava/security/cert/CertificateException; {:try_start_40 .. :try_end_6f} :catch_b0
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_6f} :catch_8d
    .catchall {:try_start_40 .. :try_end_6f} :catchall_ce

    goto :goto_48

    .line 1144
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_70
    move-exception v6

    .line 1145
    .local v6, "e":Ljava/io/IOException;
    :try_start_71
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_8c} :catch_8d
    .catchall {:try_start_71 .. :try_end_8c} :catchall_ce

    goto :goto_2a

    .line 1151
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certData":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_8d
    move-exception v6

    .line 1152
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_8e
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_8e .. :try_end_a9} :catchall_ce

    .line 1154
    :try_start_a9
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_a9 .. :try_end_ac} :catch_d3
    .catch Ljava/lang/AssertionError; {:try_start_a9 .. :try_end_ac} :catch_f7
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_11f

    .line 1162
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_ac
    :goto_ac
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_af
    return-object v12

    .line 1146
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v4    # "certData":[B
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_b0
    move-exception v6

    .line 1147
    .local v6, "e":Ljava/security/cert/CertificateException;
    :try_start_b1
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificates "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_cc} :catch_8d
    .catchall {:try_start_b1 .. :try_end_cc} :catchall_ce

    goto/16 :goto_2a

    .line 1154
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certData":[B
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_ce
    move-exception v16

    :try_start_cf
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v16
    :try_end_d3
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d3} :catch_d3
    .catch Ljava/lang/AssertionError; {:try_start_cf .. :try_end_d3} :catch_f7
    .catchall {:try_start_cf .. :try_end_d3} :catchall_11f

    .line 1157
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_d3
    move-exception v6

    .line 1158
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_d4
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_d4 .. :try_end_ef} :catchall_11f

    .line 1162
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_af

    .line 1154
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .restart local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f3
    :try_start_f3
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_f6
    .catch Ljava/lang/InterruptedException; {:try_start_f3 .. :try_end_f6} :catch_d3
    .catch Ljava/lang/AssertionError; {:try_start_f3 .. :try_end_f6} :catch_f7
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_11f

    goto :goto_ac

    .line 1159
    .end local v9    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v10    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v13    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_f7
    move-exception v6

    .line 1160
    .local v6, "e":Ljava/lang/AssertionError;
    :try_start_f8
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_f8 .. :try_end_11b} :catchall_11f

    .line 1162
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_af

    .end local v6    # "e":Ljava/lang/AssertionError;
    :catchall_11f
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 232
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 235
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    .registers 4

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "mResult":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 483
    .local v1, "mSecureRandom":Ljava/security/SecureRandom;
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .end local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 484
    .restart local v0    # "mResult":Ljavax/crypto/spec/IvParameterSpec;
    return-object v0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .registers 4
    .param p1, "keystore"    # I

    .prologue
    .line 2548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2549
    .local v0, "keystores":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_e

    .line 2550
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    :cond_e
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_22

    .line 2553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 2554
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    :cond_1d
    const-string v1, "Wi-Fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    :cond_22
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_36

    .line 2559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_31

    .line 2560
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    :cond_31
    const-string v1, "VPN and Apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_41

    .line 2566
    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .registers 11
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;

    .prologue
    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-direct {p0, p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1236
    .local v4, "token":J
    if-eqz p1, :cond_4b

    :try_start_b
    invoke-direct {p0}, isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1237
    new-instance v1, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v1}, Landroid/app/enterprise/CertificateInfo;-><init>()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_4f

    .line 1238
    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    :try_start_16
    iget-object v6, p0, mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    .line 1239
    .local v3, "pemCert":[B
    if-eqz v3, :cond_4a

    .line 1241
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v2

    .line 1242
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4a

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 1243
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v6}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_54

    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_4a
    move-object v0, v1

    .line 1248
    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v3    # "pemCert":[B
    .restart local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_4b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1251
    return-object v0

    .line 1248
    :catchall_4f
    move-exception v6

    :goto_50
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :catchall_54
    move-exception v6

    move-object v0, v1

    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    goto :goto_50
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1263
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1267
    invoke-direct {p0, p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "names":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1271
    .local v2, "token":J
    if-eqz p1, :cond_1b

    :try_start_b
    invoke-direct {p0, p3}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1272
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_25

    move-result-object v0

    .line 1275
    :cond_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    if-eqz v0, :cond_2a

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_24
    return-object v1

    .line 1275
    :catchall_25
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1278
    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_24
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .registers 25
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v15, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1079
    .local v16, "token":J
    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v18

    if-eqz v18, :cond_c9

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 1082
    .local v13, "names":[Ljava/lang/String;
    if-eqz v13, :cond_c9

    .line 1083
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_2d
    if-ge v10, v11, :cond_c9

    aget-object v12, v4, v10

    .line 1084
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v14

    .line 1086
    .local v14, "pemCert":[B
    if-eqz v14, :cond_c4

    .line 1087
    invoke-static {v14}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v8

    .line 1088
    .local v8, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1089
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_60

    .line 1090
    new-instance v7, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v7}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 1091
    .local v7, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v7, v6}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1092
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 1093
    invoke-virtual {v7, v12}, Landroid/app/enterprise/CertificateInfo;->setAlias(Ljava/lang/String;)V

    .line 1094
    const-string v18, "USRCERT_"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_bb

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "USRPKEY_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1097
    .local v5, "arrayPKeys":[Ljava/lang/String;
    if-eqz v5, :cond_bb

    array-length v0, v5

    move/from16 v18, v0

    if-eqz v18, :cond_bb

    .line 1098
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/enterprise/CertificateInfo;->setHasPrivateKey(Z)V

    .line 1101
    .end local v5    # "arrayPKeys":[Ljava/lang/String;
    :cond_bb
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catchall {:try_start_9 .. :try_end_be} :catchall_bf

    goto :goto_60

    .line 1109
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "pemCert":[B
    :catchall_bf
    move-exception v18

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1083
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v11    # "len$":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v14    # "pemCert":[B
    :cond_c4
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_2d

    .line 1109
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "pemCert":[B
    :cond_c9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    return-object v15
.end method

.method private getService()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 240
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersona:Landroid/os/PersonaManager;

    .line 242
    :cond_11
    iget-object v0, p0, mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSessionKey()Ljava/security/Key;
    .registers 5

    .prologue
    .line 468
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, mSecureRandom:Ljava/security/SecureRandom;

    .line 469
    const/4 v1, 0x0

    .line 471
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    :try_start_8
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 472
    const/16 v2, 0x100

    iget-object v3, p0, mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 473
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, secretKey:Ljavax/crypto/SecretKey;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1b} :catch_1e

    .line 477
    :goto_1b
    iget-object v2, p0, secretKey:Ljavax/crypto/SecretKey;

    return-object v2

    .line 474
    :catch_1e
    move-exception v0

    .line 475
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1b
.end method

.method private getSystemCertificatesAsUser(ZI)Ljava/util/List;
    .registers 22
    .param p1, "includeDisabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .local v13, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1172
    .local v14, "token":J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v16 .. v17}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v10

    .line 1174
    .local v10, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1f} :catch_db
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_1f} :catch_ff
    .catchall {:try_start_9 .. :try_end_1f} :catchall_127

    move-result-object v11

    .line 1175
    .local v11, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v11, :cond_b4

    .line 1177
    :try_start_22
    invoke-interface {v11}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v3

    .line 1178
    .local v3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2a
    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_fb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1179
    .local v2, "alias":Ljava/lang/String;
    new-instance v6, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v6}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 1180
    .local v6, "certInfo":Landroid/app/enterprise/CertificateInfo;
    const/4 v12, 0x0

    .line 1181
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move/from16 v0, p1

    invoke-interface {v11, v2, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_95
    .catchall {:try_start_22 .. :try_end_41} :catchall_d6

    move-result-object v5

    .line 1183
    .local v5, "certData":[B
    if-eqz v5, :cond_2a

    .line 1185
    :try_start_44
    invoke-static {v5}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v12

    .line 1186
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1187
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_4c

    .line 1188
    invoke-virtual {v6, v4}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1189
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 1190
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1191
    invoke-interface {v11, v2}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/enterprise/CertificateInfo;->setEnabled(Z)V

    .line 1192
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_77} :catch_78
    .catch Ljava/security/cert/CertificateException; {:try_start_44 .. :try_end_77} :catch_b8
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_77} :catch_95
    .catchall {:try_start_44 .. :try_end_77} :catchall_d6

    goto :goto_4c

    .line 1195
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_78
    move-exception v7

    .line 1196
    .local v7, "e":Ljava/io/IOException;
    :try_start_79
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_94} :catch_95
    .catchall {:try_start_79 .. :try_end_94} :catchall_d6

    goto :goto_2a

    .line 1202
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certData":[B
    .end local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_95
    move-exception v7

    .line 1203
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_96
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_d6

    .line 1205
    :try_start_b1
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_b1 .. :try_end_b4} :catch_db
    .catch Ljava/lang/AssertionError; {:try_start_b1 .. :try_end_b4} :catch_ff
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_127

    .line 1213
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_b4
    :goto_b4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1215
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_b7
    return-object v13

    .line 1197
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "certData":[B
    .restart local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_b8
    move-exception v7

    .line 1198
    .local v7, "e":Ljava/security/cert/CertificateException;
    :try_start_b9
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_d4} :catch_95
    .catchall {:try_start_b9 .. :try_end_d4} :catchall_d6

    goto/16 :goto_2a

    .line 1205
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certData":[B
    .end local v6    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_d6
    move-exception v16

    :try_start_d7
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v16
    :try_end_db
    .catch Ljava/lang/InterruptedException; {:try_start_d7 .. :try_end_db} :catch_db
    .catch Ljava/lang/AssertionError; {:try_start_d7 .. :try_end_db} :catch_ff
    .catchall {:try_start_d7 .. :try_end_db} :catchall_127

    .line 1208
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_db
    move-exception v7

    .line 1209
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_dc
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_dc .. :try_end_f7} :catchall_127

    .line 1213
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b7

    .line 1205
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_fb
    :try_start_fb
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_fe} :catch_db
    .catch Ljava/lang/AssertionError; {:try_start_fb .. :try_end_fe} :catch_ff
    .catchall {:try_start_fb .. :try_end_fe} :catchall_127

    goto :goto_b4

    .line 1210
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v11    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_ff
    move-exception v7

    .line 1211
    .local v7, "e":Ljava/lang/AssertionError;
    :try_start_100
    const-string v16, "SecurityPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getSystemCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catchall {:try_start_100 .. :try_end_123} :catchall_127

    .line 1213
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b7

    .end local v7    # "e":Ljava/lang/AssertionError;
    :catchall_127
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p1, :cond_4

    .line 403
    :cond_3
    :goto_3
    return-object v1

    .line 399
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p1

    goto :goto_3

    .line 400
    :catch_10
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "is string valid?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private isBannerApp(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .prologue
    .line 2072
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2073
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2074
    const/4 v1, 0x1

    .line 2076
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static isCa(Ljava/security/cert/Certificate;)Z
    .registers 10
    .param p0, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v7, 0x0

    .line 2474
    const/4 v6, 0x0

    .line 2475
    .local v6, "x509cert":Ljava/security/cert/X509Certificate;
    :try_start_2
    instance-of v8, p0, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_12

    .line 2476
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 2480
    const-string v8, "2.5.29.19"

    invoke-virtual {v6, v8}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 2481
    .local v1, "asn1EncodedBytes":[B
    if-nez v1, :cond_13

    .line 2490
    .end local v1    # "asn1EncodedBytes":[B
    :cond_12
    :goto_12
    return v7

    .line 2484
    .restart local v1    # "asn1EncodedBytes":[B
    :cond_13
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 2486
    .local v2, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    .line 2487
    .local v4, "octets":[B
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 2488
    .local v5, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_34} :catch_36

    move-result v7

    goto :goto_12

    .line 2489
    .end local v1    # "asn1EncodedBytes":[B
    .end local v2    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v4    # "octets":[B
    .end local v5    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_36
    move-exception v3

    .line 2490
    .local v3, "e":Ljava/io/IOException;
    goto :goto_12
.end method

.method private isLastBootInSafeMode()Z
    .registers 4

    .prologue
    .line 2169
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "deviceBootMode"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_15

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2172
    const/4 v1, 0x1

    .line 2174
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isNativeKeyStoreUnlocked()Z
    .registers 2

    .prologue
    .line 1339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 1343
    const/4 v1, 0x0

    .line 1345
    .local v1, "isUnlocked":Z
    :try_start_1
    iget-object v2, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_9} :catch_d

    if-ne v2, v3, :cond_c

    .line 1346
    const/4 v1, 0x1

    .line 1354
    :cond_c
    :goto_c
    return v1

    .line 1348
    :catch_d
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isProcOrSysFolder(Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1775
    const-string/jumbo v3, "sys"

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1777
    .local v0, "parsedPath":[Ljava/lang/String;
    aget-object v3, v0, v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1779
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    aget-object v3, v0, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1789
    :cond_2c
    :goto_2c
    return v1

    .line 1783
    :cond_2d
    const-string/jumbo v3, "proc"

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1784
    aget-object v3, v0, v2

    const-string v4, "/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1785
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    aget-object v3, v0, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_56
    move v1, v2

    .line 1789
    goto :goto_2c
.end method

.method private isUserRestrictedFolder(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1753
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1755
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 1757
    .local v0, "ret":Z
    invoke-direct {p0, p1}, isProcOrSysFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1759
    const/4 v0, 0x1

    .line 1770
    :cond_d
    :goto_d
    return v0

    .line 1761
    :cond_e
    const-string v2, "/data/user/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    .line 1765
    :cond_31
    const-string v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    .line 1766
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .registers 13
    .param p1, "fdir"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "outFile"    # Ljava/io/PrintWriter;

    .prologue
    .line 1727
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1728
    const/16 v6, 0x14

    if-ge p2, v6, :cond_7e

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1731
    :try_start_10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1732
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1737
    .local v5, "listFiles":[Ljava/io/File;
    if-eqz v5, :cond_7e

    .line 1738
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_6a
    if-ge v3, v4, :cond_7e

    aget-object v2, v0, v3

    .line 1739
    .local v2, "f":Ljava/io/File;
    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v2, v6, p3}, listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_73} :catch_76

    .line 1738
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1744
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "listFiles":[Ljava/io/File;
    :catch_76
    move-exception v1

    .line 1745
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1749
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7e
    return-void
.end method

.method private needtoCheckPackageCaller()Z
    .registers 4

    .prologue
    .line 2526
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2527
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_1a

    iget-object v1, p0, pkgNameList_allowed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2528
    const/4 v1, 0x0

    .line 2530
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 1053
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1054
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1055
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1056
    add-int/lit8 v1, v1, -0x1

    .line 1053
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1052
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1060
    .end local v1    # "j":I
    :cond_2a
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "storeType"    # I

    .prologue
    .line 1305
    const/4 v0, 0x0

    .line 1306
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1308
    .local v2, "token":J
    :try_start_5
    invoke-direct {p0}, isNativeKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1309
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1312
    const-string v1, "USRCERT_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1315
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_50

    move-result v1

    and-int/2addr v0, v1

    .line 1320
    :cond_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    return v0

    .line 1320
    :catchall_50
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 8
    .param p1, "keyChainService"    # Landroid/security/IKeyChainService;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 2276
    const/4 v0, 0x0

    .line 2278
    .local v0, "certificateAlias":Ljava/lang/String;
    if-eqz p1, :cond_11

    .line 2280
    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_31
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_10} :catch_50

    move-result-object v0

    .line 2291
    :cond_11
    :goto_11
    return-object v0

    .line 2282
    :catch_12
    move-exception v1

    .line 2283
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2284
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_31
    move-exception v1

    .line 2285
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2286
    .end local v1    # "e":Ljava/io/IOException;
    :catch_50
    move-exception v1

    .line 2287
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveCertificateAliasFromKeyChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private saveDeviceBootMode(Z)Z
    .registers 9
    .param p1, "isSafe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2155
    const/4 v1, 0x1

    .line 2158
    .local v1, "result":Z
    :try_start_3
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "deviceBootMode"

    if-eqz p1, :cond_32

    move v4, v2

    :goto_b
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2159
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device safe mode saved in generic table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_34

    :goto_22
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_36

    .line 2164
    :goto_31
    return v1

    :cond_32
    move v4, v3

    .line 2158
    goto :goto_b

    :cond_34
    move v2, v3

    .line 2159
    goto :goto_22

    .line 2160
    :catch_36
    move-exception v0

    .line 2161
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_31
.end method

.method private sendIntentToSettings(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2538
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2539
    .local v0, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    iget-boolean v1, p0, mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 2540
    return-void
.end method

.method private validateKeystoreParam(I)Z
    .registers 5
    .param p1, "keystore"    # I

    .prologue
    .line 2460
    const/4 v0, 0x7

    .line 2461
    .local v0, "all":I
    const/4 v1, 0x1

    .line 2462
    .local v1, "ret":Z
    and-int v2, p1, v0

    if-nez v2, :cond_8

    .line 2464
    const/4 v1, 0x0

    .line 2469
    :cond_7
    :goto_7
    return v1

    .line 2465
    :cond_8
    or-int v2, p1, v0

    if-eq v2, v0, :cond_7

    .line 2467
    const/4 v1, 0x0

    goto :goto_7
.end method


# virtual methods
.method public changeCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "oldpassword"    # Ljava/lang/String;
    .param p3, "newpassword"    # Ljava/lang/String;

    .prologue
    .line 1382
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1383
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1544
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1545
    invoke-virtual {p0, p1}, resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    .line 2295
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_27

    .line 2296
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2301
    :goto_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2302
    .local v8, "userId":I
    const/16 v16, 0x1

    .line 2303
    .local v16, "ret":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_24

    if-eqz p2, :cond_24

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2304
    :cond_24
    const/16 v16, 0x0

    .line 2405
    .end local v16    # "ret":Z
    :cond_26
    :goto_26
    return v16

    .line 2298
    .end local v8    # "userId":I
    :cond_27
    invoke-direct/range {p0 .. p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_8

    .line 2306
    .restart local v8    # "userId":I
    .restart local v16    # "ret":Z
    :cond_2c
    const/4 v13, 0x0

    .line 2307
    .local v13, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v14, 0x0

    .line 2310
    .local v14, "keyChainService":Landroid/security/IKeyChainService;
    const/4 v10, 0x0

    .line 2311
    .local v10, "certificateAlias":Ljava/lang/String;
    :try_start_2f
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v15

    .line 2313
    .local v15, "removeCert":Ljava/security/cert/Certificate;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_16d

    move-result-wide v18

    .line 2316
    .local v18, "token":J
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4c

    .line 2317
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v13

    .line 2318
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v14

    .line 2322
    :cond_4c
    invoke-static {v8}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 2323
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_13d

    .line 2324
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    .line 2329
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v9

    .line 2330
    .local v9, "cert":Ljava/security/cert/Certificate;
    const/4 v12, 0x0

    .line 2331
    .local v12, "issuer":Ljava/lang/String;
    instance-of v2, v9, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_72

    .line 2332
    move-object v0, v9

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    .line 2333
    .local v17, "x509cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2335
    .end local v17    # "x509cert":Ljava/security/cert/X509Certificate;
    :cond_72
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " has requested to delete a certificate. Keystore(s) : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Alias : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v10, :cond_143

    const-string v7, "Not available"

    :goto_b6
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Subject : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getSubject()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", Issuer : "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e1
    .catch Ljava/lang/AssertionError; {:try_start_3b .. :try_end_e1} :catch_146
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_e1} :catch_174
    .catchall {:try_start_3b .. :try_end_e1} :catchall_199

    .line 2350
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "issuer":Ljava/lang/String;
    :cond_e1
    :try_start_e1
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2353
    .end local v16    # "ret":Z
    :goto_e4
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_f0

    .line 2354
    invoke-static {v15}, isCa(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-nez v2, :cond_19e

    .line 2355
    and-int/lit8 v16, v16, 0x0

    .line 2387
    :cond_f0
    :goto_f0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_112

    .line 2388
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CACERT_"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v4}, deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int v16, v16, v2

    .line 2390
    .restart local v16    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USRCERT_"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v4}, deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int v16, v16, v2

    .line 2393
    .end local v16    # "ret":Z
    :cond_112
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_136

    .line 2394
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CACERT_"

    const/4 v7, 0x4

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v3 .. v8}, deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    and-int v16, v16, v2

    .line 2396
    .restart local v16    # "ret":Z
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USRCERT_"

    const/4 v7, 0x4

    move-object/from16 v3, p0

    move-object v4, v15

    invoke-direct/range {v3 .. v8}, deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_133
    .catchall {:try_start_e1 .. :try_end_133} :catchall_16d

    move-result v2

    and-int v16, v16, v2

    .line 2400
    .end local v16    # "ret":Z
    :cond_136
    if-eqz v13, :cond_26

    .line 2401
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto/16 :goto_26

    .line 2326
    .restart local v16    # "ret":Z
    :cond_13d
    :try_start_13d
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/CertificateInfo;->getAlias()Ljava/lang/String;
    :try_end_140
    .catch Ljava/lang/AssertionError; {:try_start_13d .. :try_end_140} :catch_146
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_140} :catch_174
    .catchall {:try_start_13d .. :try_end_140} :catchall_199

    move-result-object v10

    goto/16 :goto_5c

    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v12    # "issuer":Ljava/lang/String;
    :cond_143
    move-object v7, v10

    .line 2335
    goto/16 :goto_b6

    .line 2343
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "issuer":Ljava/lang/String;
    :catch_146
    move-exception v11

    .line 2344
    .local v11, "e":Ljava/lang/AssertionError;
    :try_start_147
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificateFromKeystore - is KeyChainService running for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_166
    .catchall {:try_start_147 .. :try_end_166} :catchall_199

    .line 2345
    and-int/lit8 v16, v16, 0x0

    .line 2350
    .local v16, "ret":I
    :try_start_168
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_16d

    goto/16 :goto_e4

    .line 2400
    .end local v11    # "e":Ljava/lang/AssertionError;
    .end local v15    # "removeCert":Ljava/security/cert/Certificate;
    .end local v16    # "ret":I
    .end local v18    # "token":J
    :catchall_16d
    move-exception v2

    if-eqz v13, :cond_173

    .line 2401
    invoke-virtual {v13}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_173
    throw v2

    .line 2346
    .restart local v15    # "removeCert":Ljava/security/cert/Certificate;
    .local v16, "ret":Z
    .restart local v18    # "token":J
    :catch_174
    move-exception v11

    .line 2347
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_175
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificateFromKeystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_192
    .catchall {:try_start_175 .. :try_end_192} :catchall_199

    .line 2348
    and-int/lit8 v16, v16, 0x0

    .line 2350
    .local v16, "ret":I
    :try_start_194
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e4

    .end local v11    # "e":Ljava/lang/InterruptedException;
    .local v16, "ret":Z
    :catchall_199
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2357
    .end local v16    # "ret":Z
    :cond_19e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a1
    .catchall {:try_start_194 .. :try_end_1a1} :catchall_16d

    move-result-wide v18

    .line 2360
    if-nez v10, :cond_1aa

    .line 2361
    :try_start_1a4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_1a9
    .catchall {:try_start_1a4 .. :try_end_1a9} :catchall_1e1

    move-result-object v10

    .line 2369
    :cond_1aa
    if-eqz v10, :cond_1b4

    if-eqz v14, :cond_1b4

    .line 2371
    :try_start_1ae
    invoke-interface {v14, v10}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1b1
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1b1} :catch_1c0
    .catchall {:try_start_1ae .. :try_end_1b1} :catchall_1e1

    move-result v2

    and-int v16, v16, v2

    .line 2378
    :cond_1b4
    :goto_1b4
    :try_start_1b4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2382
    if-eqz v16, :cond_f0

    .line 2383
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, sendIntentToSettings(I)V
    :try_end_1be
    .catchall {:try_start_1b4 .. :try_end_1be} :catchall_16d

    goto/16 :goto_f0

    .line 2372
    :catch_1c0
    move-exception v11

    .line 2373
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1c1
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificateFromKeystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1de
    .catchall {:try_start_1c1 .. :try_end_1de} :catchall_1e1

    .line 2374
    and-int/lit8 v16, v16, 0x0

    .restart local v16    # "ret":Z
    goto :goto_1b4

    .line 2378
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v16    # "ret":Z
    :catchall_1e1
    move-exception v2

    :try_start_1e2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_1e6
    .catchall {:try_start_1e2 .. :try_end_1e6} :catchall_16d
.end method

.method public deleteCertificateFromUserKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    .line 2505
    const/4 v0, 0x0

    return v0
.end method

.method public enableRebootBanner(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .prologue
    .line 1932
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v9

    .line 1933
    .local v9, "result":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1935
    .local v6, "userId":I
    if-eqz v9, :cond_5c

    .line 1936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1938
    .local v10, "token":J
    if-eqz p2, :cond_5d

    .line 1939
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has enabled reboot banner."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_85

    .line 1948
    :goto_3a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1950
    if-eqz v9, :cond_5c

    if-nez v6, :cond_5c

    .line 1951
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1953
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_48
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "enableRebootBanner"

    invoke-virtual {p0, p1}, isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1954
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "enableRebootBanner calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_8a

    .line 1961
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v10    # "token":J
    :cond_5c
    :goto_5c
    return v9

    .line 1943
    .restart local v10    # "token":J
    :cond_5d
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_60
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has disabled reboot banner."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_60 .. :try_end_84} :catchall_85

    goto :goto_3a

    .line 1948
    :catchall_85
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1955
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_8a
    move-exception v7

    .line 1956
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public enableRebootBannerWithText(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 1965
    invoke-direct {p0, p1, p2, p3}, enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v7

    .line 1966
    .local v7, "result":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1967
    .local v6, "userId":I
    if-eqz v7, :cond_40

    .line 1968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1970
    .local v8, "token":J
    if-eqz p2, :cond_41

    .line 1971
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_15
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has enabled reboot banner with text "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_69

    .line 1980
    :goto_3d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    .end local v8    # "token":J
    :cond_40
    return v7

    .line 1975
    .restart local v8    # "token":J
    :cond_41
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has disabled reboot banner."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_68
    .catchall {:try_start_44 .. :try_end_68} :catchall_69

    goto :goto_3d

    .line 1980
    :catchall_69
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public formatInternalStorage(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "includeSystemDirectory"    # Z
    .param p3, "includeDataDirectory"    # Z

    .prologue
    .line 645
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileList"    # [Ljava/lang/String;
    .param p3, "filters"    # [Ljava/lang/String;

    .prologue
    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isExternal"    # Z

    .prologue
    .line 658
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 660
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mMediaFormatRet:Z

    .line 661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 662
    .local v12, "ident":J
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v15

    .line 664
    .local v15, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v15}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v17

    .line 665
    .local v17, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const/4 v11, 0x0

    .line 667
    .local v11, "isExtSDsupported":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/VolumeInfo;

    .line 668
    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v16, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 669
    const/4 v11, 0x1

    goto :goto_1d

    .line 674
    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_43
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_cf

    .line 675
    const/4 v2, 0x1

    if-ne v11, v2, :cond_b8

    .line 676
    :try_start_4b
    invoke-direct/range {p0 .. p0}, formatExternalStorageCard()Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_c5

    .line 701
    :goto_4e
    move-object/from16 v0, p0

    iget-boolean v2, v0, mMediaFormatRet:Z

    if-eqz v2, :cond_87

    if-eqz p2, :cond_87

    .line 702
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested wipe of device external memory."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 708
    :cond_87
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "formatStorageCard() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, mMediaFormatRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isExternal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-boolean v2, v0, mMediaFormatRet:Z

    return v2

    .line 678
    :cond_b8
    :try_start_b8
    const-string v2, "SecurityPolicy"

    const-string v3, "This device doesn\'t suppot External SD card"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mMediaFormatRet:Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_4e

    .line 696
    :catch_c5
    move-exception v9

    .line 697
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "formatStorageCard fail"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 684
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_cf
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 685
    .local v14, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v14, :cond_e1

    .line 686
    invoke-virtual {v14}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 689
    :cond_e1
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 690
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mMediaFormatRet:Z

    .line 691
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested full wipe of device."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_125} :catch_c5

    goto/16 :goto_4e
.end method

.method public getCertificatesFromKeystore(Landroid/app/enterprise/ContextInfo;II)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 2225
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_54

    .line 2226
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2230
    :goto_b
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2231
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v2, p0, mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2235
    iget-object v2, p0, mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2263
    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    if-lt v2, v3, :cond_a1

    .line 2264
    iget-object v2, p0, mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    sget v2, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_52
    move-object v2, v0

    .line 2272
    :goto_53
    return-object v2

    .line 2228
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v1    # "userId":I
    :cond_54
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_b

    .line 2238
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v1    # "userId":I
    :cond_59
    invoke-direct {p0, p2}, validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2239
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_72

    .line 2240
    invoke-direct {p0, v1}, getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2241
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2243
    :cond_72
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_88

    .line 2244
    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v4}, getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2246
    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v4}, getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2249
    :cond_88
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_31

    .line 2250
    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v5, v1}, getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2252
    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v5, v1}, getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    .line 2256
    :cond_9f
    const/4 v2, 0x0

    goto :goto_53

    .line 2269
    :cond_a1
    iget-object v2, p0, mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_52
.end method

.method public getCertificatesFromUserKeystore(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2500
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1398
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1399
    const-string v6, "SecurityPolicy"

    const-string v7, " getCredentialStorageStatus calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const/4 v0, 0x4

    .line 1429
    :goto_10
    return v0

    .line 1402
    :cond_11
    invoke-direct {p0}, needtoCheckPackageCaller()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1403
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1407
    :goto_1b
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1408
    .local v3, "userId":I
    const/4 v0, 0x4

    .line 1409
    .local v0, "credentialStorageStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1411
    .local v4, "token":J
    :try_start_26
    iget-object v6, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v3}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    .line 1412
    .local v2, "state":Landroid/security/KeyStore$State;
    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/AssertionError; {:try_start_26 .. :try_end_31} :catch_54
    .catchall {:try_start_26 .. :try_end_31} :catchall_76

    move-result v6

    if-eqz v6, :cond_3e

    .line 1413
    const/4 v0, 0x1

    .line 1427
    :goto_35
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    .line 1405
    .end local v0    # "credentialStorageStatus":I
    .end local v2    # "state":Landroid/security/KeyStore$State;
    .end local v3    # "userId":I
    .end local v4    # "token":J
    :cond_39
    invoke-direct {p0, p1}, enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_1b

    .line 1415
    .restart local v0    # "credentialStorageStatus":I
    .restart local v2    # "state":Landroid/security/KeyStore$State;
    .restart local v3    # "userId":I
    .restart local v4    # "token":J
    :cond_3e
    :try_start_3e
    sget-object v6, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1416
    const/4 v0, 0x2

    goto :goto_35

    .line 1418
    :cond_48
    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/AssertionError; {:try_start_3e .. :try_end_4d} :catch_54
    .catchall {:try_start_3e .. :try_end_4d} :catchall_76

    move-result v6

    if-eqz v6, :cond_52

    .line 1419
    const/4 v0, 0x3

    goto :goto_35

    .line 1421
    :cond_52
    const/4 v0, 0x4

    goto :goto_35

    .line 1423
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :catch_54
    move-exception v1

    .line 1424
    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_55
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore State Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_55 .. :try_end_71} :catchall_76

    .line 1425
    const/4 v0, 0x4

    .line 1427
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    .end local v1    # "e":Ljava/lang/AssertionError;
    :catchall_76
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2147
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2148
    .local v0, "userId":I
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "deviceLastAccessDate"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesOnDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1624
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1627
    if-eqz p2, :cond_1c

    .line 1628
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, p2}, isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1630
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .end local v1    # "f":Ljava/io/File;
    :goto_1b
    return-object v2

    .line 1633
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    if-eqz p2, :cond_39

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1637
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1638
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    :cond_39
    invoke-direct {p0, v0}, executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1b
.end method

.method public getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1647
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1649
    if-eqz p2, :cond_1c

    .line 1650
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, p2}, isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1652
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    .end local v1    # "f":Ljava/io/File;
    :goto_1b
    return-object v2

    .line 1655
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1656
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    const-string v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    const-string v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    if-eqz p2, :cond_43

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 1661
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1662
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1664
    :cond_43
    invoke-direct {p0, v0}, executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1b
.end method

.method public getFileNamesWithAttributesRecursive(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1674
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1677
    if-eqz p3, :cond_14

    .line 1678
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1679
    .local v8, "tempfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1680
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1685
    .end local v8    # "tempfile":Ljava/io/File;
    :cond_14
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1723
    :cond_1c
    :goto_1c
    return v9

    .line 1689
    :cond_1d
    if-eqz p2, :cond_30

    .line 1690
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-direct {p0, p2}, isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1697
    .end local v3    # "f":Ljava/io/File;
    :cond_30
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1698
    .local v7, "root":Ljava/io/File;
    const/4 v5, 0x0

    .line 1699
    .local v5, "outFile":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1701
    .local v0, "allFiles":Ljava/io/FileWriter;
    :try_start_37
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_62
    .catchall {:try_start_37 .. :try_end_3c} :catchall_77

    .line 1702
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .local v1, "allFiles":Ljava/io/FileWriter;
    :try_start_3c
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_93
    .catchall {:try_start_3c .. :try_end_41} :catchall_8c

    .line 1704
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .local v6, "outFile":Ljava/io/PrintWriter;
    :try_start_41
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1705
    if-eqz v7, :cond_4d

    .line 1706
    const/4 v10, 0x0

    invoke-direct {p0, v7, v10, v6}, listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4d} :catch_96
    .catchall {:try_start_41 .. :try_end_4d} :catchall_8f

    .line 1713
    :cond_4d
    if-eqz v6, :cond_52

    .line 1714
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 1717
    :cond_52
    if-eqz v1, :cond_57

    .line 1718
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    .line 1723
    :cond_57
    :goto_57
    const/4 v9, 0x1

    goto :goto_1c

    .line 1719
    :catch_59
    move-exception v2

    .line 1720
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 1709
    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catch_62
    move-exception v4

    .line 1713
    .local v4, "ioex":Ljava/io/IOException;
    :goto_63
    if-eqz v5, :cond_68

    .line 1714
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1717
    :cond_68
    if-eqz v0, :cond_1c

    .line 1718
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_1c

    .line 1719
    :catch_6e
    move-exception v2

    .line 1720
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 1713
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioex":Ljava/io/IOException;
    :catchall_77
    move-exception v9

    :goto_78
    if-eqz v5, :cond_7d

    .line 1714
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1717
    :cond_7d
    if-eqz v0, :cond_82

    .line 1718
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1721
    :cond_82
    :goto_82
    throw v9

    .line 1719
    :catch_83
    move-exception v2

    .line 1720
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 1713
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catchall_8c
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_78

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catchall_8f
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_78

    .line 1709
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catch_93
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_63

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catch_96
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_63
.end method

.method public getInstalledCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certificateName"    # Ljava/lang/String;

    .prologue
    .line 1221
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1222
    const-string v1, "USRCERT_"

    invoke-direct {p0, p2, v1}, getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 1224
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_17

    .line 1225
    const-string v1, "CACERT_"

    invoke-direct {p0, p2, v1}, getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 1227
    :cond_17
    return-object v0
.end method

.method public getInstalledCertificateNames(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1258
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1259
    return-object v0
.end method

.method public getInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1040
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1043
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v2}, getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1044
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v3}, getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1045
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v2}, getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1046
    invoke-direct {p0}, getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1047
    invoke-direct {p0, v0}, removeDuplicatedCertificates(Ljava/util/List;)V

    .line 1048
    return-object v0
.end method

.method public getRebootBannerText(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2033
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2034
    .local v1, "userId":I
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "bannerText"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 2037
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_23

    .line 2038
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2039
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 2044
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 966
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 970
    .local v2, "token":J
    :try_start_7
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 972
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1a
    .catchall {:try_start_7 .. :try_end_15} :catchall_40

    move-result v4

    .line 977
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_19
    return v4

    .line 973
    :catch_1a
    move-exception v1

    .line 974
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRequireDeviceEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_40

    .line 977
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    const/4 v4, 0x0

    goto :goto_19

    .line 977
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1015
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1016
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1019
    .local v2, "token":J
    :try_start_7
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1021
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1a
    .catchall {:try_start_7 .. :try_end_15} :catchall_40

    move-result v4

    .line 1026
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_19
    return v4

    .line 1022
    :catch_1a
    move-exception v1

    .line 1023
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_40

    .line 1026
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    const/4 v4, 0x0

    goto :goto_19

    .line 1026
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSystemCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1035
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1036
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1509
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1510
    invoke-direct {p0, p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1511
    invoke-direct {p0, p4}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1512
    if-eqz p5, :cond_13

    .line 1513
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 1515
    :cond_13
    if-eqz p2, :cond_1c

    if-eqz p3, :cond_1c

    array-length v6, p3

    if-eqz v6, :cond_1c

    if-nez p4, :cond_26

    .line 1516
    :cond_1c
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "installCertificate : Invalid parameter(s)"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 1539
    :cond_25
    :goto_25
    return v1

    .line 1519
    :cond_26
    const/4 v1, 0x0

    .line 1520
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1522
    .local v2, "token":J
    :try_start_2b
    invoke-direct {p0}, isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1523
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 1524
    .local v4, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_4f
    .catchall {:try_start_2b .. :try_end_3b} :catchall_5c

    move-result v1

    .line 1532
    .end local v4    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    :goto_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1536
    :goto_3f
    if-eqz v1, :cond_25

    .line 1537
    invoke-direct {p0, v5}, sendIntentToSettings(I)V

    goto :goto_25

    .line 1526
    :cond_45
    :try_start_45
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "installCertificate : KS not UNLOCKED"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_4f
    .catchall {:try_start_45 .. :try_end_4d} :catchall_5c

    .line 1527
    const/4 v1, 0x0

    goto :goto_3c

    .line 1529
    :catch_4f
    move-exception v0

    .line 1530
    .local v0, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "installCertificate EX: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5c

    .line 1532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCertificateToKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 2182
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3e

    .line 2183
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2187
    :goto_8
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2189
    .local v8, "userId":I
    const/4 v9, 0x0

    .line 2190
    .local v9, "ret":Z
    invoke-direct {p0, p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2191
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2192
    if-eqz p5, :cond_1f

    .line 2193
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 2195
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2197
    .local v10, "token":J
    :try_start_23
    invoke-direct {p0, v8}, isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 2198
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "installCertificateToKeystore: Keystore is not unlocked"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :goto_31
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_3a

    if-eqz v9, :cond_3a

    .line 2213
    invoke-direct {p0, v8}, sendIntentToSettings(I)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_5f

    .line 2216
    :cond_3a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2219
    return v9

    .line 2185
    .end local v8    # "userId":I
    .end local v9    # "ret":Z
    .end local v10    # "token":J
    :cond_3e
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_8

    .line 2199
    .restart local v8    # "userId":I
    .restart local v9    # "ret":Z
    .restart local v10    # "token":J
    :cond_43
    :try_start_43
    move/from16 v0, p6

    invoke-direct {p0, v0}, validateKeystoreParam(I)Z

    move-result v3

    if-eqz v3, :cond_56

    if-eqz p2, :cond_56

    if-eqz p3, :cond_56

    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_56

    if-nez p4, :cond_64

    .line 2201
    :cond_56
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "installCertificateToKeystore: Invalid parameter(s)"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_5f

    goto :goto_31

    .line 2216
    :catchall_5f
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2203
    :cond_64
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " has requested to install a certificate. Keystore(s) : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-direct {p0, v0}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", Name : "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2207
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .local v2, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 2208
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    :try_end_b4
    .catchall {:try_start_67 .. :try_end_b4} :catchall_5f

    move-result v9

    goto/16 :goto_31
.end method

.method public installCertificateToUserKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 2496
    const/4 v0, 0x0

    return v0
.end method

.method public installCertificateWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)V
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 431
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 432
    invoke-direct {p0, p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 433
    if-eqz p2, :cond_31

    if-eqz p3, :cond_31

    array-length v4, p3

    if-lez v4, :cond_31

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 436
    .local v2, "token":J
    :try_start_12
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    const-string/jumbo v4, "senderpackagename"

    const-string v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 440
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_2e} :catch_32
    .catchall {:try_start_12 .. :try_end_2e} :catchall_53

    .line 444
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_31
    :goto_31
    return-void

    .line 441
    .restart local v2    # "token":J
    :catch_32
    move-exception v0

    .line 442
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_33
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificateWithType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_53

    .line 444
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_53
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard(Landroid/app/enterprise/ContextInfo;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 452
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 455
    .local v2, "token":J
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 457
    const-string/jumbo v4, "senderpackagename"

    const-string v5, "SecurityPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_20} :catch_24
    .catchall {:try_start_7 .. :try_end_20} :catchall_45

    .line 462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_23
    return-void

    .line 459
    :catch_24
    move-exception v0

    .line 460
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_25
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificatesFromSdCard() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_45

    .line 462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_45
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .registers 2
    .param p1, "pair"    # Ljava/security/KeyPair;

    .prologue
    .line 424
    return-void
.end method

.method public isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2083
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2085
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isDodBannerVisibleAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isDodBannerVisibleAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2089
    const/4 v1, 0x0

    .line 2091
    .local v1, "status":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "dodBannerVisible"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_16

    move-result-object v1

    .line 2096
    :goto_a
    if-eqz v1, :cond_20

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2097
    const/4 v2, 0x1

    .line 2099
    :goto_15
    return v2

    .line 2092
    :catch_16
    move-exception v0

    .line 2093
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "isDodBannerVisibleAsUser facing exception, return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 2099
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public isExternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 919
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 923
    .local v2, "token":J
    :try_start_7
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    .line 924
    .local v1, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_15
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    move-result v4

    .line 928
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_14
    return v4

    .line 925
    :catch_15
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "is External Storage Encrypted ?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23

    .line 928
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    const/4 v4, 0x0

    goto :goto_14

    .line 928
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 897
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 901
    .local v2, "token":J
    :try_start_8
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 903
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_1f
    .catchall {:try_start_8 .. :try_end_16} :catchall_2c

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1b

    const/4 v4, 0x1

    .line 907
    :cond_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_1e
    return v4

    .line 904
    :catch_1f
    move-exception v1

    .line 905
    .local v1, "e":Ljava/lang/Exception;
    :try_start_20
    const-string v5, "SecurityPolicy"

    const-string/jumbo v6, "is Internal Storage Encrypted ?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    .line 907
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRebootBannerEnabled(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 2019
    const/4 v1, 0x0

    .line 2020
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string/jumbo v6, "deviceEnrolled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2023
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2024
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 2025
    move v1, v2

    .line 2029
    .end local v2    # "value":Z
    :cond_24
    return v1
.end method

.method public isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2014
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2015
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isRebootBannerEnabled(I)Z

    move-result v1

    return v1
.end method

.method public lockoutDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1875
    .local p4, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1878
    if-eqz p2, :cond_b

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 1879
    :cond_b
    const-string v11, "SecurityPolicy"

    const-string/jumbo v12, "only PIN Password is allowed as limitation from Keyguard FMM "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    :goto_13
    return-void

    .line 1883
    :cond_14
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1884
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1886
    .local v8, "token":J
    if-eqz p3, :cond_49

    .line 1887
    :try_start_20
    const-string/jumbo v11, "lock_fmm_Message"

    move-object/from16 v0, p3

    invoke-static {v3, v11, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1888
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "lockoutDevice : set message done("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    :cond_49
    if-eqz p4, :cond_88

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_88

    .line 1891
    const-string/jumbo v12, "lock_fmm_phone"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v12, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1892
    const-string v12, "SecurityPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "lockoutDevice : set phones done("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    :cond_88
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1895
    .local v5, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 1896
    .local v7, "sha1":[B
    const/4 v11, 0x2

    invoke-static {v7, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 1897
    .local v2, "base64":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 1900
    iget-object v11, p0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1901
    .local v6, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1903
    const-string/jumbo v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 1905
    .local v10, "winMgr":Landroid/view/IWindowManager;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_c7} :catch_cc

    .line 1909
    .end local v2    # "base64":Ljava/lang/String;
    .end local v5    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v6    # "manager":Landroid/os/PowerManager;
    .end local v7    # "sha1":[B
    .end local v10    # "winMgr":Landroid/view/IWindowManager;
    :goto_c7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_13

    .line 1906
    :catch_cc
    move-exception v4

    .line 1907
    .local v4, "ex":Ljava/lang/Exception;
    const-string v11, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception is thrown when trying to lock out the device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7
.end method

.method public makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .registers 10
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 496
    .local v2, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2e
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 501
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x1000

    :try_start_8
    new-array v0, v5, [B

    .line 503
    .local v0, "buffer":[B
    :goto_a
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {p1, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .local v4, "length":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 504
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_42
    .catchall {:try_start_8 .. :try_end_18} :catchall_3f

    goto :goto_a

    .line 507
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_19
    move-exception v1

    move-object v2, v3

    .line 508
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_38

    .line 512
    if-eqz v2, :cond_23

    .line 513
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 516
    .end local v1    # "e":Ljava/io/IOException;
    :cond_23
    :goto_23
    return-object p2

    .line 506
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "length":I
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_19
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_42
    .catchall {:try_start_24 .. :try_end_27} :catchall_3f

    .line 512
    if-eqz v3, :cond_47

    .line 513
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_23

    .line 509
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_2e
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    :goto_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    .line 512
    if-eqz v2, :cond_23

    .line 513
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_23

    .line 512
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v5

    :goto_39
    if-eqz v2, :cond_3e

    .line 513
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3e
    throw v5

    .line 512
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3f
    move-exception v5

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_39

    .line 509
    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_42
    move-exception v1

    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2f

    .line 507
    :catch_45
    move-exception v1

    goto :goto_1b

    .end local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "length":I
    :cond_47
    move-object v2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_23
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2511
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2516
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2524
    return-void
.end method

.method public powerOffDevice(Landroid/app/enterprise/ContextInfo;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1564
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1565
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1567
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1570
    .local v2, "token":J
    :try_start_e
    const-string v4, "Security"

    const-string/jumbo v5, "powerOffDevice"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_2e

    .line 1575
    :goto_17
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "powerOffDevice():EDM power off device start..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1577
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    .line 1578
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1579
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1580
    return-void

    .line 1571
    :catch_2e
    move-exception v0

    .line 1572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public readFile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v8, 0x0

    .line 1827
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1829
    if-eqz p3, :cond_c

    invoke-direct {p0, p2}, isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1864
    :cond_c
    :goto_c
    return v8

    .line 1832
    :cond_d
    const/4 v2, 0x0

    .line 1833
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1836
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_f
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1838
    .local v7, "mFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_9f
    .catchall {:try_start_f .. :try_end_19} :catchall_7a

    .line 1839
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .local v3, "fileStreamInp":Ljava/io/InputStream;
    :try_start_19
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_a1
    .catchall {:try_start_19 .. :try_end_22} :catchall_98

    .line 1841
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .local v5, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v9, 0x800

    :try_start_24
    new-array v0, v9, [B

    .line 1843
    .local v0, "buffer":[B
    :goto_26
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-lez v6, :cond_50

    .line 1844
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_31
    .catchall {:try_start_24 .. :try_end_30} :catchall_9b

    goto :goto_26

    .line 1849
    .end local v0    # "buffer":[B
    .end local v6    # "length":I
    :catch_31
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .line 1850
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v7    # "mFile":Ljava/io/File;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    :goto_34
    :try_start_34
    const-string v9, "SecurityPolicy"

    const-string/jumbo v10, "readFile IOException "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_7a

    .line 1854
    if-eqz v2, :cond_41

    .line 1855
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_71

    .line 1860
    :cond_41
    :goto_41
    if-eqz v4, :cond_c

    .line 1861
    :try_start_43
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_c

    .line 1862
    :catch_47
    move-exception v1

    .line 1863
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1846
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "mFile":Ljava/io/File;
    :cond_50
    :try_start_50
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_31
    .catchall {:try_start_50 .. :try_end_53} :catchall_9b

    .line 1847
    const/4 v8, 0x1

    .line 1854
    if-eqz v3, :cond_59

    .line 1855
    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_68

    .line 1860
    :cond_59
    :goto_59
    if-eqz v5, :cond_c

    .line 1861
    :try_start_5b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_c

    .line 1862
    :catch_5f
    move-exception v1

    .line 1863
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1856
    .end local v1    # "e":Ljava/io/IOException;
    :catch_68
    move-exception v1

    .line 1857
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 1856
    .end local v0    # "buffer":[B
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v6    # "length":I
    .end local v7    # "mFile":Ljava/io/File;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_71
    move-exception v1

    .line 1857
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 1853
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_7a
    move-exception v8

    .line 1854
    :goto_7b
    if-eqz v2, :cond_80

    .line 1855
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_86

    .line 1860
    :cond_80
    :goto_80
    if-eqz v4, :cond_85

    .line 1861
    :try_start_82
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_8f

    .line 1864
    :cond_85
    :goto_85
    throw v8

    .line 1856
    :catch_86
    move-exception v1

    .line 1857
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 1862
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8f
    move-exception v1

    .line 1863
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 1853
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catchall_98
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_7b

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_9b
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_7b

    .line 1849
    .end local v7    # "mFile":Ljava/io/File;
    :catch_9f
    move-exception v1

    goto :goto_34

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_a1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_34
.end method

.method public readFileWithEncryptionAndCompression(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/List;
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct/range {p0 .. p1}, enforceOnlySecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 521
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v17, "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 523
    :cond_14
    const/16 v17, 0x0

    .line 604
    .end local v17    # "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    :goto_16
    return-object v17

    .line 525
    .restart local v17    # "return_key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    const/4 v7, 0x0

    .line 526
    .local v7, "fileStreamInp":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 527
    .local v9, "fileStreamOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 530
    .local v3, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    :try_start_1a
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .local v15, "mFile":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".temp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v16, "mTempFile":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, getSessionKey()Ljava/security/Key;

    move-result-object v11

    .line 533
    .local v11, "inKey":Ljava/security/Key;
    invoke-direct/range {p0 .. p0}, getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_48} :catch_30d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1a .. :try_end_48} :catch_20c
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_48} :catch_23d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_48} :catch_26e
    .catchall {:try_start_1a .. :try_end_48} :catchall_29f

    move-result-object v12

    .line 535
    .local v12, "iv":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v11, :cond_4d

    if-nez v12, :cond_78

    .line 587
    :cond_4d
    if-eqz v3, :cond_52

    .line 588
    :try_start_4f
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_66

    .line 593
    :cond_52
    :goto_52
    if-eqz v7, :cond_57

    .line 594
    :try_start_54
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_6f

    .line 599
    :cond_57
    :goto_57
    if-eqz v9, :cond_16

    .line 600
    :try_start_59
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_16

    .line 601
    :catch_5d
    move-exception v6

    .line 602
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 589
    .end local v6    # "e":Ljava/io/IOException;
    :catch_66
    move-exception v6

    .line 590
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 539
    .end local v6    # "e":Ljava/io/IOException;
    :cond_78
    :try_start_78
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " output  size  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_78 .. :try_end_b5} :catch_30d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_78 .. :try_end_b5} :catch_20c
    .catch Ljava/security/InvalidKeyException; {:try_start_78 .. :try_end_b5} :catch_23d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_b5} :catch_26e
    .catchall {:try_start_78 .. :try_end_b5} :catchall_29f

    .line 543
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .local v8, "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_b5
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b5 .. :try_end_bc} :catch_310
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b5 .. :try_end_bc} :catch_2fb
    .catch Ljava/security/InvalidKeyException; {:try_start_b5 .. :try_end_bc} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bc} :catch_2db
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_2cd

    .line 544
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .local v10, "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_bc
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    :try_end_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bc .. :try_end_c1} :catch_314
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_bc .. :try_end_c1} :catch_2ff
    .catch Ljava/security/InvalidKeyException; {:try_start_bc .. :try_end_c1} :catch_2ed
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_2de
    .catchall {:try_start_bc .. :try_end_c1} :catchall_2d0

    move-result-object v9

    .line 545
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_c2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 546
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 549
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    invoke-interface {v11}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 551
    .local v13, "ks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c2 .. :try_end_e0} :catch_310
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c2 .. :try_end_e0} :catch_2fb
    .catch Ljava/security/InvalidKeyException; {:try_start_c2 .. :try_end_e0} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_e0} :catch_2db
    .catchall {:try_start_c2 .. :try_end_e0} :catchall_2cd

    .line 552
    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    :try_start_e0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_eb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e0 .. :try_end_eb} :catch_30d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e0 .. :try_end_eb} :catch_20c
    .catch Ljava/security/InvalidKeyException; {:try_start_e0 .. :try_end_eb} :catch_23d
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_eb} :catch_26e
    .catchall {:try_start_e0 .. :try_end_eb} :catchall_29f

    .line 554
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :try_start_eb
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " nfile  size  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "can read ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->canRead()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " last Md  ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v18, "AES/CBC/PKCS7Padding"

    invoke-static/range {v18 .. v18}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 557
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 558
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v10, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_143
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_eb .. :try_end_143} :catch_319
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_eb .. :try_end_143} :catch_304
    .catch Ljava/security/InvalidKeyException; {:try_start_eb .. :try_end_143} :catch_2f2
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_143} :catch_2e2
    .catchall {:try_start_eb .. :try_end_143} :catchall_2d4

    .line 561
    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v4, "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    const/16 v18, 0x1000

    :try_start_145
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 562
    .local v5, "d":[B
    :goto_149
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    if-lez v14, :cond_192

    .line 563
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() :   len   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v14}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_170
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_145 .. :try_end_170} :catch_171
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_145 .. :try_end_170} :catch_308
    .catch Ljava/security/InvalidKeyException; {:try_start_145 .. :try_end_170} :catch_2f6
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_170} :catch_2e5
    .catchall {:try_start_145 .. :try_end_170} :catchall_2d7

    goto :goto_149

    .line 576
    .end local v5    # "d":[B
    .end local v14    # "len":I
    :catch_171
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .line 577
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :goto_174
    :try_start_174
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_29f

    .line 587
    if-eqz v3, :cond_17c

    .line 588
    :try_start_179
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_1f8

    .line 593
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_17c
    :goto_17c
    if-eqz v7, :cond_181

    .line 594
    :try_start_17e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_202

    .line 599
    :cond_181
    :goto_181
    if-eqz v9, :cond_16

    .line 600
    :try_start_183
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_188

    goto/16 :goto_16

    .line 601
    :catch_188
    move-exception v6

    .line 602
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 569
    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v5    # "d":[B
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v14    # "len":I
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :cond_192
    :try_start_192
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 571
    invoke-interface {v11}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v12}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    const-string v18, "SecurityPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::readFileWithEncryptionAndCompression() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_192 .. :try_end_1cb} :catch_171
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_192 .. :try_end_1cb} :catch_308
    .catch Ljava/security/InvalidKeyException; {:try_start_192 .. :try_end_1cb} :catch_2f6
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1cb} :catch_2e5
    .catchall {:try_start_192 .. :try_end_1cb} :catchall_2d7

    .line 587
    if-eqz v4, :cond_1d0

    .line 588
    :try_start_1cd
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1e6

    .line 593
    :cond_1d0
    :goto_1d0
    if-eqz v7, :cond_1d5

    .line 594
    :try_start_1d2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1ef

    .line 599
    :cond_1d5
    :goto_1d5
    if-eqz v10, :cond_16

    .line 600
    :try_start_1d7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1dc

    goto/16 :goto_16

    .line 601
    :catch_1dc
    move-exception v6

    .line 602
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 589
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1e6
    move-exception v6

    .line 590
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d0

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1ef
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d5

    .line 589
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v5    # "d":[B
    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v14    # "len":I
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_1f8
    move-exception v6

    .line 590
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17c

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_202
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_181

    .line 578
    .end local v6    # "e":Ljava/io/IOException;
    :catch_20c
    move-exception v6

    .line 579
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_20d
    :try_start_20d
    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_210
    .catchall {:try_start_20d .. :try_end_210} :catchall_29f

    .line 587
    if-eqz v3, :cond_215

    .line 588
    :try_start_212
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_22b

    .line 593
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_215
    :goto_215
    if-eqz v7, :cond_21a

    .line 594
    :try_start_217
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_234

    .line 599
    :cond_21a
    :goto_21a
    if-eqz v9, :cond_16

    .line 600
    :try_start_21c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_221

    goto/16 :goto_16

    .line 601
    :catch_221
    move-exception v6

    .line 602
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 589
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_22b
    move-exception v6

    .line 590
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_215

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_234
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21a

    .line 580
    .end local v6    # "e":Ljava/io/IOException;
    :catch_23d
    move-exception v6

    .line 581
    .local v6, "e":Ljava/security/InvalidKeyException;
    :goto_23e
    :try_start_23e
    invoke-virtual {v6}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_241
    .catchall {:try_start_23e .. :try_end_241} :catchall_29f

    .line 587
    if-eqz v3, :cond_246

    .line 588
    :try_start_243
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_246} :catch_25c

    .line 593
    .end local v6    # "e":Ljava/security/InvalidKeyException;
    :cond_246
    :goto_246
    if-eqz v7, :cond_24b

    .line 594
    :try_start_248
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_24b
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24b} :catch_265

    .line 599
    :cond_24b
    :goto_24b
    if-eqz v9, :cond_16

    .line 600
    :try_start_24d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_250} :catch_252

    goto/16 :goto_16

    .line 601
    :catch_252
    move-exception v6

    .line 602
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 589
    .local v6, "e":Ljava/security/InvalidKeyException;
    :catch_25c
    move-exception v6

    .line 590
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_246

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_265
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24b

    .line 582
    .end local v6    # "e":Ljava/io/IOException;
    :catch_26e
    move-exception v6

    .line 583
    .local v6, "e":Ljava/lang/Exception;
    :goto_26f
    :try_start_26f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_272
    .catchall {:try_start_26f .. :try_end_272} :catchall_29f

    .line 587
    if-eqz v3, :cond_277

    .line 588
    :try_start_274
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_277
    .catch Ljava/io/IOException; {:try_start_274 .. :try_end_277} :catch_28d

    .line 593
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_277
    :goto_277
    if-eqz v7, :cond_27c

    .line 594
    :try_start_279
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_27c
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_27c} :catch_296

    .line 599
    :cond_27c
    :goto_27c
    if-eqz v9, :cond_16

    .line 600
    :try_start_27e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_281
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_281} :catch_283

    goto/16 :goto_16

    .line 601
    :catch_283
    move-exception v6

    .line 602
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 589
    .local v6, "e":Ljava/lang/Exception;
    :catch_28d
    move-exception v6

    .line 590
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_277

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_296
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27c

    .line 586
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_29f
    move-exception v18

    .line 587
    :goto_2a0
    if-eqz v3, :cond_2a5

    .line 588
    :try_start_2a2
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_2a5
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2a5} :catch_2bb

    .line 593
    :cond_2a5
    :goto_2a5
    if-eqz v7, :cond_2aa

    .line 594
    :try_start_2a7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2aa} :catch_2c4

    .line 599
    :cond_2aa
    :goto_2aa
    if-eqz v9, :cond_16

    .line 600
    :try_start_2ac
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2af} :catch_2b1

    goto/16 :goto_16

    .line 601
    :catch_2b1
    move-exception v6

    .line 602
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 589
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2bb
    move-exception v6

    .line 590
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor cipherStreamOut"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a5

    .line 595
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2c4
    move-exception v6

    .line 596
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "SecurityPolicy"

    const-string v19, "Error closing cursor fileStreamInp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2aa

    .line 586
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :catchall_2cd
    move-exception v18

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_2a0

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_2d0
    move-exception v18

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_2a0

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catchall_2d4
    move-exception v18

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_2a0

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catchall_2d7
    move-exception v18

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_2a0

    .line 582
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_2db
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_26f

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_2de
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto :goto_26f

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_2e2
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_26f

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_2e5
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto :goto_26f

    .line 580
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_2e9
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_23e

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_2ed
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_23e

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_2f2
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_23e

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_2f6
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_23e

    .line 578
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    :catch_2fb
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_20d

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_2ff
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_20d

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_304
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_20d

    .end local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_308
    move-exception v6

    move-object v3, v4

    .end local v4    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cipherStreamOut":Ljavax/crypto/CipherOutputStream;
    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_20d

    .line 576
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v11    # "inKey":Ljava/security/Key;
    .end local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    .end local v15    # "mFile":Ljava/io/File;
    .end local v16    # "mTempFile":Ljava/io/File;
    :catch_30d
    move-exception v6

    goto/16 :goto_174

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v11    # "inKey":Ljava/security/Key;
    .restart local v12    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15    # "mFile":Ljava/io/File;
    .restart local v16    # "mTempFile":Ljava/io/File;
    :catch_310
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_174

    .end local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    :catch_314
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fileStreamInp":Ljava/io/FileInputStream;
    .restart local v7    # "fileStreamInp":Ljava/io/FileInputStream;
    goto/16 :goto_174

    .end local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v13    # "ks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_319
    move-exception v6

    move-object v9, v10

    .end local v10    # "fileStreamOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fileStreamOut":Ljava/io/FileOutputStream;
    goto/16 :goto_174
.end method

.method public removeAccountsByType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1583
    if-nez p2, :cond_4

    .line 1584
    const/4 v10, 0x0

    .line 1619
    :cond_3
    :goto_3
    return v10

    .line 1586
    :cond_4
    invoke-direct/range {p0 .. p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1587
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1589
    .local v11, "userId":I
    const/4 v10, 0x1

    .line 1590
    .local v10, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1592
    .local v12, "token":J
    :try_start_11
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 1593
    .local v3, "am":Landroid/accounts/AccountManager;
    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 1594
    .local v2, "accs":[Landroid/accounts/Account;
    if-eqz v2, :cond_5e

    array-length v14, v2

    if-lez v14, :cond_5e

    .line 1595
    move-object v4, v2

    .local v4, "arr$":[Landroid/accounts/Account;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2c
    if-ge v7, v9, :cond_66

    aget-object v8, v4, v7

    .line 1596
    .local v8, "item":Landroid/accounts/Account;
    const-string v14, "SecurityPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "removeAccountsByType : account = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v8, v14, v15, v0}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 1595
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 1601
    .end local v4    # "arr$":[Landroid/accounts/Account;
    .end local v7    # "i$":I
    .end local v8    # "item":Landroid/accounts/Account;
    .end local v9    # "len$":I
    :cond_5e
    const-string v14, "SecurityPolicy"

    const-string/jumbo v15, "removeAccountsByType : return null"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_66} :catch_8e

    .line 1607
    .end local v2    # "accs":[Landroid/accounts/Account;
    .end local v3    # "am":Landroid/accounts/AccountManager;
    :cond_66
    :goto_66
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1609
    if-nez v11, :cond_3

    .line 1610
    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-direct {v6, v14}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1612
    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_74
    const-string v14, "SecurityPolicy"

    const-string/jumbo v15, "removeAccountsByType"

    move-object/from16 v0, p2

    invoke-virtual {v6, v14, v15, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v14, "SecurityPolicy"

    const-string/jumbo v15, "removeAccountsByType calling gearPolicyManager  "

    invoke-static {v14, v15}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_86} :catch_88

    goto/16 :goto_3

    .line 1614
    :catch_88
    move-exception v5

    .line 1615
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1603
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_8e
    move-exception v5

    .line 1604
    .restart local v5    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 1605
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_66
.end method

.method public removeCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1328
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1329
    invoke-direct {p0, p2, p3}, getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 1330
    .local v0, "cert":Landroid/app/enterprise/CertificateInfo;
    const/4 v2, 0x4

    invoke-direct {p0, p2, p3, v2}, removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1331
    .local v1, "result":Z
    const/4 v2, 0x2

    invoke-direct {p0, p2, p3, v2}, removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1332
    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 1333
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1335
    :cond_1d
    return v1
.end method

.method public removeDeviceLockout(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 1917
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1918
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1919
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1920
    .local v2, "token":J
    const-string/jumbo v4, "lock_fmm_Message"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1921
    const-string/jumbo v4, "lock_fmm_phone"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1922
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1923
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 1924
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1925
    return-void
.end method

.method public resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1436
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1437
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1438
    .local v6, "userId":I
    const/4 v8, 0x0

    .line 1439
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1441
    .local v12, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " has requested to clear credential storages"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1450
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x4

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z

    move-result v8

    .line 1452
    if-nez v6, :cond_4f

    .line 1453
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    const/4 v1, 0x2

    invoke-static {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_91

    move-result v0

    and-int/2addr v8, v0

    .line 1458
    :cond_4f
    :try_start_4f
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v9

    .line 1459
    .local v9, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v0, 0xbb8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1460
    .local v10, "taskRet":Z
    invoke-virtual {v9}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1461
    and-int/2addr v8, v10

    .line 1464
    if-eqz v8, :cond_83

    .line 1465
    invoke-direct {p0, v6}, sendIntentToSettings(I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_83} :catch_87
    .catchall {:try_start_4f .. :try_end_83} :catchall_91

    .line 1472
    .end local v9    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .end local v10    # "taskRet":Z
    :cond_83
    :goto_83
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    return v8

    .line 1468
    :catch_87
    move-exception v7

    .line 1469
    .local v7, "e":Ljava/lang/Exception;
    :try_start_88
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "resetCredentialStorage EX: "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_91

    goto :goto_83

    .line 1472
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_91
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1364
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1365
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 2109
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2110
    const/4 v2, 0x0

    .line 2139
    :cond_9
    :goto_9
    return v2

    .line 2113
    :cond_a
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2114
    .local v3, "userId":I
    const/4 v2, 0x1

    .line 2118
    .local v2, "result":Z
    :try_start_f
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "deviceLastAccessDate"

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2121
    const/16 v4, 0x64

    if-lt v3, v4, :cond_9

    .line 2124
    sget-object v4, mBannerMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    iget-object v4, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2127
    iget-object v4, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .line 2128
    .local v1, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    if-eqz v1, :cond_41

    .line 2129
    invoke-virtual {v1}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;->unregisterPersonaObserver()V

    .line 2131
    :cond_41
    iget-object v4, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_4b

    goto :goto_9

    .line 2135
    .end local v1    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :catch_4b
    move-exception v0

    .line 2136
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2053
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_b

    move v1, v3

    .line 2068
    :goto_a
    return v1

    .line 2056
    :cond_b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2057
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 2061
    .local v1, "result":Z
    :try_start_10
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dodBannerVisible"

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_20

    goto :goto_a

    .line 2064
    :catch_20
    move-exception v0

    .line 2065
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setExternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    const/4 v1, 0x1

    .line 842
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 845
    .local v10, "token":J
    :try_start_8
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v8

    .line 846
    .local v8, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 847
    if-nez p2, :cond_27

    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 848
    const-string v0, "SecurityPolicy"

    const-string v1, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_80
    .catchall {:try_start_8 .. :try_end_23} :catchall_92

    .line 887
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_26
    return-void

    .line 851
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_27
    if-ne p2, v1, :cond_7c

    .line 852
    :try_start_29
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I

    .line 867
    :cond_2c
    :goto_2c
    if-eqz p2, :cond_5b

    .line 868
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has requested encryption of external storage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 873
    :cond_5b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 874
    .local v12, "userId":I
    if-nez v12, :cond_78

    .line 875
    new-instance v9, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_68} :catch_80
    .catchall {:try_start_29 .. :try_end_68} :catchall_92

    .line 877
    .local v9, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_68
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "setExternalStorageEncryption"

    invoke-virtual {v9, v0, v1, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 878
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "setExternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_8d
    .catchall {:try_start_68 .. :try_end_78} :catchall_92

    .line 887
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_78
    :goto_78
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    .line 854
    .end local v12    # "userId":I
    :cond_7c
    :try_start_7c
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80
    .catchall {:try_start_7c .. :try_end_7f} :catchall_92

    goto :goto_2c

    .line 884
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catch_80
    move-exception v7

    .line 885
    .local v7, "e":Ljava/lang/Exception;
    :try_start_81
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "is External Storage Encrypted?"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_92

    .line 887
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    .line 879
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .restart local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_8d
    move-exception v7

    .line 880
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_8e
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_80
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_78

    .line 887
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .end local v9    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v12    # "userId":I
    :catchall_92
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setInternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    .line 785
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    if-nez v2, :cond_a

    .line 833
    :goto_9
    return-void

    .line 788
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 790
    .local v14, "token":J
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 792
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p2, :cond_2f

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 793
    const-string v2, "SecurityPolicy"

    const-string v3, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_d0
    .catchall {:try_start_e .. :try_end_2b} :catchall_de

    .line 831
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    .line 796
    :cond_2f
    if-nez p2, :cond_43

    :try_start_31
    invoke-virtual/range {p0 .. p1}, isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 797
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3f} :catch_d0
    .catchall {:try_start_31 .. :try_end_3f} :catchall_de

    .line 831
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    .line 800
    :cond_43
    if-eqz p2, :cond_57

    :try_start_45
    invoke-virtual/range {p0 .. p1}, isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 801
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_53} :catch_d0
    .catchall {:try_start_45 .. :try_end_53} :catchall_de

    .line 831
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    .line 804
    :cond_57
    :try_start_57
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    if-eqz p2, :cond_a5

    .line 807
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.app.action.START_ENCRYPTION"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 810
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has requested encryption of internal storage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 816
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_a5
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 817
    .local v13, "userId":I
    if-nez v13, :cond_c6

    .line 818
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b4} :catch_d0
    .catchall {:try_start_57 .. :try_end_b4} :catchall_de

    .line 821
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b4
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 822
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "setInternalStorageEncryption calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c6} :catch_cb
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_de

    .line 831
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_c6
    :goto_c6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_9

    .line 823
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_cb
    move-exception v10

    .line 824
    .local v10, "e":Ljava/lang/Exception;
    :try_start_cc
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0
    .catchall {:try_start_cc .. :try_end_cf} :catchall_de

    goto :goto_c6

    .line 828
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v13    # "userId":I
    :catch_d0
    move-exception v10

    .line 829
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_d1
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "is Internal Storage Encrypted?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_de

    .line 831
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_9

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_de
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 935
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 939
    .local v4, "token":J
    :try_start_7
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 941
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_3a
    .catchall {:try_start_7 .. :try_end_15} :catchall_5f

    .line 946
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_18
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 950
    .local v3, "userId":I
    if-nez v3, :cond_39

    .line 951
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 956
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_25
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireDeviceEncryption"

    invoke-virtual {p0, p1, p2}, getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 957
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireDeviceEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_64

    .line 963
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_39
    :goto_39
    return-void

    .line 942
    .end local v3    # "userId":I
    :catch_3a
    move-exception v1

    .line 943
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRequireDeviceEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_3b .. :try_end_5b} :catchall_5f

    .line 946
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 958
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_64
    move-exception v1

    .line 959
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public setRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 984
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 988
    .local v4, "token":J
    :try_start_7
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 990
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_3a
    .catchall {:try_start_7 .. :try_end_15} :catchall_5f

    .line 995
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_18
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 999
    .local v3, "userId":I
    if-nez v3, :cond_39

    .line 1000
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1005
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_25
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireStorageCardEncryption"

    invoke-virtual {p0, p1, p2}, getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1006
    const-string v6, "SecurityPolicy"

    const-string/jumbo v7, "setRequireStorageCardEncryption calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_64

    .line 1012
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_39
    :goto_39
    return-void

    .line 991
    .end local v3    # "userId":I
    :catch_3a
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_3b .. :try_end_5b} :catchall_5f

    .line 995
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1007
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_64
    move-exception v1

    .line 1008
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public startBannerService(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 391
    sget-object v1, mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v0, "intentBanner":Landroid/content/Intent;
    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 396
    .end local v0    # "intentBanner":Landroid/content/Intent;
    :cond_22
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 2520
    return-void
.end method

.method public unlockCredentialStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1287
    const/4 v2, 0x0

    .line 1288
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1290
    .local v4, "token":J
    :try_start_8
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1292
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1293
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_23
    .catchall {:try_start_8 .. :try_end_1e} :catchall_41

    .line 1294
    const/4 v2, 0x1

    .line 1298
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1301
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_22
    return v2

    .line 1295
    :catch_23
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Exception;
    :try_start_24
    const-string v3, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_41

    .line 1298
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_41
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public wipeDevice(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 1549
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1552
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_8
    const-string v2, "Security"

    const-string/jumbo v3, "wipeDevice"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1553
    const-string v2, "SecurityPolicy"

    const-string v3, "GearPolicy SetBooleanTypePolicy wipeDevice"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    .line 1557
    :goto_18
    return v5

    .line 1554
    :catch_19
    move-exception v0

    .line 1555
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method
