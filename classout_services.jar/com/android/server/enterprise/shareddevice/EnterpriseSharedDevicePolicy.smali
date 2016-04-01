.class public Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.super Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;
.source "EnterpriseSharedDevicePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;,
        Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    }
.end annotation


# static fields
.field public static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final MAX_PWD_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final PASSWORD_SALT:Ljava/lang/String; = "passwordsaltshareddevice"

.field private static final PERMISSION_SD_KEYGUARD:Ljava/lang/String; = "com.sec.knox.permission.KEYGUARD_SERVICE"

.field private static final PERMISSION_SHARED_DEVICES:Ljava/lang/String; = "android.permission.sec.MDM_SHARED_DEVICE"

.field private static final SD_KEYGUARD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard"

.field private static final SD_KEYGUARD_RECEIVER_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardReceiver"

.field private static final SD_PACKAGE:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final SD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field public static final SHARED_PWD:Ljava/lang/String; = "SharedDevice"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static sContextStatic:Landroid/content/Context;

.field private static sSharedDevicesStateInternal:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeyStore:Landroid/security/KeyStore;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSDAgentInstallerPackage:Ljava/lang/String;

.field private mSDAgentInstallerPackageUid:I

.field private mSharedDevicesState:Z

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mUsersDir:Ljava/io/File;

.field private mValues:Landroid/content/ContentValues;

