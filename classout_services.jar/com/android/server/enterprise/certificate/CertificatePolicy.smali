.class public Lcom/android/server/enterprise/certificate/CertificatePolicy;
.super Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;
.source "CertificatePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;
    }
.end annotation


# static fields
.field private static final ADD_TRUSTED_LIST:I = 0x0

.field private static final ADD_UNTRUSTED_LIST:I = 0x1

.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "CertificatePolicy"

.field private static final CERT_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.certinstaller"

.field private static final CHROME_MODULE:Ljava/lang/String; = "Chrome_module"

.field private static final GET_TRUSTED_LIST:I = 0x4

.field private static final GET_UNTRUSTED_LIST:I = 0x5

.field private static final MIGRATION_DONE:Ljava/lang/String; = "ok"

.field private static final PACKAGE_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PERFORM_MIGRATION_KEY:Ljava/lang/String; = "cert_migration"

.field private static final PERM_APP_PKEY_HOST_DOT:Ljava/lang/String; = "."

.field private static final PERM_APP_PKEY_HOST_WILDCARD:Ljava/lang/String; = "*"

.field private static final PERM_APP_PKEY_PORT_WILDCARD:I = -0x1

.field private static final REMOVE_TRUSTED_LIST:I = 0x2

.field private static final REMOVE_UNTRUSTED_LIST:I = 0x3

.field private static final SBROWSER_PKGNAME:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final TAG:Ljava/lang/String; = "CertificatePolicy"

.field public static final TRUSTED_POLICY_MASK:I = 0x1

.field public static final TRUST_LIST_TOKEN:Ljava/lang/String; = ","

.field public static final UNTRUSTED_POLICY_MASK:I = 0x2


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mCheckRevocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private final mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field private final mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