.field private mWhere:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 86
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, USER_INFO_DIR:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, sSharedDevicesStateInternal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;-><init>()V

    .line 102
    iput-object v4, p0, mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, mSharedDevicesState:Z

    .line 119
    iput-object v4, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    iput-object v4, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .line 125
    const v0, 0x7fffffff

    iput v0, p0, mSDAgentInstallerPackageUid:I

    .line 126
    iput-object v4, p0, mSDAgentInstallerPackage:Ljava/lang/String;

    .line 127
    iput-object v4, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 128
    iput-object v4, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 720
    new-instance v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iput-object v0, p0, mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, sContextStatic:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, isKnoxVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 134
    invoke-direct {p0}, getSharedDevicesState()Z

    move-result v0

    iput-boolean v0, p0, mSharedDevicesState:Z

    .line 135
    invoke-direct {p0}, getSharedDevicesState()Z

    move-result v0

    sput-boolean v0, sSharedDevicesStateInternal:Z

    .line 136
    iget-boolean v0, p0, mSharedDevicesState:Z

    if-eqz v0, :cond_47

    .line 137
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 139
    :cond_47
    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;)V

    .line 140
    .local v1, "sdStateReceiver":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "Registering broadcast SDAgentPackageStateReceiver!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    .end local v1    # "sdStateReceiver":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    :goto_70
    return-void

    .line 147
    :cond_71
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "This KNOX Version is not supported!"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, checkSDSignature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;[Landroid/app/enterprise/license/LicenseInfo;)[Landroid/app/enterprise/license/LicenseInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # [Landroid/app/enterprise/license/LicenseInfo;

    .prologue
    .line 85
    iput-object p1, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, removeCredentialStoragePolicies()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, mSDAgentInstallerPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, removeAppliedPolicies()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, disableSDKeyguard()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, mSharedDevicesState:Z

    return p1
.end method

.method static synthetic access$1802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 85
    sput-boolean p0, sSharedDevicesStateInternal:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/policy/IKeyguardService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    iget-object v0, p0, mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 85
    iput-object p1, p0, mKeyguardService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, enableSD()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, showProgressDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    iget v0, p0, mSDAgentInstallerPackageUid:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, mSDAgentInstallerPackageUid:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, findSDAgentInstallerPackageUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, getDefaultDeviceStorageFiles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, deleteAndroidKeystoreCertificates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 85
    invoke-direct {p0}, applyRuntimePermissionsToSDAgent()I

    move-result v0

    return v0
.end method

.method private applyCredentialStoragePolicies()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 477
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Apply credential storage policy "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 479
    .local v2, "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v2, :cond_2b

    .line 480
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v0

    .line 481
    .local v0, "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    new-instance v1, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 482
    .local v1, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v4, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v4, v1, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 483
    iput-boolean v6, v1, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 484
    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->setCCMProfile(Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z

    .line 485
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getTimaKeystorePolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/keystore/TimaKeystore;

    move-result-object v3

    .line 486
    .local v3, "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    invoke-virtual {v3, v6}, Lcom/sec/enterprise/knox/keystore/TimaKeystore;->enableTimaKeystore(Z)Z

    .line 488
    .end local v0    # "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    .end local v1    # "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .end local v3    # "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    :cond_2b
    return-void
.end method

.method private applyPolicies()V
    .registers 6

    .prologue
    .line 557
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Applying Policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "applied":Z
    :try_start_8
    invoke-direct {p0}, getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v2

    invoke-direct {p0}, getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_35

    move-result v3

    and-int v0, v2, v3

    .line 565
    :goto_1c
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policies Applied? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void

    .line 562
    :catch_35
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private applyRuntimePermissionsToSDAgent()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    new-instance v2, Lcom/sec/enterprise/AppIdentity;

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-direct {v2, v3, v4}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/enterprise/ApplicationPolicy;->applyRuntimePermissions(Lcom/sec/enterprise/AppIdentity;Ljava/util/List;I)I

    move-result v0

    .line 264
    .local v0, "status":I
    packed-switch v0, :pswitch_data_4a

    .line 280
    const/4 v0, -0x3

    .line 281
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "permissions not applied"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_21
    return v0

    .line 266
    :pswitch_22
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Application not compiled with M"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :pswitch_29
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Failed because of invalid input"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :pswitch_30
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Failed because of invalid signature"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :pswitch_37
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Failed for an unknown reason"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, -0x3

    .line 274
    goto :goto_21

    .line 276
    :pswitch_40
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Runtime permissions applied successfully"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    goto :goto_21

    .line 264
    nop

    :pswitch_data_4a
    .packed-switch -0x4
        :pswitch_22
        :pswitch_30
        :pswitch_37
        :pswitch_29
        :pswitch_40
    .end packed-switch
.end method

.method private static checkCallerUID()Z
    .registers 2

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    invoke-static {}, checkPackageSignature()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 774
    :cond_e
    const/4 v0, 0x1

    .line 776
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static checkPackageSignature()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 781
    sget-object v4, sContextStatic:Landroid/content/Context;

    if-nez v4, :cond_7

    .line 793
    .local v0, "callingPackageName":Ljava/lang/String;
    .local v1, "platformSigned":Z
    :goto_6
    return v3

    .line 783
    .end local v0    # "callingPackageName":Ljava/lang/String;
    .end local v1    # "platformSigned":Z
    :cond_7
    sget-object v4, sContextStatic:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    .restart local v0    # "callingPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 785
    .restart local v1    # "platformSigned":Z
    if-eqz v0, :cond_47

    .line 786
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 788
    sget-object v4, sContextStatic:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v3

    .line 791
    :cond_38
    sget-object v4, sContextStatic:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_49

    move v1, v2

    :cond_47
    :goto_47
    move v3, v1

    .line 793
    goto :goto_6

    :cond_49
    move v1, v3

    .line 791
    goto :goto_47
.end method

.method private checkSDSignature()Z
    .registers 5

    .prologue
    .line 418
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_28

    const/4 v0, 0x1

    .line 419
    .local v0, "platformSigned":Z
    :goto_f
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is SD Agent platform signed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return v0

    .line 418
    .end local v0    # "platformSigned":Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private clearAllNotifications(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 1334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1335
    .local v2, "token":J
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1338
    .local v1, "sService":Landroid/app/INotificationManager;
    :try_start_f
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->clearAllNotificationsAsUser(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_17
    .catchall {:try_start_f .. :try_end_12} :catchall_24

    .line 1344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1346
    const/4 v4, 0x1

    :goto_16
    return v4

    .line 1340
    :catch_17
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_18
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Failed to clear notification bar"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    .line 1342
    const/4 v4, 0x0

    .line 1344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private clearClipboardData()Z
    .registers 5

    .prologue
    .line 1037
    const/4 v1, 0x0

    .line 1039
    .local v1, "success":Z
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "clearClipboardData in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :try_start_8
    invoke-direct {p0}, getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/MiscPolicy;->clearClipboardData()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    .line 1046
    :goto_10
    return v1

    .line 1043
    :catch_11
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private clearRecentTasks()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1324
    :try_start_1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "cleartask in Service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0}, getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    .line 1330
    const/4 v1, 0x1

    :goto_11
    return v1

    .line 1326
    :catch_12
    move-exception v0

    .line 1327
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private deleteAndroidKeystoreCertificates()Z
    .registers 5

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1052
    .local v1, "success":Z
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteAndroidKeystoreCertificates in Service!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :try_start_9
    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1056
    const/4 v1, 0x1

    .line 1057
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Android Keystore Reset Successful!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :goto_21
    return v1

    .line 1059
    :cond_22
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Android Keystore Reset Failed!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    goto :goto_21

    .line 1061
    :catch_2a
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private deleteUserInstalledCerts(IZ)Z
    .registers 13
    .param p1, "userId"    # I
    .param p2, "deleteAll"    # Z

    .prologue
    .line 1168
    const/4 v4, 0x0

    .line 1170
    .local v4, "isSuccess":Z
    const/4 v5, 0x0

    .line 1171
    .local v5, "keyChainAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1172
    .local v0, "allAlias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v6

    .line 1173
    .local v6, "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v6, :cond_a3

    .line 1174
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v1

    .line 1175
    .local v1, "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    invoke-direct {p0}, getCCMService()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 1176
    iget-object v7, p0, mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v5

    .line 1178
    :cond_24
    if-nez p2, :cond_61

    .line 1179
    if-eqz v5, :cond_a3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a3

    .line 1180
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_a3

    .line 1181
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychain user"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCertificate(Ljava/lang/String;)Z

    move-result v4

    .line 1180
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1186
    .end local v3    # "i":I
    :cond_61
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->getCertificateAliases()Ljava/util/List;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_a3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a3

    .line 1188
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_a3

    .line 1189
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "all certs"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCertificate(Ljava/lang/String;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9b} :catch_9f

    move-result v4

    .line 1188
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 1195
    .end local v1    # "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    .end local v3    # "i":I
    .end local v6    # "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :catch_9f
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1198
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a3
    return v4
.end method

.method private disableSDKeyguard()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 514
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Dismissing SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 516
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v0}, Landroid/os/PersonaManager;->hideScrim()V

    .line 517
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->notifyKeyguardShow(IZ)V

    .line 519
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 521
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Disabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 523
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 524
    return-void
.end method

.method private enableSD()V
    .registers 5

    .prologue
    .line 545
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Enabling Shared Devices!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isKeyguardLaunched"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 550
    invoke-direct {p0}, applyPolicies()V

    .line 551
    invoke-direct {p0}, enableSDKeyguard()V

    .line 552
    invoke-direct {p0}, startSDKeyguard()V

    .line 553
    invoke-direct {p0}, sendNotificationToKLMSAgent()V

    .line 554
    return-void
.end method

.method private enableSDKeyguard()V
    .registers 5

    .prologue
    .line 569
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Enabling SD Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-direct {p0}, getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 573
    return-void
.end method

.method private enforceSharedDevicePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 600
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SHARED_DEVICE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSDAgentInstallerPackageUid()I
    .registers 6

    .prologue
    .line 527
    const v2, 0x7fffffff

    iput v2, p0, mSDAgentInstallerPackageUid:I

    .line 528
    const/4 v2, 0x0

    iput-object v2, p0, mSDAgentInstallerPackage:Ljava/lang/String;

    .line 530
    :try_start_8
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Trying to find installer package UID for SD Agent!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "installerPackageName":Ljava/lang/String;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package for SD Agent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-direct {p0, v1}, isActiveMDM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 534
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, mSDAgentInstallerPackageUid:I

    .line 535
    iput-object v1, p0, mSDAgentInstallerPackage:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_7f

    .line 540
    .end local v1    # "installerPackageName":Ljava/lang/String;
    :cond_50
    :goto_50
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mSDAgentInstallerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with UID \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mSDAgentInstallerPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' found for SD Agent!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget v2, p0, mSDAgentInstallerPackageUid:I

    return v2

    .line 537
    :catch_7f
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method private forceStopApp(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1202
    const/4 v1, 0x0

    .line 1203
    .local v1, "appStopped":Z
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "forceStopApp is called"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1207
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_13

    .line 1208
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_14

    .line 1209
    const/4 v1, 0x1

    .line 1214
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_13
    :goto_13
    return v1

    .line 1211
    :catch_14
    move-exception v2

    .line 1212
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "RemoteException on force stop"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private generateSalt()[B
    .registers 4

    .prologue
    .line 959
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 960
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 961
    .local v1, "salt":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 962
    return-object v1
.end method

.method private getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_e

    .line 153
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 155
    :cond_e
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private getCCMService()Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    .registers 3

    .prologue
    .line 201
    iget-object v1, p0, mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    if-nez v1, :cond_11

    .line 203
    :try_start_4
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v1

    iput-object v1, p0, mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_14

    .line 208
    :cond_11
    :goto_11
    iget-object v1, p0, mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    return-object v1

    .line 204
    :catch_14
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private getDefaultDeviceStorageFiles()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 386
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v7, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 388
    .local v2, "proj":[Ljava/lang/String;
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 389
    .local v1, "MEDIA_FILES_URI":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 390
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5c

    .line 391
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 392
    .local v9, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 393
    .local v10, "size":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_30
    if-ge v8, v10, :cond_3f

    .line 395
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 394
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 398
    :cond_3f
    const-string/jumbo v0, "getDefaultDeviceStorageFiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 402
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v10    # "size":I
    :goto_5b
    return-object v7

    .line 401
    :cond_5c
    const-string/jumbo v0, "getDefaultDeviceStorageFiles"

    const-string/jumbo v3, "cursor returned null"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 167
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 169
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    if-nez v0, :cond_c

    .line 195
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v0

    iput-object v0, p0, mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    .line 197
    :cond_c
    iget-object v0, p0, mELM:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    return-object v0
.end method

.method private getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_d

    .line 213
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 215
    :cond_d
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "savePwd"    # Z

    .prologue
    const/4 v6, 0x0

    .line 976
    invoke-direct {p0, p2}, getSaltFilepath(I)Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, "saltPath":Ljava/lang/String;
    if-eqz p3, :cond_e

    .line 978
    invoke-direct {p0}, generateSalt()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, writeFile(Ljava/lang/String;[B)V

    .line 980
    :cond_e
    invoke-direct {p0, v3}, readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, "salt":Ljava/lang/String;
    if-nez v2, :cond_16

    .line 982
    const/4 v4, 0x0

    .line 986
    :goto_15
    return-object v4

    .line 984
    :cond_16
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 985
    .local v0, "lockPatternUtil":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 986
    .local v1, "passwordHash":[B
    invoke-static {v1, v6}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_15
.end method

.method private getKeyStore()Landroid/security/KeyStore;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    if-nez v0, :cond_a

    .line 227
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 229
    :cond_a
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_d

    .line 234
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 236
    :cond_d
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    if-nez v0, :cond_e

    .line 174
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v0

    iput-object v0, p0, mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    .line 176
    :cond_e
    iget-object v0, p0, mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 220
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 222
    :cond_c
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_f

    .line 160
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 162
    :cond_f
    iget-object v0, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-nez v0, :cond_e

    .line 181
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 183
    :cond_e
    iget-object v0, p0, mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0
.end method

.method private getPersonaManager()Z
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_15

    .line 253
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 256
    :cond_15
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1b

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-nez v0, :cond_e

    .line 188
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 190
    :cond_e
    iget-object v0, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method private getSaltFilepath(I)Ljava/lang/String;
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 966
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v3, USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, mUsersDir:Ljava/io/File;

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mUsersDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "passwordsaltshareddevice"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSharedDevicesState()Z
    .registers 8

    .prologue
    .line 747
    const/4 v2, 0x0

    .line 749
    .local v2, "status":Z
    :try_start_1
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSharedDevicesState in Service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "SHAREDDEVICE"

    const-string/jumbo v5, "enabled"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 751
    .local v1, "result":I
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    if-lez v1, :cond_32

    .line 753
    const/4 v2, 0x1

    .line 755
    :cond_32
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    .line 759
    .end local v1    # "result":I
    :goto_4b
    return v2

    .line 756
    :catch_4c
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private getTimaInstance()Lcom/android/server/pm/TimaHelper;
    .registers 3

    .prologue
    .line 241
    iget-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v1, :cond_a

    .line 243
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    iput-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_d

    .line 249
    :cond_a
    iget-object v1, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    :goto_c
    return-object v1

    .line 244
    :catch_d
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isActiveMDM(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "isActiveMDM":Z
    invoke-direct {p0}, getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v5

    iput-object v5, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .line 462
    iget-object v5, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    if-eqz v5, :cond_52

    .line 463
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking license for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .local v0, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2b
    if-ge v1, v3, :cond_52

    aget-object v4, v0, v1

    .line 466
    .local v4, "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v4}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 467
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is Active MDM!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v2, 0x1

    .line 473
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_52
    return v2

    .line 465
    .restart local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b
.end method

.method private isActiveMDMPresent()Z
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 430
    const/4 v5, 0x0

    .line 431
    .local v5, "isActiveMDMPresent":Z
    invoke-direct {p0}, getELM()Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v10

    iput-object v10, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .line 433
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_18

    move v6, v5

    .line 455
    .end local v5    # "isActiveMDMPresent":Z
    .local v6, "isActiveMDMPresent":I
    :goto_17
    return v6

    .line 436
    .end local v6    # "isActiveMDMPresent":I
    .restart local v5    # "isActiveMDMPresent":Z
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v1, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    iget-object v10, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    if-eqz v10, :cond_88

    if-eqz v1, :cond_88

    .line 439
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 440
    .local v0, "activeAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 441
    .local v9, "packageName":Ljava/lang/String;
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking license for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;

    .local v2, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_5f
    if-ge v4, v7, :cond_86

    aget-object v8, v2, v4

    .line 444
    .local v8, "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v8}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 445
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is Active MDM!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v5, 0x1

    .line 451
    .end local v8    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_86
    if-eqz v5, :cond_2f

    .end local v0    # "activeAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_88
    move v6, v5

    .line 455
    .restart local v6    # "isActiveMDMPresent":I
    goto :goto_17

    .line 443
    .end local v6    # "isActiveMDMPresent":I
    .restart local v0    # "activeAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "licenseInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v9    # "packageName":Ljava/lang/String;
    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f
.end method

.method private isKnoxVersionSupported()Z
    .registers 5

    .prologue
    .line 424
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    .line 425
    .local v0, "knoxVersionSupported":Z
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is current KNOX Version supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return v0
.end method

.method public static isSharedDeviceEnabledInternal()Z
    .registers 1

    .prologue
    .line 766
    invoke-static {}, checkCallerUID()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 767
    sget-boolean v0, sSharedDevicesStateInternal:Z

    .line 769
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1012
    const/4 v4, 0x0

    .line 1014
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "r"

    invoke-direct {v5, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_26
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_40

    .line 1015
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 1016
    .local v0, "content":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 1017
    .local v2, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 1018
    if-gtz v2, :cond_1e

    move-object v4, v5

    .line 1032
    .end local v0    # "content":[B
    .end local v2    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_1d
    :goto_1d
    return-object v6

    .line 1021
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "content":[B
    .restart local v2    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_1e
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_23} :catch_64
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_61

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    move-object v6, v7

    goto :goto_1d

    .line 1022
    .end local v0    # "content":[B
    .end local v2    # "got":I
    :catch_26
    move-exception v1

    .line 1023
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    :goto_27
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 1024
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v3

    .line 1025
    .local v3, "ioe":Ljava/io/IOException;
    :goto_41
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    if-eqz v4, :cond_1d

    .line 1028
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_1d

    .line 1029
    :catch_5f
    move-exception v7

    goto :goto_1d

    .line 1024
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_61
    move-exception v3

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_41

    .line 1022
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_64
    move-exception v1

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_27
.end method

.method private removeAccounts(I)Z
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1068
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1070
    .local v1, "am":Landroid/accounts/AccountManager;
    if-nez v1, :cond_b

    .line 1071
    const/4 v4, 0x0

    .line 1082
    :cond_a
    return v4

    .line 1073
    :cond_b
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 1074
    .local v0, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x1

    .line 1076
    .local v4, "removed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-eqz v0, :cond_a

    array-length v5, v0

    if-ge v3, v5, :cond_a

    .line 1077
    aget-object v5, v0, v3

    invoke-virtual {v1, v5, v8, v8, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 1078
    .local v2, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAccounts --- Account deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    if-eqz v2, :cond_3e

    .line 1080
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v5

    and-int/2addr v4, v5

    .line 1076
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method private removeAppliedPolicies()V
    .registers 6

    .prologue
    .line 502
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Removing applied policies!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x0

    .line 505
    .local v1, "removed":Z
    :try_start_8
    invoke-direct {p0}, getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/enterprise/PasswordPolicy;->setMaximumFailedPasswordsForDeviceDisable(I)Z

    move-result v2

    invoke-direct {p0}, getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_35

    move-result v3

    and-int v1, v2, v3

    .line 510
    :goto_1c
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Policies Removed? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void

    .line 507
    :catch_35
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to apply policies. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private removeCredentialStoragePolicies()V
    .registers 6

    .prologue
    .line 491
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Remove credential storage policy "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 493
    .local v1, "mEKM":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v1, :cond_20

    .line 494
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getClientCertificateManagerPolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;

    move-result-object v0

    .line 495
    .local v0, "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;->deleteCCMProfile()Z

    .line 496
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getTimaKeystorePolicy(Landroid/content/Context;)Lcom/sec/enterprise/knox/keystore/TimaKeystore;

    move-result-object v2

    .line 497
    .local v2, "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/keystore/TimaKeystore;->enableTimaKeystore(Z)Z

    .line 499
    .end local v0    # "ccm":Lcom/sec/enterprise/knox/ccm/ClientCertificateManager;
    .end local v2    # "mTKS":Lcom/sec/enterprise/knox/keystore/TimaKeystore;
    :cond_20
    return-void
.end method

.method private resetTheme()V
    .registers 5

    .prologue
    .line 1086
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "current_sec_active_themepackage"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1088
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1089
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.themecenter.APPLY_DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method private sendNotificationToKLMSAgent()V
    .registers 6

    .prologue
    .line 585
    :try_start_0
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Sending Broadcast to KLMSAgent"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.knox.B2B_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v1, "klmsIntent":Landroid/content/Intent;
    const-string/jumbo v2, "packageName"

    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "musd"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.permission.KLMS_AGENT"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 593
    .end local v1    # "klmsIntent":Landroid/content/Intent;
    :goto_28
    return-void

    .line 590
    :catch_29
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send intent to KLMS Agent. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 406
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Creating ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    .line 408
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 409
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 410
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x1040a5e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 412
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 413
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Displaying ProgressDialog!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 415
    return-void
.end method

.method private startSDKeyguard()V
    .registers 5

    .prologue
    .line 576
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Launching SD Keyguard!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SharedDeviceKeyguardEventFlag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 581
    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 991
    const/4 v2, 0x0

    .line 993
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_22

    .line 994
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_1d

    :try_start_b
    array-length v4, p2

    if-lez v4, :cond_1d

    .line 995
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 996
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 997
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 999
    :cond_1d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_5b

    move-object v2, v3

    .line 1009
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_21
    :goto_21
    return-void

    .line 1000
    :catch_22
    move-exception v0

    .line 1001
    .local v0, "ioe":Ljava/io/IOException;
    :goto_23
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    if-eqz v2, :cond_21

    .line 1004
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_21

    .line 1005
    :catch_41
    move-exception v1

    .line 1006
    .local v1, "ioeClose":Ljava/io/IOException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot close file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 1000
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "ioeClose":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_5b
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_23
.end method

.method private zeroOut(Ljava/lang/String;)V
    .registers 2
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 953
    if-eqz p1, :cond_5

    .line 954
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 956
    :cond_5
    const/4 p1, 0x0

    .line 957
    return-void
.end method

.method private zeroOut([B)V
    .registers 4
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 948
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 950
    const/4 p1, 0x0

    .line 951
    return-void
.end method


# virtual methods
.method public bindTodeviceKeyguard()V
    .registers 7

    .prologue
    .line 710
    :try_start_0
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Binding to Normal Keyguard!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 712
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 714
    invoke-direct {p0}, enableSD()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 718
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_20
    return-void

    .line 715
    :catch_21
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public cancelProgressDialog()V
    .registers 2

    .prologue
    .line 1218
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1219
    iget-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1220
    const/4 v0, 0x0

    iput-object v0, p0, mDialog:Landroid/app/ProgressDialog;

    .line 1222
    :cond_14
    return-void
.end method

.method public checkSDPasswordTIMA(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    .line 919
    const/4 v1, -0x1

    .line 920
    .local v1, "result":I
    invoke-static {}, checkCallerUID()Z

    move-result v6

    if-nez v6, :cond_9

    move v2, v1

    .line 945
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_8
    return v2

    .line 923
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_9
    invoke-direct {p0}, getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v6

    if-eqz v6, :cond_5d

    .line 924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 925
    .local v4, "token":J
    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5a

    if-eqz p2, :cond_5a

    .line 927
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 928
    if-nez p1, :cond_2a

    move v2, v1

    .line 929
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_8

    .line 931
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2a
    iget-object v6, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SharedDevice"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 932
    .local v0, "mTimaPassword":[B
    if-nez v0, :cond_4b

    move v2, v1

    .line 933
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_8

    .line 935
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_4b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 936
    .local v3, "validate":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 937
    const/4 v1, 0x0

    .line 941
    :goto_57
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 943
    .end local v0    # "mTimaPassword":[B
    .end local v3    # "validate":Ljava/lang/String;
    :cond_5a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "token":J
    :cond_5d
    move v2, v1

    .line 945
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_8

    .line 939
    .end local v2    # "result":I
    .restart local v0    # "mTimaPassword":[B
    .restart local v1    # "result":I
    .restart local v3    # "validate":Ljava/lang/String;
    .restart local v4    # "token":J
    :cond_5f
    const/4 v1, 0x1

    goto :goto_57
.end method

.method public checkTIMAStatusSD(I)Z
    .registers 7
    .param p1, "userid"    # I

    .prologue
    const/4 v2, 0x0

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "result":Z
    invoke-static {}, checkCallerUID()Z

    move-result v3

    if-nez v3, :cond_9

    .line 916
    .end local v0    # "result":Z
    :goto_8
    return v0

    .line 907
    .restart local v0    # "result":Z
    :cond_9
    :try_start_9
    invoke-direct {p0}, getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 908
    iget-object v3, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 909
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Failed to check TKS status..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/android/server/pm/TimaException; {:try_start_9 .. :try_end_1e} :catch_20

    .line 911
    :cond_1e
    const/4 v0, 0x1

    goto :goto_8

    .line 913
    :catch_20
    move-exception v1

    .local v1, "te":Lcom/android/server/pm/TimaException;
    move v0, v2

    .line 914
    goto :goto_8

    .end local v1    # "te":Lcom/android/server/pm/TimaException;
    :cond_23
    move v0, v2

    .line 916
    goto :goto_8
.end method

.method public clearData(I)I
    .registers 10
    .param p1, "selections"    # I

    .prologue
    .line 1094
    const/4 v2, 0x0

    .line 1095
    .local v2, "status":I
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "callingPackageName":Ljava/lang/String;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-direct {p0}, checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1102
    .local v4, "token":J
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_49

    :try_start_41
    invoke-direct {p0}, deleteAndroidKeystoreCertificates()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1103
    or-int/lit8 v2, v2, 0x1

    .line 1105
    :cond_49
    and-int/lit8 v3, p1, 0x10

    if-lez v3, :cond_55

    invoke-direct {p0}, clearRecentTasks()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1106
    or-int/lit8 v2, v2, 0x10

    .line 1108
    :cond_55
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_61

    invoke-direct {p0}, clearClipboardData()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1109
    or-int/lit8 v2, v2, 0x2

    .line 1112
    :cond_61
    and-int/lit8 v3, p1, 0x4

    if-lez v3, :cond_71

    const-string v3, "com.android.phone"

    const/16 v6, 0x3e9

    invoke-direct {p0, v3, v6}, forceStopApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1114
    or-int/lit8 v2, v2, 0x4

    .line 1119
    :cond_71
    and-int/lit8 v3, p1, 0x8

    if-lez v3, :cond_7a

    .line 1120
    invoke-direct {p0}, resetTheme()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_78} :catch_96
    .catchall {:try_start_41 .. :try_end_78} :catchall_a4

    .line 1121
    or-int/lit8 v2, v2, 0x8

    .line 1127
    :cond_7a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    .end local v4    # "token":J
    :goto_7d
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return v2

    .line 1124
    .restart local v4    # "token":J
    :catch_96
    move-exception v1

    .line 1125
    .local v1, "e":Ljava/lang/Exception;
    :try_start_97
    sget-object v3, TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_a4

    .line 1127
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7d

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a4
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1130
    .end local v4    # "token":J
    :cond_a9
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method

.method public clearDataWithUserID(II)I
    .registers 11
    .param p1, "selections"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1137
    const/4 v2, 0x0

    .line 1138
    .local v2, "status":I
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "callingPackageName":Ljava/lang/String;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData in Service called by: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v3, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-direct {p0}, checkSDSignature()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1145
    .local v4, "token":J
    and-int/lit8 v3, p1, 0x20

    if-lez v3, :cond_49

    :try_start_41
    invoke-direct {p0, p2}, removeAccounts(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1146
    or-int/lit8 v2, v2, 0x20

    .line 1148
    :cond_49
    and-int/lit8 v3, p1, 0x40

    if-lez v3, :cond_56

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, deleteUserInstalledCerts(IZ)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1149
    or-int/lit8 v2, v2, 0x40

    .line 1151
    :cond_56
    and-int/lit16 v3, p1, 0x80

    if-lez v3, :cond_63

    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, deleteUserInstalledCerts(IZ)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_7f
    .catchall {:try_start_41 .. :try_end_5e} :catchall_8d

    move-result v3

    if-eqz v3, :cond_63

    .line 1152
    or-int/lit16 v2, v2, 0x80

    .line 1158
    :cond_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    .end local v4    # "token":J
    :goto_66
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return v2

    .line 1155
    .restart local v4    # "token":J
    :catch_7f
    move-exception v1

    .line 1156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_80
    sget-object v3, TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_8d

    .line 1158
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_66

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1161
    .end local v4    # "token":J
    :cond_92
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearData failure due to invalid calling package: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66
.end method

.method public clearSDTIMA(Ljava/lang/String;)I
    .registers 6
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-static {}, checkCallerUID()Z

    move-result v0

    if-nez v0, :cond_8

    .line 894
    const/4 v0, -0x1

    .line 899
    :goto_7
    return v0

    .line 896
    :cond_8
    invoke-direct {p0}, getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 897
    iget-object v0, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 899
    :cond_2a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSharedDeviceEnabled()Z
    .registers 2

    .prologue
    .line 763
    iget-boolean v0, p0, mSharedDevicesState:Z

    return v0
.end method

.method public notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .registers 7
    .param p1, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 814
    invoke-static {}, checkCallerUID()Z

    move-result v1

    if-nez v1, :cond_7

    .line 827
    :goto_6
    return-void

    .line 817
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 819
    .local v2, "token":J
    :try_start_b
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v4, "notifyUserSignedIn in Service"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-direct {p0}, clearRecentTasks()Z

    .line 821
    new-instance v1, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->start()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_24
    .catchall {:try_start_b .. :try_end_20} :catchall_32

    .line 825
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 822
    :catch_24
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    :try_start_25
    sget-object v1, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    .line 825
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 309
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 317
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 313
    return-void
.end method

.method public performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    .registers 9
    .param p1, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 796
    const/4 v0, -0x1

    .line 797
    .local v0, "authStatus":I
    invoke-static {}, checkCallerUID()Z

    move-result v5

    if-nez v5, :cond_9

    move v1, v0

    .line 810
    .end local v0    # "authStatus":I
    .local v1, "authStatus":I
    :goto_8
    return v1

    .line 801
    .end local v1    # "authStatus":I
    .restart local v0    # "authStatus":I
    :cond_9
    :try_start_9
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "performUserAuthentication in Service"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 803
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v3, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V

    .line 804
    .local v4, "performUserAuth":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;
    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->start()V

    .line 805
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 806
    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;->getAuthStatus()I
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_27} :catch_2a

    move-result v0

    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v4    # "performUserAuth":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;
    :goto_28
    move v1, v0

    .line 810
    .end local v0    # "authStatus":I
    .restart local v1    # "authStatus":I
    goto :goto_8

    .line 807
    .end local v1    # "authStatus":I
    .restart local v0    # "authStatus":I
    :catch_2a
    move-exception v2

    .line 808
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public saveSDPasswordInTIMA(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;

    .prologue
    .line 871
    const/4 v1, 0x0

    .line 872
    .local v1, "result":Z
    invoke-static {}, checkCallerUID()Z

    move-result v3

    if-nez v3, :cond_9

    move v2, v1

    .line 889
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_8
    return v2

    .line 875
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_9
    invoke-direct {p0}, getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 877
    .local v4, "token":J
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 879
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v6, 0x1

    invoke-direct {p0, p1, v3, v6}, getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 880
    if-nez p1, :cond_28

    move v2, v1

    .line 881
    .restart local v2    # "result":I
    goto :goto_8

    .line 883
    .end local v2    # "result":I
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 884
    .local v0, "entry":[B
    iget-object v3, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SharedDevice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    .line 885
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 887
    .end local v0    # "entry":[B
    :cond_4c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "token":J
    :cond_4f
    move v2, v1

    .line 889
    .restart local v2    # "result":I
    goto :goto_8
.end method

.method public sendIntentforBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 830
    if-nez p1, :cond_1c

    .line 831
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast: Failed due to intent value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_1b
    :goto_1b
    return-void

    .line 834
    :cond_1c
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "callingPackageName":Ljava/lang/String;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentforBroadcast in Service called by: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v1, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, checkSDSignature()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 839
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Intent! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    if-eqz p2, :cond_79

    .line 841
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1b

    .line 843
    :cond_79
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method public setSharedDeviceState(Landroid/app/enterprise/ContextInfo;IZ)I
    .registers 15
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 604
    const/4 v3, -0x1

    .line 606
    .local v3, "status":I
    invoke-direct {p0}, isKnoxVersionSupported()Z

    move-result v5

    if-eqz v5, :cond_1f6

    .line 607
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSharedDeviceState in Service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    if-eqz p3, :cond_4e

    .line 610
    :try_start_22
    invoke-direct {p0}, checkSDSignature()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v5, v8, :cond_5f

    .line 611
    :cond_39
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "Calling UID is Unauthorized!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_40} :catch_42

    move v4, v3

    .line 705
    .end local v3    # "status":I
    .local v4, "status":I
    :goto_41
    return v4

    .line 614
    .end local v4    # "status":I
    .restart local v3    # "status":I
    :catch_42
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 616
    .end local v3    # "status":I
    .restart local v4    # "status":I
    goto :goto_41

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "status":I
    .restart local v3    # "status":I
    :cond_4e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v8, 0x3e8

    if-eq v5, v8, :cond_5f

    .line 620
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "Calling UID is Unauthorized!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 621
    .end local v3    # "status":I
    .restart local v4    # "status":I
    goto :goto_41

    .line 624
    .end local v4    # "status":I
    .restart local v3    # "status":I
    :cond_5f
    const/4 v1, 0x0

    .line 625
    .local v1, "isActiveMDMPresent":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 627
    .local v6, "token":J
    :try_start_64
    iget v5, p0, mSDAgentInstallerPackageUid:I

    const v8, 0x7fffffff

    if-ne v5, v8, :cond_71

    invoke-direct {p0}, isActiveMDMPresent()Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6e} :catch_18d
    .catchall {:try_start_64 .. :try_end_6e} :catchall_19c

    move-result v5

    if-eqz v5, :cond_18a

    :cond_71
    const/4 v1, 0x1

    .line 631
    :goto_72
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    :goto_75
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Active MDM Present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget v5, p0, mSDAgentInstallerPackageUid:I

    const v8, 0x7fffffff

    if-ne v5, v8, :cond_a8

    .line 637
    :try_start_94
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "Packages is Installed by User! so setting SDAgent as Default ID"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.sec.enterprise.knox.shareddevice"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, mSDAgentInstallerPackageUid:I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a8} :catch_1a1

    .line 644
    :cond_a8
    :goto_a8
    if-eqz p3, :cond_c6

    if-nez v1, :cond_c6

    .line 645
    const/4 p3, 0x0

    .line 646
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting Shared Device state to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v3, -0x2

    .line 650
    :cond_c6
    const/4 v2, 0x0

    .line 652
    .local v2, "result":Z
    :try_start_c7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, mValues:Landroid/content/ContentValues;

    .line 653
    iget-object v5, p0, mValues:Landroid/content/ContentValues;

    const-string v8, "adminUid"

    iget v9, p0, mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    if-eqz p3, :cond_1ad

    .line 655
    iget-object v5, p0, mValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "enabled"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    :goto_ea
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, mWhere:Landroid/content/ContentValues;

    .line 660
    iget-object v5, p0, mWhere:Landroid/content/ContentValues;

    const-string v8, "adminUid"

    iget v9, p0, mSDAgentInstallerPackageUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    invoke-direct {p0}, getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string v8, "SHAREDDEVICE"

    iget-object v9, p0, mValues:Landroid/content/ContentValues;

    iget-object v10, p0, mWhere:Landroid/content/ContentValues;

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 663
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Put Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v5, 0x0

    iput-object v5, p0, mValues:Landroid/content/ContentValues;

    .line 665
    const/4 v5, 0x0

    iput-object v5, p0, mWhere:Landroid/content/ContentValues;

    .line 667
    if-eqz v2, :cond_12f

    if-eqz v1, :cond_12f

    .line 668
    const/4 v3, 0x0

    .line 669
    :cond_12f
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_148} :catch_1bc

    .line 674
    :goto_148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 676
    if-eqz v2, :cond_1e0

    if-eqz p3, :cond_1e0

    .line 677
    const/4 v5, 0x1

    :try_start_151
    iput-boolean v5, p0, mSharedDevicesState:Z

    .line 678
    const/4 v5, 0x1

    sput-boolean v5, sSharedDevicesStateInternal:Z

    .line 680
    invoke-direct {p0}, getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 681
    invoke-direct {p0}, getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.keyguard.KeyguardService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/android/server/pm/PackageManagerService;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1c7

    .line 682
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "Normal Keyguard component still enabled!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, bindTodeviceKeyguard()V

    .line 688
    :goto_17d
    invoke-direct {p0}, applyCredentialStoragePolicies()V

    .line 689
    invoke-direct {p0}, applyRuntimePermissionsToSDAgent()I
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_183} :catch_1d2
    .catchall {:try_start_151 .. :try_end_183} :catchall_1f1

    move-result v3

    .line 700
    :cond_184
    :goto_184
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "isActiveMDMPresent":Z
    .end local v2    # "result":Z
    .end local v6    # "token":J
    :goto_187
    move v4, v3

    .line 705
    .end local v3    # "status":I
    .restart local v4    # "status":I
    goto/16 :goto_41

    .line 627
    .end local v4    # "status":I
    .restart local v1    # "isActiveMDMPresent":Z
    .restart local v3    # "status":I
    .restart local v6    # "token":J
    :cond_18a
    const/4 v1, 0x0

    goto/16 :goto_72

    .line 628
    :catch_18d
    move-exception v0

    .line 629
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_18e
    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_19c

    .line 631
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_75

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_19c
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 639
    :catch_1a1
    move-exception v0

    .line 640
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a8

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "result":Z
    :cond_1ad
    :try_start_1ad
    iget-object v5, p0, mValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "enabled"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1ba} :catch_1bc

    goto/16 :goto_ea

    .line 670
    :catch_1bc
    move-exception v0

    .line 671
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    .line 685
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c7
    :try_start_1c7
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "Normal Keyguard component is disabled!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, enableSD()V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1d1} :catch_1d2
    .catchall {:try_start_1c7 .. :try_end_1d1} :catchall_1f1

    goto :goto_17d

    .line 697
    :catch_1d2
    move-exception v0

    .line 698
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1d3
    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1d3 .. :try_end_1dc} :catchall_1f1

    .line 700
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_187

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e0
    if-eqz v2, :cond_184

    if-nez p3, :cond_184

    .line 691
    :try_start_1e4
    invoke-direct {p0}, disableSDKeyguard()V

    .line 693
    const/4 v5, 0x0

    iput-boolean v5, p0, mSharedDevicesState:Z

    .line 694
    const/4 v5, 0x0

    sput-boolean v5, sSharedDevicesStateInternal:Z

    .line 695
    invoke-direct {p0}, removeCredentialStoragePolicies()V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1f0} :catch_1d2
    .catchall {:try_start_1e4 .. :try_end_1f0} :catchall_1f1

    goto :goto_184

    .line 700
    :catchall_1f1
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 703
    .end local v1    # "isActiveMDMPresent":Z
    .end local v2    # "result":Z
    .end local v6    # "token":J
    :cond_1f6
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "This KNOX Version is not supported!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_187
.end method

.method public signOutUser(Z)Z
    .registers 12
    .param p1, "userSwitch"    # Z

    .prologue
    .line 848
    const/4 v4, 0x0

    .line 849
    .local v4, "success":Z
    invoke-static {}, checkCallerUID()Z

    move-result v7

    if-nez v7, :cond_9

    move v5, v4

    .line 867
    .end local v4    # "success":Z
    .local v5, "success":I
    :goto_8
    return v5

    .line 852
    .end local v5    # "success":I
    .restart local v4    # "success":Z
    :cond_9
    const/4 v6, 0x0

    .line 854
    .local v6, "userId":I
    :try_start_a
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "signOutUser in Service\nUser Switch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 856
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v7, v1, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Z)V

    .line 857
    .local v3, "signout":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;
    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->start()V

    .line 858
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 859
    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;->isSuccessful()Z

    move-result v4

    .line 860
    invoke-direct {p0, v6}, clearAllNotifications(I)Z

    move-result v2

    .line 861
    .local v2, "retOfClearNoti":Z
    if-eqz v2, :cond_47

    .line 862
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "clear all notification is successful"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_47} :catch_49

    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "retOfClearNoti":Z
    .end local v3    # "signout":Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;
    :cond_47
    :goto_47
    move v5, v4

    .line 867
    .restart local v5    # "success":I
    goto :goto_8

    .line 864
    .end local v5    # "success":I
    :catch_49
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v7, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 288
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "systemReady called!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_8
    const-string v2, "14"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, "knoxConfigVersion":I
    const/16 v2, 0xc

    if-lt v1, v2, :cond_39

    .line 293
    invoke-virtual {p0}, isSharedDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 294
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v2

    iput-object v2, p0, mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 295
    invoke-direct {p0}, enableSDKeyguard()V

    .line 305
    .end local v1    # "knoxConfigVersion":I
    :goto_21
    return-void

    .line 297
    .restart local v1    # "knoxConfigVersion":I
    :cond_22
    invoke-direct {p0}, getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2e

    goto :goto_21

    .line 302
    .end local v1    # "knoxConfigVersion":I
    :catch_2e
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "knoxConfigVersion":I
    :cond_39
    :try_start_39
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "This KNOX Version is not supported!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_2e

    goto :goto_21
.end method