.field private mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;-><init>()V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 218
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v1, p0, mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 224
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    .line 253
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, mCheckRevocation:Ljava/lang/ThreadLocal;

    .line 1328
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1341
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 261
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 262
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 263
    invoke-direct {p0}, registerReceivers()V

    .line 264
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 265
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 266
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 267
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 268
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 269
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificateCache;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object v1, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 270
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificateCache;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object v1, p0, mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 271
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackRefreshHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 273
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V

    iput-object v1, p0, mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    .line 274
    new-instance v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V

    iput-object v1, p0, mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 275
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-direct {p0, p1}, getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0, p1}, displayAppSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, mBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 184
    iget-object v0, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, executeRollbackRefresh(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method private addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "uid"    # I
    .param p3, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v0, "addedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CERTIFICATE"

    invoke-virtual {v6, p1, v7, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "previouslist":Ljava/lang/String;
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_52

    .line 966
    :cond_1a
    const-string v3, ""

    .line 971
    :goto_1c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 972
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 973
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 968
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "value":Ljava/lang/String;
    :cond_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 977
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_69
    const-string v1, ""

    .line 979
    .local v1, "finalList":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_80

    .line 980
    const/4 v6, 0x0

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 983
    :cond_80
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CERTIFICATE"

    invoke-virtual {v6, p1, v7, p3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 986
    .end local v0    # "addedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8a
    return-object v0

    .restart local v0    # "addedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8b
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "addedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8a
.end method

.method private auditLog(Ljava/util/List;ILjava/lang/String;)V
    .registers 20
    .param p2, "adminUid"    # I
    .param p3, "messageFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 737
    .local v12, "psToken":J
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 738
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v9, :cond_8

    .line 739
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 740
    .local v14, "subject":Ljava/lang/String;
    :goto_24
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v11

    .line 741
    .local v11, "issuer":Ljava/lang/String;
    :goto_32
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "CertificatePolicy"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v8

    const/4 v8, 0x1

    aput-object v14, v7, v8

    const/4 v8, 0x2

    aput-object v11, v7, v8

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_59

    goto :goto_8

    .line 748
    .end local v9    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "issuer":Ljava/lang/String;
    .end local v14    # "subject":Ljava/lang/String;
    :catchall_59
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 739
    .restart local v9    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5e
    :try_start_5e
    const-string/jumbo v14, "null"

    goto :goto_24

    .line 740
    .restart local v14    # "subject":Ljava/lang/String;
    :cond_62
    const-string/jumbo v11, "null"
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_59

    goto :goto_32

    .line 748
    .end local v9    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "subject":Ljava/lang/String;
    :cond_66
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    return-void
.end method

.method private checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 6
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1073
    if-nez p1, :cond_b

    .line 1074
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "ctxInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1076
    .restart local p1    # "ctxInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1077
    .local v1, "uid":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1081
    .end local p1    # "ctxInfo":Landroid/app/enterprise/ContextInfo;
    :goto_1f
    return-object p1

    .restart local p1    # "ctxInfo":Landroid/app/enterprise/ContextInfo;
    :cond_20
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_1f
.end method

.method private clearCertificates(II)Z
    .registers 10
    .param p1, "adminUid"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v5, 0x1

    .line 627
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 628
    .local v4, "userId":I
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v3, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 629
    .local v3, "trustOp":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    .line 631
    .local v0, "cache":Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v6

    if-nez v6, :cond_15

    .line 644
    :goto_14
    return v5

    .line 635
    :cond_15
    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, clearTrustDB(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 636
    .local v2, "removedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3d

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 641
    invoke-direct {p0, v3, p1, v2, v1}, removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    goto :goto_14

    .line 644
    .end local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_3d
    const/4 v5, 0x0

    goto :goto_14
.end method

.method private clearPermissionApplicationPrivateKey(I)Z
    .registers 12
    .param p1, "adminUid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1969
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1970
    .local v3, "selectionValues":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1972
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v7, "pkgName"

    aput-object v7, v2, v6

    const-string v7, "alias"

    aput-object v7, v2, v5

    .line 1976
    .local v2, "returnColumns":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1979
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1980
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "pkgName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string v9, "alias"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v6}, setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Z)Z

    goto :goto_28

    .line 1987
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_49
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_54

    :goto_53
    return v5

    :cond_54
    move v5, v6

    goto :goto_53
.end method

.method private clearTrustDB(ILjava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "adminUid"    # I
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "oldList":Ljava/lang/String;
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    invoke-virtual {v2, p1, v3, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 651
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 653
    :cond_19
    return-object v1
.end method

.method private displayAppSignature(Ljava/lang/String;)V
    .registers 30
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1173
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v24

    if-eqz v24, :cond_18d

    .line 1174
    const/16 v16, 0x0

    .line 1176
    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x2240

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_23} :catch_cd

    move-result-object v16

    .line 1183
    :goto_24
    if-eqz v16, :cond_18d

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_18d

    .line 1184
    const/4 v4, 0x0

    .line 1186
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_45} :catch_d7

    move-result-object v4

    .line 1190
    :goto_46
    const/16 v17, 0x0

    .line 1191
    .local v17, "strRes":Ljava/lang/String;
    if-eqz v4, :cond_73

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1193
    .local v5, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x1040b98

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v5, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1196
    .end local v5    # "appName":Ljava/lang/String;
    :cond_73
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    .local v20, "toast":Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v11

    .line 1198
    .local v11, "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8e
    :goto_8e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 1199
    .local v12, "identity":[Ljava/lang/String;
    const-string v24, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    const/16 v24, 0x0

    aget-object v24, v12, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const/16 v24, 0x1

    aget-object v24, v12, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_8e

    .line 1202
    const-string v24, " / "

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    const/16 v24, 0x1

    aget-object v24, v12, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 1180
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v12    # "identity":[Ljava/lang/String;
    .end local v17    # "strRes":Ljava/lang/String;
    .end local v20    # "toast":Ljava/lang/StringBuilder;
    :catch_cd
    move-exception v7

    .line 1181
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "CertificatePolicy"

    const-string v25, "Name not found"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 1187
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_d7
    move-exception v7

    .line 1188
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "CertificatePolicy"

    const-string v25, "Name not found"

    invoke-static/range {v24 .. v25}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_46

    .line 1206
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v17    # "strRes":Ljava/lang/String;
    .restart local v20    # "toast":Ljava/lang/StringBuilder;
    :cond_e1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1207
    .local v21, "toast2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "notification"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 1209
    .local v15, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v8, v21

    .line 1210
    .local v8, "header":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1211
    .local v22, "when":J
    move-object/from16 v19, v17

    .line 1212
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "\n"

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 1213
    .local v18, "text":Ljava/lang/CharSequence;
    const v10, 0x1080078

    .line 1214
    .local v10, "icon":I
    new-instance v13, Landroid/app/Notification;

    move-wide/from16 v0, v22

    invoke-direct {v13, v10, v8, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1215
    .local v13, "notification":Landroid/app/Notification;
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x10

    move/from16 v0, v24

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 1216
    new-instance v14, Landroid/content/Intent;

    const-string v24, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v25, "package"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1218
    .local v14, "notificationIntent":Landroid/content/Intent;
    const-string v24, "appInfoPkgName"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    const/high16 v24, 0x10000000

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1223
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/utils/CertificateUtil;->getRandomInt()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v15, v0, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1228
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "header":Ljava/lang/CharSequence;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "icon":I
    .end local v11    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "notificationIntent":Landroid/content/Intent;
    .end local v15    # "notificationManager":Landroid/app/NotificationManager;
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "strRes":Ljava/lang/String;
    .end local v18    # "text":Ljava/lang/CharSequence;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "toast":Ljava/lang/StringBuilder;
    .end local v21    # "toast2":Ljava/lang/String;
    .end local v22    # "when":J
    :cond_18d
    return-void
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 323
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceNotifyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 314
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 361
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 370
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_16
    return-void
.end method

.method private enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v5, 0x0

    .line 333
    .local v5, "ret":Z
    invoke-direct {p0}, getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    if-eqz v6, :cond_45

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v6, p0, mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Landroid/app/enterprise/ContextInfo;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_27

    .line 337
    move-object v0, v2

    .local v0, "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_13
    if-ge v3, v4, :cond_27

    aget-object v1, v0, v3

    .line 338
    .local v1, "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    if-eqz v1, :cond_42

    iget-object v6, v1, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 339
    iget-object v6, p0, mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v6, p1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 340
    const/4 v5, 0x1

    .line 346
    .end local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_27
    if-nez v5, :cond_41

    .line 347
    const-string v6, "CertificatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to find credential storage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_41
    :goto_41
    return v5

    .line 337
    .restart local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 350
    .end local v0    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v1    # "credential":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "credentialsList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_45
    const-string v6, "CertificatePolicy"

    const-string v7, "Couldn\'t enforce UCM permission. Is UCM service running?"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method private executeRollbackRefresh(II)V
    .registers 5
    .param p1, "operation"    # I
    .param p2, "userId"    # I

    .prologue
    .line 912
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 913
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 914
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 915
    iget-object v1, p0, mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;->sendMessage(Landroid/os/Message;)Z

    .line 916
    return-void
.end method

.method private fromContentValues(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .registers 15
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 2159
    const/4 v9, 0x0

    .line 2160
    .local v9, "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-lez v10, :cond_67

    .line 2162
    :try_start_9
    const-string v10, "adminUid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2163
    .local v6, "adminUid":J
    const-string/jumbo v10, "pkgName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2164
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v10, "host"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2165
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v10, "port"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2166
    .local v3, "port":I
    const-string v10, "alias"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2167
    .local v4, "alias":Ljava/lang/String;
    const-string/jumbo v10, "storageName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2168
    .local v5, "storageName":Ljava/lang/String;
    new-instance v0, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    invoke-direct/range {v0 .. v5}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_4a

    .line 2170
    .end local v9    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .local v0, "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :try_start_3e
    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v10

    invoke-direct {p0, v10}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->setAdminPkgName(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_65

    .line 2176
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "storageName":Ljava/lang/String;
    .end local v6    # "adminUid":J
    :goto_49
    return-object v0

    .line 2172
    .end local v0    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v9    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :catch_4a
    move-exception v8

    move-object v0, v9

    .line 2173
    .end local v9    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v0    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .local v8, "e":Ljava/lang/Exception;
    :goto_4c
    const-string v10, "CertificatePolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsing ContentValues error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 2172
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "storageName":Ljava/lang/String;
    .restart local v6    # "adminUid":J
    :catch_65
    move-exception v8

    goto :goto_4c

    .end local v0    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "storageName":Ljava/lang/String;
    .end local v6    # "adminUid":J
    .restart local v9    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_67
    move-object v0, v9

    .end local v9    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v0    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    goto :goto_49
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .prologue
    .line 1610
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1853
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1854
    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    const/4 v2, 0x0

    .line 1857
    .local v2, "i":I
    :goto_9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1858
    .local v0, "auxCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1871
    return-object v1

    .line 1862
    :cond_1e
    iget-object v4, p0, mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 1863
    .local v3, "issuer":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_4f

    .line 1864
    const-string v4, "CertificatePolicy"

    const-string/jumbo v5, "getCertificateChain error. Could not find certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not build certificate chain; certificate not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1869
    :cond_4f
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "trustColumn"    # Ljava/lang/String;
    .param p3, "keyStore"    # Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    aput-object p2, v4, v10

    .line 545
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 548
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 550
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 551
    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 552
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .line 553
    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 554
    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_4e

    .line 555
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 560
    :cond_4e
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 562
    const-string v10, ","

    invoke-static {v8, v10}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 563
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3, v3, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 566
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 569
    .end local v0    # "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "stringList":Ljava/lang/String;
    .end local v9    # "uid":Ljava/lang/Integer;
    :cond_68
    return-object v1
.end method

.method private getCertificatesList(II)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v3, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 520
    .local v3, "trustOp":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    .line 522
    .local v0, "cache":Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v4

    if-nez v4, :cond_1a

    .line 523
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 535
    :goto_19
    return-object v4

    .line 525
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object v1

    .line 526
    if-eqz p1, :cond_38

    .line 531
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object v2

    .line 533
    .local v2, "ownerCertList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v2    # "ownerCertList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    :cond_38
    move-object v4, v1

    .line 535
    goto :goto_19
.end method

.method private getContainersForRollbackOrRefresh(II)Ljava/util/List;
    .registers 9
    .param p1, "adminUid"    # I
    .param p2, "targetNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v4, "usersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    .line 721
    .local v0, "allUsersId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 722
    .local v3, "userId1":I
    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 723
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 724
    .local v1, "containerOwner":I
    if-ne p1, v1, :cond_f

    .line 725
    iget-object v5, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getNumAliasesForUser(I)I

    move-result v5

    if-ne v5, p2, :cond_f

    .line 726
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 731
    .end local v1    # "containerOwner":I
    .end local v3    # "userId1":I
    :cond_3d
    return-object v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 294
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 297
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1231
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1232
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1036
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackagesForPid(I)Ljava/util/List;
    .registers 11
    .param p1, "pid"    # I
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
    const/4 v6, 0x0

    .line 1619
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1620
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v2, "listRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1623
    .local v4, "token":J
    :try_start_14
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_3c

    move-result-object v2

    .line 1625
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1627
    if-eqz v2, :cond_3b

    .line 1628
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1629
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_21

    .line 1630
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v7, :cond_3b

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1634
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3b
    return-object v6

    .line 1625
    :catchall_3c
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z
    .registers 15
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 842
    move v5, p2

    .line 844
    .local v5, "result":Z
    invoke-static {p3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 846
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 848
    .local v0, "containerOwnerUid":I
    move v2, p2

    .line 849
    .local v2, "knoxOwnerValue":Z
    const/4 v8, -0x1

    if-eq v0, v8, :cond_1b

    .line 851
    :try_start_13
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CERTIFICATE"

    invoke-virtual {v8, v0, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_13 .. :try_end_1a} :catch_2e

    move-result v2

    .line 858
    :cond_1b
    :goto_1b
    move v3, v2

    .line 859
    .local v3, "ownerValue":Z
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-eq p3, v8, :cond_26

    .line 863
    invoke-direct {p0, p1, p2, p3}, getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    .line 866
    :cond_26
    if-ne p2, v6, :cond_4b

    .line 867
    if-eqz v2, :cond_49

    if-eqz v3, :cond_49

    move v5, v6

    .line 886
    .end local v0    # "containerOwnerUid":I
    .end local v2    # "knoxOwnerValue":Z
    .end local v3    # "ownerValue":Z
    :goto_2d
    return v5

    .line 853
    .restart local v0    # "containerOwnerUid":I
    .restart local v2    # "knoxOwnerValue":Z
    :catch_2e
    move-exception v1

    .line 854
    .local v1, "ex":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v8, "CertificatePolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicyValueBackwardCompatibleAsUser: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .end local v1    # "ex":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .restart local v3    # "ownerValue":Z
    :cond_49
    move v5, v7

    .line 867
    goto :goto_2d

    .line 869
    :cond_4b
    if-nez v2, :cond_4f

    if-eqz v3, :cond_51

    :cond_4f
    move v5, v6

    :goto_50
    goto :goto_2d

    :cond_51
    move v5, v7

    goto :goto_50

    .line 871
    .end local v0    # "containerOwnerUid":I
    .end local v2    # "knoxOwnerValue":Z
    .end local v3    # "ownerValue":Z
    :cond_53
    if-lez p3, :cond_73

    const/16 v8, 0x64

    if-ge p3, v8, :cond_73

    .line 873
    invoke-direct {p0, p1, p2, p3}, getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v4

    .line 874
    .local v4, "personaValue":Z
    invoke-direct {p0, p1, p2, v7}, getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    .line 876
    .restart local v3    # "ownerValue":Z
    if-ne p2, v6, :cond_6b

    .line 877
    if-eqz v4, :cond_69

    if-eqz v3, :cond_69

    move v5, v6

    :goto_68
    goto :goto_2d

    :cond_69
    move v5, v7

    goto :goto_68

    .line 879
    :cond_6b
    if-nez v4, :cond_6f

    if-eqz v3, :cond_71

    :cond_6f
    move v5, v6

    :goto_70
    goto :goto_2d

    :cond_71
    move v5, v7

    goto :goto_70

    .line 883
    .end local v3    # "ownerValue":Z
    .end local v4    # "personaValue":Z
    :cond_73
    invoke-direct {p0, p1, p2, v7}, getStrictestValueAsUser(Ljava/lang/String;ZI)Z

    move-result v5

    goto :goto_2d
.end method

.method private getStrictestValueAsUser(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 890
    move v1, p2

    .line 891
    .local v1, "allowed":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    invoke-virtual {v4, v5, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 893
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 894
    .local v0, "adminValue":Z
    if-eq v0, v1, :cond_d

    .line 895
    move v1, v0

    .line 899
    .end local v0    # "adminValue":Z
    :cond_20
    return v1
.end method

.method private declared-synchronized getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_10

    .line 302
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 306
    :cond_10
    iget-object v0, p0, mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 301
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2137
    if-nez p0, :cond_4

    .line 2141
    :cond_3
    :goto_3
    return-object v1

    .line 2137
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 2138
    :catch_10
    move-exception v0

    .line 2139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private initCache(I)V
    .registers 16
    .param p1, "action"    # I

    .prologue
    .line 759
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v9, p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 760
    .local v9, "trustOp":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
    invoke-virtual {v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v2

    .line 763
    .local v2, "cache":Lcom/android/server/enterprise/certificate/CertificateCache;
    const/4 v12, 0x2

    new-array v3, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v3, v12

    const/4 v12, 0x1

    invoke-virtual {v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 766
    .local v3, "columns":[Ljava/lang/String;
    iget-object v12, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v12}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v11

    .line 767
    .local v11, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 768
    .local v10, "userId":I
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "CERTIFICATE"

    invoke-virtual {v12, v13, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 770
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 773
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-virtual {v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 774
    .local v8, "stringList":Ljava/lang/String;
    if-eqz v8, :cond_3e

    .line 776
    const-string v12, "adminUid"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 778
    .local v0, "adminUid":Ljava/lang/Integer;
    const-string v12, ","

    invoke-static {v8, v12}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 779
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v2, v10, v12, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    goto :goto_3e

    .line 783
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "stringList":Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_68
    return-void
.end method

.method private installCertificates(Lcom/android/server/enterprise/certificate/EdmKeyStore;Ljava/util/List;I)Ljava/util/List;
    .registers 8
    .param p1, "keystore"    # Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
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
    .line 507
    .local p2, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 509
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 510
    const/4 v0, 0x0

    .line 514
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :goto_1d
    return-object v0

    .line 513
    :cond_1e
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 514
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1d
.end method

.method private loadCache()V
    .registers 2

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, initCache(I)V

    .line 755
    const/4 v0, 0x1

    invoke-direct {p0, v0}, initCache(I)V

    .line 756
    return-void
.end method

.method private obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1384
    const-string v9, "CertificatePolicy"

    const-string/jumbo v10, "obtainMsgFromModule"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .line 1387
    .local v4, "moduleMsgName":[Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1040b59

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 1389
    const/4 v6, -0x1

    .line 1391
    .local v6, "reason":I
    const-string/jumbo v9, "wifi_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 1392
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1040b53

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1395
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1396
    .local v1, "eventReason":[Ljava/lang/String;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "eventReason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    array-length v9, v1

    if-le v9, v12, :cond_7f

    .line 1399
    aget-object v8, v1, v12

    .line 1400
    .local v8, "reasonStr":Ljava/lang/String;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reasonStr "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string/jumbo v7, "reason="

    .line 1402
    .local v7, "reasonPrefix":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 1404
    :try_start_73
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7e} :catch_ba

    move-result v6

    .line 1540
    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_7f
    :goto_7f
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    packed-switch v6, :pswitch_data_3ce

    .line 1596
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b5a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 1600
    :goto_b9
    return-object v4

    .line 1405
    .restart local v1    # "eventReason":[Ljava/lang/String;
    .restart local v7    # "reasonPrefix":Ljava/lang/String;
    .restart local v8    # "reasonStr":Ljava/lang/String;
    :catch_ba
    move-exception v2

    .line 1406
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const/4 v6, -0x1

    goto :goto_7f

    .line 1411
    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_d6
    const-string v9, "browser_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13d

    .line 1412
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1040b54

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1413
    if-eqz p2, :cond_7f

    .line 1414
    const/4 v0, -0x1

    .line 1416
    .local v0, "errorCode":I
    :try_start_ec
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_ef} :catch_10f

    move-result v0

    .line 1420
    :goto_f0
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    packed-switch v0, :pswitch_data_3ec

    .line 1441
    :pswitch_10c
    const/4 v6, 0x0

    goto/16 :goto_7f

    .line 1417
    :catch_10f
    move-exception v2

    .line 1418
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f0

    .line 1423
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_12a
    const/16 v6, 0xd

    .line 1424
    goto/16 :goto_7f

    .line 1426
    :pswitch_12e
    const/4 v6, 0x2

    .line 1427
    goto/16 :goto_7f

    .line 1429
    :pswitch_131
    const/4 v6, 0x1

    .line 1430
    goto/16 :goto_7f

    .line 1432
    :pswitch_134
    const/4 v6, 0x4

    .line 1433
    goto/16 :goto_7f

    .line 1435
    :pswitch_137
    const/4 v6, 0x3

    .line 1436
    goto/16 :goto_7f

    .line 1438
    :pswitch_13a
    const/4 v6, 0x5

    .line 1439
    goto/16 :goto_7f

    .line 1445
    .end local v0    # "errorCode":I
    :cond_13d
    const-string/jumbo v9, "package_manager_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_189

    .line 1446
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1040b55

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1447
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1448
    const/4 v5, -0x1

    .line 1450
    .local v5, "parserError":I
    :try_start_158
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/NumberFormatException; {:try_start_158 .. :try_end_15b} :catch_162

    move-result v5

    .line 1454
    :goto_15c
    packed-switch v5, :pswitch_data_40a

    .line 1466
    const/4 v6, 0x0

    goto/16 :goto_7f

    .line 1451
    :catch_162
    move-exception v2

    .line 1452
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    .line 1456
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_17d
    const/16 v6, 0xa

    .line 1457
    goto/16 :goto_7f

    .line 1459
    :pswitch_181
    const/16 v6, 0xc

    .line 1460
    goto/16 :goto_7f

    .line 1462
    :pswitch_185
    const/16 v6, 0xb

    .line 1463
    goto/16 :goto_7f

    .line 1470
    .end local v5    # "parserError":I
    :cond_189
    const-string/jumbo v9, "installer_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e5

    .line 1471
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1040b56

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1472
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1473
    const/4 v3, -0x1

    .line 1475
    .local v3, "installerError":I
    :try_start_1a4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a7
    .catch Ljava/lang/NumberFormatException; {:try_start_1a4 .. :try_end_1a7} :catch_1ae

    move-result v3

    .line 1479
    :goto_1a8
    packed-switch v3, :pswitch_data_414

    .line 1505
    :pswitch_1ab
    const/4 v6, 0x0

    goto/16 :goto_7f

    .line 1476
    :catch_1ae
    move-exception v2

    .line 1477
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 1481
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_1c9
    const/4 v6, 0x1

    .line 1482
    goto/16 :goto_7f

    .line 1484
    :pswitch_1cc
    const/4 v6, 0x2

    .line 1485
    goto/16 :goto_7f

    .line 1487
    :pswitch_1cf
    const/16 v6, 0xd

    .line 1488
    goto/16 :goto_7f

    .line 1490
    :pswitch_1d3
    const/16 v6, 0x8

    .line 1491
    goto/16 :goto_7f

    .line 1493
    :pswitch_1d7
    const/4 v6, 0x4

    .line 1494
    goto/16 :goto_7f

    .line 1496
    :pswitch_1da
    const/4 v6, 0x3

    .line 1497
    goto/16 :goto_7f

    .line 1499
    :pswitch_1dd
    const/16 v6, 0xa

    .line 1500
    goto/16 :goto_7f

    .line 1502
    :pswitch_1e1
    const/16 v6, 0xb

    .line 1503
    goto/16 :goto_7f

    .line 1509
    .end local v3    # "installerError":I
    :cond_1e5
    const-string v9, "Chrome_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 1510
    const-string v9, "CHROME"

    aput-object v9, v4, v11

    .line 1511
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1512
    const/4 v3, -0x1

    .line 1514
    .restart local v3    # "installerError":I
    :try_start_1f8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1fb
    .catch Ljava/lang/NumberFormatException; {:try_start_1f8 .. :try_end_1fb} :catch_202

    move-result v3

    .line 1518
    :goto_1fc
    sparse-switch v3, :sswitch_data_432

    .line 1535
    const/4 v6, 0x0

    goto/16 :goto_7f

    .line 1515
    :catch_202
    move-exception v2

    .line 1516
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fc

    .line 1520
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :sswitch_21d
    const/4 v6, 0x1

    .line 1521
    goto/16 :goto_7f

    .line 1523
    :sswitch_220
    const/4 v6, 0x2

    .line 1524
    goto/16 :goto_7f

    .line 1526
    :sswitch_223
    const/16 v6, 0xd

    .line 1527
    goto/16 :goto_7f

    .line 1529
    :sswitch_227
    const/4 v6, 0x4

    .line 1530
    goto/16 :goto_7f

    .line 1532
    :sswitch_22a
    const/4 v6, 0x3

    .line 1533
    goto/16 :goto_7f

    .line 1543
    .end local v3    # "installerError":I
    :pswitch_22d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b5b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1547
    :pswitch_24d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b5f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1551
    :pswitch_26d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b62

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1555
    :pswitch_28d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b5c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1559
    :pswitch_2ad
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b5d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1563
    :pswitch_2cd
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b5e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1567
    :pswitch_2ed
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b61

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1571
    :pswitch_30d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b60

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1575
    :pswitch_32d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b63

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1579
    :pswitch_34d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b64

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1583
    :pswitch_36d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b65

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1587
    :pswitch_38d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b66

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1591
    :pswitch_3ad
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040b67

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b9

    .line 1541
    nop

    :pswitch_data_3ce
    .packed-switch 0x1
        :pswitch_22d
        :pswitch_28d
        :pswitch_2ad
        :pswitch_2cd
        :pswitch_24d
        :pswitch_30d
        :pswitch_2ed
        :pswitch_26d
        :pswitch_32d
        :pswitch_34d
        :pswitch_38d
        :pswitch_36d
        :pswitch_3ad
    .end packed-switch

    .line 1421
    :pswitch_data_3ec
    .packed-switch 0x1
        :pswitch_131
        :pswitch_12e
        :pswitch_137
        :pswitch_134
        :pswitch_13a
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_12a
    .end packed-switch

    .line 1454
    :pswitch_data_40a
    .packed-switch -0x69
        :pswitch_185
        :pswitch_181
        :pswitch_17d
    .end packed-switch

    .line 1479
    :pswitch_data_414
    .packed-switch 0x1
        :pswitch_1c9
        :pswitch_1cc
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1ab
        :pswitch_1ab
        :pswitch_1ab
        :pswitch_1d3
        :pswitch_1ab
        :pswitch_1dd
        :pswitch_1e1
        :pswitch_1ab
        :pswitch_1cf
    .end packed-switch

    .line 1518
    :sswitch_data_432
    .sparse-switch
        0x1 -> :sswitch_21d
        0x2 -> :sswitch_220
        0x3 -> :sswitch_22a
        0x4 -> :sswitch_227
        0xd -> :sswitch_223
    .end sparse-switch
.end method

.method private onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1359
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    :try_start_3
    iget-object v0, p0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)Ljava/util/List;

    .line 1361
    iget-object v0, p0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)Ljava/util/List;

    .line 1362
    iget-object v0, p0, mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->hasPendingActionForUser(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1363
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, executeRollbackRefresh(II)V

    .line 1365
    :cond_19
    iget-object v0, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    .line 1366
    iget-object v0, p0, mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    .line 1367
    monitor-exit v1

    .line 1368
    return-void

    .line 1367
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private onUserSwitched(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1377
    iget-object v0, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->isGuestUser(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_1a

    .line 1378
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, executeRollbackRefresh(II)V

    .line 1379
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, executeRollbackRefresh(II)V

    .line 1381
    :cond_1a
    return-void
.end method

.method private performGenericTableUpgrade()V
    .registers 11

    .prologue
    .line 2263
    iget-object v8, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2264
    .local v7, "userId":I
    const-string/jumbo v8, "userRemovedList"

    invoke-virtual {p0, v8, v7}, getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 2265
    .local v4, "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    .local v6, "upgradedRemovedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_66

    .line 2267
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2268
    .local v0, "alias":Ljava/lang/String;
    const-string v8, "_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2269
    .local v5, "separatorIndex":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_62

    .line 2270
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2271
    .local v1, "aliasUserId":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->isInteger(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    if-le v8, v9, :cond_5e

    .line 2272
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2274
    :cond_5e
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2277
    .end local v1    # "aliasUserId":Ljava/lang/String;
    :cond_62
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2281
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "separatorIndex":I
    :cond_66
    const-string/jumbo v8, "userRemovedList"

    invoke-virtual {p0, v8, v6, v7}, putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    goto :goto_a

    .line 2284
    .end local v4    # "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "upgradedRemovedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "userId":I
    :cond_6d
    return-void
.end method

.method private performKeystoreUpgrade()V
    .registers 2

    .prologue
    .line 2251
    iget-object v0, p0, mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2252
    iget-object v0, p0, mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2253
    iget-object v0, p0, mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2254
    iget-object v0, p0, mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 2255
    return-void
.end method

.method private registerPackageChangeReceiver()V
    .registers 5

    .prologue
    .line 1139
    :try_start_0
    iget-object v2, p0, mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_27

    .line 1140
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1143
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v2, p0, mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1164
    const-string v2, "CertificatePolicy"

    const-string/jumbo v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 1169
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_27
    :goto_27
    return-void

    .line 1166
    :catch_28
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method private registerReceivers()V
    .registers 5

    .prologue
    .line 279
    invoke-direct {p0}, registerPackageChangeReceiver()V

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v2, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v1, "filterUser":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    return-void
.end method

.method private removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z
    .registers 12
    .param p1, "trustOp"    # Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
    .param p2, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 597
    .local p3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 598
    const/4 v5, 0x0

    .line 615
    :goto_7
    return v5

    .line 601
    :cond_8
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 602
    .local v4, "userId":I
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v1

    .line 603
    .local v1, "cache":Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAuditMessageFormat()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4, p2, v5}, auditLog(Ljava/util/List;ILjava/lang/String;)V

    .line 604
    invoke-virtual {v1, v4, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeFromCache(IILjava/util/List;)V

    .line 605
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v3, "keystoreRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v1, v0, v4}, Lcom/android/server/enterprise/certificate/CertificateCache;->isAliasPresent(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_23

    .line 610
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 613
    .end local v0    # "alias":Ljava/lang/String;
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 614
    invoke-virtual {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAction()I

    move-result v5

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6, p2}, updateKeystores(III)V

    .line 615
    const/4 v5, 0x1

    goto :goto_7
.end method

.method private removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .param p1, "uid"    # I
    .param p3, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    .local p2, "listToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v8, "strBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 994
    .local v6, "removed":Z
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "CERTIFICATE"

    invoke-virtual {v9, p1, v10, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 996
    .local v5, "previousList":Ljava/lang/String;
    if-eqz v5, :cond_76

    .line 997
    const-string v9, ","

    invoke-static {v5, v9}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 999
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1000
    .local v1, "certAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1002
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    .line 1003
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1005
    :cond_4d
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1009
    .end local v0    # "alias":Ljava/lang/String;
    :cond_51
    const/4 v3, 0x0

    .line 1010
    .local v3, "finalList":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_67

    .line 1011
    const/4 v9, 0x0

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1013
    :cond_67
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "CERTIFICATE"

    invoke-virtual {v9, p1, v10, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_76

    .line 1015
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    .end local v1    # "certAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "finalList":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_76
    return-object v7
.end method

.method private retrieveAppPermissionsFromDb(I)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2091
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2094
    .local v5, "storedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    const/4 v7, 0x6

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v3, v9

    const/4 v7, 0x1

    const-string/jumbo v8, "pkgName"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "host"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "port"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "alias"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "storageName"

    aput-object v8, v3, v7

    .line 2104
    .local v3, "returnColumns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2105
    .local v4, "selectionValues":Landroid/content/ContentValues;
    invoke-static {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#SelectClause#"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 2111
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2112
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v1}, fromContentValues(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object v0

    .line 2113
    .local v0, "appPerm":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    if-eqz v0, :cond_44

    .line 2114
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 2118
    .end local v0    # "appPerm":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_5a
    return-object v5
.end method

.method private setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Z)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "grant"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2180
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v5

    invoke-virtual {v5, p1, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2182
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_12

    .line 2183
    if-eqz p4, :cond_10

    .line 2215
    :cond_f
    :goto_f
    return v4

    .line 2187
    :cond_10
    const/4 v4, 0x1

    goto :goto_f

    .line 2191
    :cond_12
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2192
    .local v1, "appUid":I
    const/4 v2, 0x0

    .line 2194
    .local v2, "connection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_15
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_36

    move-result-object v2

    .line 2198
    const/4 v4, 0x0

    .line 2200
    .local v4, "result":Z
    if-eqz v2, :cond_26

    .line 2202
    :try_start_1e
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    invoke-interface {v5, v1, p3, p4}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_38
    .catchall {:try_start_1e .. :try_end_25} :catchall_40

    .line 2203
    const/4 v4, 0x1

    .line 2208
    :cond_26
    if-eqz v2, :cond_2b

    .line 2209
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2212
    :cond_2b
    :goto_2b
    if-eqz v4, :cond_f

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_f

    .line 2195
    .end local v4    # "result":Z
    :catch_36
    move-exception v3

    .line 2196
    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_f

    .line 2205
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "result":Z
    :catch_38
    move-exception v3

    .line 2206
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    .line 2208
    if-eqz v2, :cond_2b

    .line 2209
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_2b

    .line 2208
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_40
    move-exception v5

    if-eqz v2, :cond_46

    .line 2209
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_46
    throw v5
.end method

.method private toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;
    .registers 5
    .param p1, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    .line 2145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2146
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const-string/jumbo v1, "host"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string/jumbo v1, "port"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2149
    const-string v1, "alias"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 2152
    const-string/jumbo v1, "storageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    :cond_40
    return-object v0
.end method

.method private triggerContainerOperation(IIII)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "adminUid"    # I
    .param p3, "operation"    # I
    .param p4, "targetNum"    # I

    .prologue
    .line 704
    if-nez p1, :cond_1e

    .line 705
    invoke-direct {p0, p2, p4}, getContainersForRollbackOrRefresh(II)Ljava/util/List;

    move-result-object v1

    .line 706
    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 707
    .local v0, "containerId":I
    invoke-direct {p0, p3, v0}, executeRollbackRefresh(II)V

    goto :goto_a

    .line 710
    .end local v0    # "containerId":I
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1e
    return-void
.end method

.method private validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 19
    .param p1, "storageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 2050
    const/4 v2, 0x0

    .line 2051
    .local v2, "aliasArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2052
    .local v3, "aliasFinal":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 2053
    const-string v11, "CertificatePolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " validateAlias called. storage name : null or empty, alias : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", packageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v11, p0, mKeyStore:Landroid/security/KeyStore;

    const-string v12, "USRPKEY_"

    const/4 v13, 0x4

    move/from16 v0, p4

    invoke-static {v13, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2058
    move-object/from16 v3, p2

    .line 2080
    :cond_4b
    :goto_4b
    if-nez v2, :cond_fe

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 2084
    .local v4, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_51
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 2087
    .end local v3    # "aliasFinal":Ljava/lang/String;
    :goto_59
    return-object v3

    .line 2060
    .end local v4    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "aliasFinal":Ljava/lang/String;
    :cond_5a
    const-string v11, "CertificatePolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " validateAlias called. storage name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", alias : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", packageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", userId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-object v11, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v11, v0, v12, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2063
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_4b

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_4b

    .line 2065
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v8

    .line 2066
    .local v8, "ucmUtil":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    if-eqz v8, :cond_4b

    .line 2067
    new-instance v11, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v11, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v10

    .line 2068
    .local v10, "uriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v9

    .line 2069
    .local v9, "uri":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v3

    .line 2070
    const/4 v11, 0x1

    invoke-virtual {v8, v9, v11}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v6

    .line 2071
    .local v6, "response":Landroid/os/Bundle;
    if-eqz v6, :cond_4b

    .line 2072
    const-string/jumbo v11, "stringarrayresponse"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2073
    const-string/jumbo v11, "errorresponse"

    const/4 v12, -0x1

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2074
    .local v7, "statusCode":I
    const-string v11, "CertificatePolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "statusCode - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 2080
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "response":Landroid/os/Bundle;
    .end local v7    # "statusCode":I
    .end local v8    # "ucmUtil":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "uriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    :cond_fe
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_51

    .line 2087
    .restart local v4    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_104
    const/4 v3, 0x0

    goto/16 :goto_59
.end method

.method private varargs validateCerts([Ljava/security/cert/X509Certificate;)I
    .registers 22
    .param p1, "arrayCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 1742
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1743
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    .line 1744
    .local v4, "certPath":Ljava/security/cert/CertPath;
    const/16 v16, 0x0

    .line 1748
    .local v16, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1749
    .local v7, "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_88

    .line 1751
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 1752
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    .line 1759
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :goto_28
    const/4 v13, 0x0

    .line 1760
    .local v13, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_aa

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1764
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 1771
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :goto_4e
    new-instance v15, Ljava/security/cert/TrustAnchor;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v13, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 1772
    .local v15, "trustAnchor":Ljava/security/cert/TrustAnchor;
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 1775
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 1776
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_64
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_64} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_64} :catch_c8

    move-result-object v4

    .line 1788
    :try_start_65
    new-instance v11, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_65 .. :try_end_6c} :catch_e5

    .line 1795
    .local v11, "params":Ljava/security/cert/PKIXParameters;
    const/4 v5, 0x0

    .line 1797
    .local v5, "certPathValidator":Ljava/security/cert/CertPathValidator;
    :try_start_6d
    const-string v17, "PKIX"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_72
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6d .. :try_end_72} :catch_102

    move-result-object v5

    .line 1804
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1807
    const/4 v12, 0x0

    .line 1809
    .local v12, "result":I
    :try_start_7b
    invoke-virtual {v5, v4, v11}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v8

    .line 1811
    .local v8, "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    const-string v17, "CertificatePolicy"

    const-string v18, "Validation success"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7b .. :try_end_86} :catch_120
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7b .. :try_end_86} :catch_13e

    .line 1812
    const/4 v12, -0x1

    .line 1848
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    .end local v12    # "result":I
    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_87
    return v12

    .line 1755
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_88
    :try_start_88
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8b
    .catch Ljava/security/cert/CertificateException; {:try_start_88 .. :try_end_8b} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_88 .. :try_end_8b} :catch_c8

    goto :goto_28

    .line 1777
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_8c
    move-exception v9

    .line 1778
    .local v9, "e":Ljava/security/cert/CertificateException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failure generating cert path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const/16 v12, 0x8

    goto :goto_87

    .line 1768
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :cond_aa
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v0, v0, mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1769
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;
    :try_end_c7
    .catch Ljava/security/cert/CertificateException; {:try_start_aa .. :try_end_c7} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_aa .. :try_end_c7} :catch_c8

    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    goto :goto_4e

    .line 1780
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_c8
    move-exception v9

    .line 1781
    .local v9, "e":Ljava/lang/AssertionError;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "If FIPS mode is turned on, cannot use MD5 algorithm : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const/4 v12, 0x0

    goto :goto_87

    .line 1789
    .end local v9    # "e":Ljava/lang/AssertionError;
    .restart local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_e5
    move-exception v9

    .line 1790
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    const/4 v12, 0x0

    goto :goto_87

    .line 1798
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .restart local v11    # "params":Ljava/security/cert/PKIXParameters;
    :catch_102
    move-exception v9

    .line 1799
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const/4 v12, 0x0

    goto/16 :goto_87

    .line 1813
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v12    # "result":I
    :catch_120
    move-exception v9

    .line 1814
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/4 v12, 0x0

    .line 1846
    goto/16 :goto_87

    .line 1816
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_13e
    move-exception v9

    .line 1817
    .local v9, "e":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1818
    .local v10, "errorMessage":Ljava/lang/String;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Validation failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string v17, "Additional certificate path checker failed."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_177

    .line 1821
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    .line 1822
    .local v14, "t":Ljava/lang/Throwable;
    if-eqz v14, :cond_177

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_177

    .line 1823
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1826
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_177
    const-string/jumbo v17, "is revoked"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_18c

    const-string v17, "Certificate revocation after"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_18f

    .line 1828
    :cond_18c
    const/4 v12, 0x2

    goto/16 :goto_87

    .line 1829
    :cond_18f
    const-string v17, "OCSP check failed!"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d5

    const-string v17, "Certificate status could not be determined."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d5

    const-string v17, "CRL distribution point extension could not be read"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d5

    const-string v17, "No additional CRL locations could be decoded from CRL distribution point extension."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d5

    const-string v17, "Distribution points could not be read."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d5

    const-string v17, "No valid CRL found."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d5

    const-string v17, "Unable to get CRL for certificate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1d9

    .line 1836
    :cond_1d5
    const/16 v12, 0xd

    goto/16 :goto_87

    .line 1837
    :cond_1d9
    const-string v17, ", expiration time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1ef

    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/security/cert/CertificateExpiredException;

    move/from16 v17, v0

    if-eqz v17, :cond_1f2

    .line 1839
    :cond_1ef
    const/4 v12, 0x4

    goto/16 :goto_87

    .line 1840
    :cond_1f2
    const-string v17, ", validation time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_208

    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/security/cert/CertificateNotYetValidException;

    move/from16 v17, v0

    if-eqz v17, :cond_20b

    .line 1842
    :cond_208
    const/4 v12, 0x3

    goto/16 :goto_87

    .line 1844
    :cond_20b
    const/4 v12, 0x0

    goto/16 :goto_87
.end method

.method private validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .registers 8
    .param p1, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    .line 2122
    if-eqz p1, :cond_32

    .line 2123
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2124
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2125
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2126
    .local v4, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v3

    .line 2127
    .local v3, "port":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2128
    .local v5, "storageName":Ljava/lang/String;
    if-eqz v1, :cond_32

    if-eqz v2, :cond_32

    if-eqz v4, :cond_32

    .line 2129
    new-instance v0, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    invoke-direct/range {v0 .. v5}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2132
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "storageName":Ljava/lang/String;
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method


# virtual methods
.method public addCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .registers 16
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v10, 0x0

    .line 473
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 474
    .local v1, "adminUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 475
    .local v8, "userId":I
    const/4 v6, 0x1

    .line 477
    .local v6, "ret":Z
    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_11

    .line 501
    :cond_10
    :goto_10
    return v10

    .line 481
    :cond_11
    new-instance v7, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v7, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 482
    .local v7, "trustOp":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
    invoke-virtual {v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getCache()Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v3

    .line 483
    .local v3, "cache":Lcom/android/server/enterprise/certificate/CertificateCache;
    invoke-virtual {v3, v8}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v5

    .line 485
    .local v5, "prevSize":I
    invoke-static {p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 486
    .local v4, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v9

    invoke-direct {p0, v9, v4, v8}, installCertificates(Lcom/android/server/enterprise/certificate/EdmKeyStore;Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 487
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_10

    .line 490
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_5b

    const/4 v9, 0x1

    :goto_37
    and-int/2addr v6, v9

    .line 491
    invoke-virtual {v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v1, v2, v9}, addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "addedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_10

    .line 496
    invoke-virtual {v3, v8, v1, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    .line 497
    if-eqz v6, :cond_52

    .line 498
    invoke-virtual {v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAuditMessageFormat()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v1, v9}, auditLog(Ljava/util/List;ILjava/lang/String;)V

    .line 500
    :cond_52
    invoke-virtual {v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getAction()I

    move-result v9

    invoke-virtual {p0, v9, v5, v1}, updateKeystores(III)V

    move v10, v6

    .line 501
    goto :goto_10

    .end local v0    # "addedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5b
    move v9, v10

    .line 490
    goto :goto_37
.end method

.method public addPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Z
    .registers 13
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    const/4 v4, 0x0

    .line 1918
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v5

    iget v0, v5, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1919
    .local v0, "adminUid":I
    const/4 v3, 0x0

    .line 1920
    .local v3, "result":Z
    invoke-direct {p0, p2}, validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object p2

    .line 1922
    if-eqz p2, :cond_3f

    .line 1925
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 1926
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, enforceUCMPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 1927
    .local v2, "enforced":Z
    if-nez v2, :cond_23

    .line 1937
    .end local v2    # "enforced":Z
    :goto_22
    return v4

    .line 1933
    :cond_23
    invoke-direct {p0, p2}, toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1934
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1935
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PermAppPrivateKey"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_41

    const/4 v3, 0x1

    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_3f
    :goto_3f
    move v4, v3

    .line 1937
    goto :goto_22

    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_41
    move v3, v4

    .line 1935
    goto :goto_3f
.end method

.method public addTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, addCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public addUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, addCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public allowUserRemoveCertificates(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 817
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "ret":Z
    if-eqz p1, :cond_1e

    .line 820
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string v4, "allowUserRemoveCertificate"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 822
    if-eqz v0, :cond_1e

    .line 823
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, sendIntentToSettings(I)V

    .line 826
    :cond_1e
    return v0
.end method

.method public clearPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1963
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1964
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, clearPermissionApplicationPrivateKey(I)Z

    move-result v0

    return v0
.end method

.method public clearTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 399
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 400
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, clearCertificates(II)Z

    move-result v0

    return v0
.end method

.method public clearUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 428
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 429
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, clearCertificates(II)Z

    move-result v0

    return v0
.end method

.method public enableCertificateFailureNotification(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1240
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1241
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string/jumbo v3, "notificateSignatureFailureToUser"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableCertificateValidationAtInstall(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1695
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1696
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string/jumbo v3, "validateCertificateAtInstall"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableSignatureIdentityInformation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1044
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1045
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string/jumbo v4, "signatureIdentityInformationEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1048
    .local v0, "ret":Z
    return v0
.end method

.method public generateAliases(Ljava/util/List;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .registers 7
    .param p2, "keystore"    # Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;",
            "Lcom/android/server/enterprise/certificate/EdmKeyStore;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/CertificateInfo;

    .line 621
    .local v1, "cert":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 623
    .end local v1    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_23
    return-object v0
.end method

.method getGenericList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
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
    .line 1026
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "value":Ljava/lang/String;
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 20
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1085
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v6, v15, :cond_66

    .line 1088
    aget-object v15, p2, v6

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1089
    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1091
    .local v7, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1093
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_17
    const-string v15, "X509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1c} :catch_5e

    move-result-object v3

    .line 1098
    const/4 v1, 0x0

    .line 1100
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_1e
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/security/cert/CertificateException; {:try_start_1e .. :try_end_24} :catch_67

    .line 1105
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1106
    .local v9, "mSslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, "cn":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v10

    .line 1108
    .local v10, "o":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v11

    .line 1111
    .local v11, "ou":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_73

    .line 1112
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_70

    .line 1113
    move-object v13, v10

    .line 1114
    .local v13, "subjectPrimary":Ljava/lang/String;
    move-object v14, v4

    .line 1128
    .local v14, "subjectSecondary":Ljava/lang/String;
    :goto_4f
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    .line 1129
    .local v8, "item":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v13, v8, v15

    .line 1130
    const/4 v15, 0x1

    aput-object v14, v8, v15

    .line 1131
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1094
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cn":Ljava/lang/String;
    .end local v8    # "item":[Ljava/lang/String;
    .end local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .end local v10    # "o":Ljava/lang/String;
    .end local v11    # "ou":Ljava/lang/String;
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :catch_5e
    move-exception v5

    .line 1095
    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "CertificateFactory error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .end local v2    # "cert":[B
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_66
    :goto_66
    return-object v12

    .line 1101
    .restart local v2    # "cert":[B
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_67
    move-exception v5

    .line 1102
    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "X509Certificate error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1116
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cn":Ljava/lang/String;
    .restart local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .restart local v10    # "o":Ljava/lang/String;
    .restart local v11    # "ou":Ljava/lang/String;
    :cond_70
    move-object v13, v10

    .line 1117
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    move-object v14, v11

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f

    .line 1120
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7d

    .line 1121
    move-object v13, v4

    .line 1122
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f

    .line 1124
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_7d
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v13

    .line 1125
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f
.end method

.method public getListPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1993
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1994
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1995
    .local v0, "userId":I
    invoke-direct {p0, v0}, retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .registers 4

    .prologue
    .line 1875
    const/4 v1, 0x0

    .line 1876
    .local v1, "mPersonaManager":Lcom/android/server/pm/PersonaManagerService;
    if-nez v1, :cond_10

    .line 1877
    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1878
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    .end local v1    # "mPersonaManager":Lcom/android/server/pm/PersonaManagerService;
    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 1881
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "mPersonaManager":Lcom/android/server/pm/PersonaManagerService;
    :cond_10
    return-object v1
.end method

.method public getTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 394
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, getCertificatesList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 423
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, getCertificatesList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "certAlias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 437
    const-string/jumbo v1, "systemDisabledList"

    invoke-virtual {p0, v1, p2}, getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 439
    .local v0, "disabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isCaCertificateTrustedAsUser(Landroid/app/enterprise/CertificateInfo;ZI)Z
    .registers 9
    .param p1, "certificate"    # Landroid/app/enterprise/CertificateInfo;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 445
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 446
    .local v0, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, v3

    .line 467
    :cond_13
    :goto_13
    return v1

    .line 450
    :cond_14
    const-string v4, "com.android.certinstaller"

    invoke-direct {p0, v0, v4}, checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 451
    iget-object v4, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, p0, mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v4

    if-nez v4, :cond_2b

    move v1, v3

    .line 454
    goto :goto_13

    .line 456
    :cond_2b
    const/4 v1, 0x1

    .line 457
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 458
    .local v2, "x509cert":Ljava/security/cert/X509Certificate;
    iget-object v4, p0, mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v4, v2, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/security/cert/X509Certificate;Z)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 459
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, p3}, verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    and-int/2addr v1, v3

    .line 464
    :goto_40
    if-eqz p2, :cond_13

    if-nez v1, :cond_13

    .line 465
    const v3, 0x1040b51

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_13

    .line 461
    :cond_4b
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, p3}, verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_40
.end method

.method public isCertificateFailureNotificationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 1247
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1248
    const-string v2, "CertificatePolicy"

    const-string v3, " isCertificateFailureNotificationEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_10
    return v1

    .line 1252
    :cond_11
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1253
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1254
    .local v0, "userId":I
    const-string/jumbo v2, "notificateSignatureFailureToUser"

    invoke-direct {p0, v2, v1, v0}, getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v1

    goto :goto_10
.end method

.method public isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1701
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1702
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isCertificateValidationAtInstallEnabledAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1706
    const-string/jumbo v0, "validateCertificateAtInstall"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {p0, v5}, getPackagesForPid(I)Ljava/util/List;

    move-result-object v2

    .line 1667
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_25

    const-string v5, "com.android.certinstaller"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {p0, p1}, isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1668
    iget-object v5, p0, mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1686
    :cond_24
    :goto_24
    return v4

    .line 1671
    :cond_25
    const/4 v4, 0x0

    .line 1673
    .local v4, "ret":Z
    invoke-direct {p0}, getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .line 1674
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    .line 1678
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1679
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    const-string v5, "*"

    invoke-virtual {v0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1681
    :cond_4c
    const/4 v4, 0x1

    .line 1682
    goto :goto_24
.end method

.method public isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 2000
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2001
    .local v0, "userId":I
    invoke-virtual {p0, p2, p3, p4, v0}, isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "userId"    # I

    .prologue
    .line 2006
    const/4 v4, 0x0

    .line 2007
    .local v4, "result":Ljava/lang/String;
    invoke-static {p1}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 2009
    invoke-direct {p0, p4}, retrieveAppPermissionsFromDb(I)Ljava/util/List;

    move-result-object v2

    .line 2010
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .line 2011
    .local v3, "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 2013
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2015
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1, p4}, validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2040
    :cond_3d
    :goto_3d
    if-eqz v4, :cond_f

    .line 2045
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    .end local v3    # "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_3f
    return-object v4

    .line 2018
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    .restart local v3    # "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_40
    invoke-static {p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2019
    if-eqz p2, :cond_3d

    .line 2020
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, "adminDomain":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 2022
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2023
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2026
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_60
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7c

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 2030
    :cond_7c
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_89

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v6

    if-ne p3, v6, :cond_3d

    .line 2033
    :cond_89
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, p1, p4}, validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3d
.end method

.method public isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1638
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {p0, v5}, getPackagesForPid(I)Ljava/util/List;

    move-result-object v2

    .line 1641
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_25

    const-string v5, "com.android.certinstaller"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {p0, p1}, isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1642
    iget-object v5, p0, mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1660
    :cond_24
    :goto_24
    return v4

    .line 1645
    :cond_25
    const/4 v4, 0x0

    .line 1647
    .local v4, "ret":Z
    invoke-direct {p0}, getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .line 1648
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    .line 1652
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1653
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    const-string v5, "*"

    invoke-virtual {v0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1655
    :cond_4c
    const/4 v4, 0x1

    .line 1656
    goto :goto_24
.end method

.method public isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1052
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1053
    const-string v4, "CertificatePolicy"

    const-string v5, " isSignatureIdentityInformationEnabled calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const/4 v1, 0x0

    .line 1069
    :cond_10
    :goto_10
    return v1

    .line 1057
    :cond_11
    const-string v4, "com.android.packageinstaller"

    invoke-direct {p0, p1, v4}, checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1058
    const/4 v1, 0x0

    .line 1059
    .local v1, "enabled":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string/jumbo v6, "signatureIdentityInformationEnabled"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1063
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1064
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1065
    const/4 v1, 0x1

    .line 1066
    goto :goto_10
.end method

.method public isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 830
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 831
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 835
    const-string v0, "allowUserRemoveCertificate"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 1260
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1261
    .local v0, "userId":I
    invoke-virtual {p0, p1, p2, p3, v0}, notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1262
    return-void
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 1266
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1268
    const-string v5, "CertificatePolicy"

    const-string v6, " notifyCertificateFailure calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_18
    :goto_18
    return-void

    .line 1272
    :cond_19
    :try_start_19
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v5}, enforceNotifyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_25} :catch_98

    .line 1281
    :goto_25
    invoke-direct {p0, p1, p2}, obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1284
    .local v4, "userMsgModName":[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.certificate.action.certificate.failure"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, "adminNotification":Landroid/content/Intent;
    const-string v5, "certificate_failure_module"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    const-string v5, "certificate_failure_message"

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    const-string v5, "com.samsung.edm.intent.extra.USER_ID"

    invoke-virtual {v0, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1290
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    invoke-direct {v1, p0, p4, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;)V

    .line 1312
    .local v1, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1315
    const-string/jumbo v5, "notificateSignatureFailureToUser"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, p4}, getPolicyValueBackwardCompatibleAsUser(Ljava/lang/String;ZI)Z

    move-result v3

    .line 1321
    .local v3, "isNotificationEnabled":Z
    if-eqz v3, :cond_18

    if-eqz p3, :cond_18

    .line 1322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x1040b52

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    goto :goto_18

    .line 1273
    .end local v0    # "adminNotification":Landroid/content/Intent;
    .end local v1    # "broadcastThread":Ljava/lang/Thread;
    .end local v3    # "isNotificationEnabled":Z
    .end local v4    # "userMsgModName":[Ljava/lang/String;
    :catch_98
    move-exception v2

    .line 1276
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    const-string v6, "CertificatePolicy"

    const-string/jumbo v7, "notifyCertificateFailure"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .registers 9
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1885
    invoke-direct {p0}, enforceSystemUser()V

    .line 1886
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.edm.intent.action.CERTIFICATE_REMOVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v1, "intentNotification":Landroid/content/Intent;
    const-string v3, "com.samsung.edm.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1888
    const-string v3, "com.samsung.edm.intent.extra.USER_ID"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1890
    move v2, p2

    .line 1891
    .local v2, "targetUserId":I
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1893
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 1894
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1897
    .end local v0    # "adminUid":I
    :cond_25
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending certificate removed intent to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (subject), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (userId)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1904
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "CertificatePolicy/certificateRemoved"

    invoke-static {v3, v4, p2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1909
    return-void
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2300
    iget-object v0, p0, mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->hasPendingActionForUser(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2301
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, executeRollbackRefresh(II)V

    .line 2302
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, executeRollbackRefresh(II)V

    .line 2304
    :cond_10
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2221
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2225
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 2288
    const-string v0, "CertificatePolicy"

    const-string/jumbo v1, "onPreAdminRemoval..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, clearCertificates(II)Z

    .line 2290
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, clearCertificates(II)Z

    .line 2291
    return-void
.end method

.method public performUpgrade()V
    .registers 5

    .prologue
    .line 2235
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "cert_migration"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2236
    .local v0, "migration":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2243
    :goto_13
    return-void

    .line 2239
    :cond_14
    invoke-direct {p0}, performKeystoreUpgrade()V

    .line 2240
    invoke-direct {p0}, performGenericTableUpgrade()V

    .line 2241
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "cert_migration"

    const-string/jumbo v3, "ok"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_13
.end method

.method putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1031
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, ","

    invoke-static {p2, v1}, Lcom/android/server/enterprise/utils/Utils;->convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z
    .registers 12
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 576
    .local v0, "adminUid":I
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    .line 577
    :cond_a
    const/4 v7, 0x0

    .line 591
    :goto_b
    return v7

    .line 580
    :cond_c
    new-instance v6, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    invoke-direct {v6, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 581
    .local v6, "trustOp":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
    invoke-virtual {v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v7

    invoke-virtual {p0, p2, v7}, generateAliases(Ljava/util/List;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->getDbColumn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v1, v7}, removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 584
    .local v4, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v5, "removedCertificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_41

    .line 586
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 587
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 590
    :cond_41
    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 591
    .local v2, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v6, v0, v4, v2}, removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    move-result v7

    goto :goto_b
.end method

.method public removePermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Z
    .registers 10
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    const/4 v3, 0x0

    .line 1942
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v4

    iget v0, v4, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1943
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1944
    .local v1, "result":Z
    invoke-direct {p0, p2}, validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object p2

    .line 1946
    if-eqz p2, :cond_39

    .line 1948
    invoke-direct {p0, p2}, toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1949
    .local v2, "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1950
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PermAppPrivateKey"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_3a

    const/4 v1, 0x1

    .line 1954
    :goto_26
    if-eqz v1, :cond_39

    .line 1955
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, v3}, setPrivateKeyGrant(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    .line 1959
    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_39
    return v1

    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_3a
    move v1, v3

    .line 1950
    goto :goto_26
.end method

.method public removeTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 388
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, removeCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public removeUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 416
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 417
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, removeCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method sendIntentToSettings(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 908
    iget-object v0, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-boolean v1, p0, mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 909
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 2229
    invoke-virtual {p0}, performUpgrade()V

    .line 2230
    invoke-direct {p0}, loadCache()V

    .line 2231
    return-void
.end method

.method public updateKeystores(III)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "cacheSize"    # I
    .param p3, "adminUid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 658
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 660
    .local v0, "userId":I
    packed-switch p1, :pswitch_data_2c

    .line 691
    :goto_9
    return-void

    .line 662
    :pswitch_a
    if-nez p2, :cond_10

    .line 663
    invoke-direct {p0, v2, v0}, executeRollbackRefresh(II)V

    goto :goto_9

    .line 665
    :cond_10
    invoke-direct {p0, v1, v0}, executeRollbackRefresh(II)V

    .line 671
    invoke-direct {p0, v0, p3, v2, v2}, triggerContainerOperation(IIII)V

    goto :goto_9

    .line 675
    :pswitch_17
    if-nez p2, :cond_1d

    .line 676
    invoke-direct {p0, v1, v0}, executeRollbackRefresh(II)V

    goto :goto_9

    .line 678
    :cond_1d
    invoke-direct {p0, v2, v0}, executeRollbackRefresh(II)V

    .line 681
    invoke-direct {p0, v0, p3, v1, v1}, triggerContainerOperation(IIII)V

    goto :goto_9

    .line 685
    :pswitch_24
    invoke-direct {p0, v2, v0}, executeRollbackRefresh(II)V

    goto :goto_9

    .line 688
    :pswitch_28
    invoke-direct {p0, v1, v0}, executeRollbackRefresh(II)V

    goto :goto_9

    .line 660
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_24
        :pswitch_17
        :pswitch_28
    .end packed-switch
.end method

.method public validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I
    .registers 5
    .param p1, "certInfo"    # Landroid/app/enterprise/CertificateInfo;

    .prologue
    .line 1714
    invoke-virtual {p1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1715
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v1

    return v1
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1722
    .local p1, "listCertInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v4, 0x0

    .line 1725
    .local v4, "result":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1727
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {p0, v5}, validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    .line 1728
    const/4 v5, -0x1

    if-ne v4, v5, :cond_54

    .line 1729
    const/4 v4, 0x0

    .line 1732
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1733
    .local v3, "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/CertificateInfo;

    .line 1734
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1736
    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v5}, validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    .line 1738
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_54
    return v4
.end method

.method verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "mode"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 795
    const/4 v1, 0x1

    .line 796
    .local v1, "result":Z
    const/4 v0, -0x1

    .line 797
    .local v0, "containerOwner":I
    invoke-static {p3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 798
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 800
    :cond_f
    and-int/lit8 v3, p2, 0x1

    if-ne v3, v2, :cond_24

    iget-object v3, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v3

    if-eqz v3, :cond_24

    .line 803
    iget-object v3, p0, mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v4, p0, mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v3, v4, p1, p3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    and-int/2addr v1, v3

    .line 806
    :cond_24
    if-eqz v1, :cond_3e

    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3e

    iget-object v3, p0, mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v3

    if-eqz v3, :cond_3e

    .line 809
    iget-object v3, p0, mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    iget-object v4, p0, mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v3, v4, p1, p3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_3f

    :goto_3d
    and-int/2addr v1, v2

    .line 812
    :cond_3e
    return v1

    .line 809
    :cond_3f
    const/4 v2, 0x0

    goto :goto_3d
.end method
