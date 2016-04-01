.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$SdpHandler;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;,
        Lcom/android/server/LockSettingsService$CredentialInfo;,
        Lcom/android/server/LockSettingsService$KeystoreUtil;,
        Lcom/android/server/LockSettingsService$IKeystoreUtil;
    }
.end annotation


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final KNOX_RECOVERY_VERSION_KEY:Ljava/lang/String; = "lockscreen.knox_recovery_version"

.field private static final KNOX_RECOVERY_VERSION_LATEST:I = 0x1

.field private static final LOCK_TYPE_BACKUP_PIN:I = 0x3

.field private static final LOCK_TYPE_BACKUP_PWD:I = 0x4

.field private static final LOCK_TYPE_NONE:I = -0x1

.field private static final LOCK_TYPE_PASSWORD:I = 0x2

.field private static final LOCK_TYPE_PATTERN:I = 0x1

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SECURE_DEBUG:Z = false

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final TAG_KEYMGNT:Ljava/lang/String; = "LockSettingsService.KeyMgnt"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static final VERIF_TYPE_GATEKEEPER:I = 0x10

.field private static final VERIF_TYPE_NONE:I = 0x0

.field private static final VERIF_TYPE_NON_SDP_MDFPP:I = 0x4

.field private static final VERIF_TYPE_NON_SDP_NON_MDFPP:I = 0x8

.field private static final VERIF_TYPE_SDP:I = 0x1

.field private static final VERIF_TYPE_SDP_NON_MDFPP:I = 0x2

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    const-string/jumbo v0, "default_password"

    sput-object v0, mSavePassword:Ljava/lang/String;

    .line 2027
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, VALID_SETTINGS:[Ljava/lang/String;

    .line 2047
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2053
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    sput-object v0, READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2059
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 863
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 136
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {v0}, Lcom/android/server/LockSettingsStrongAuth;-><init>()V

    iput-object v0, p0, mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    .line 147
    iput-object v4, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 148
    iput-object v4, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 149
    iput-object v4, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 897
    new-instance v0, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 864
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 867
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstCallToVold:Z

    .line 870
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 871
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 877
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    .line 889
    new-instance v0, Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$KeystoreUtil;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object v0, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 890
    invoke-direct {p0}, isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 891
    new-instance v0, Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$SdpHandler;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object v0, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 892
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    iput-object v0, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 895
    :cond_6d
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LockSettingsService;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, setKnoxRecoveryVersion(JI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, removeUser(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/service/gatekeeper/IGateKeeperService;

    .prologue
    .line 123
    iput-object p1, p0, mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, clear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustCredential(Ljava/lang/String;II)V
    .registers 10
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 625
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 626
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Credential"

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    const-string v2, "UserId"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LockType"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 642
    :cond_2f
    :goto_2f
    return-void

    .line 632
    :cond_30
    if-ne p3, v4, :cond_3c

    .line 633
    const/4 v1, 0x0

    :try_start_33
    invoke-virtual {p0, p1, v1, p2}, setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_43

    goto :goto_2f

    .line 637
    :catch_37
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    if-ne p3, v5, :cond_2f

    .line 635
    const/4 v1, 0x0

    :try_start_3f
    invoke-virtual {p0, p1, v1, p2}, setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_37
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_2f

    .line 639
    :catch_43
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method private adjustPatternToBaseOne(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "oneBased"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 612
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 613
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "oneBased"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "result":Z
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "zeroBased":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 619
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->changePassword(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 620
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of pattern specified adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 621
    return v0
.end method

.method private adjustSDP(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 590
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 591
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "credential"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, "result":Z
    invoke-direct {p0}, isSdpSupported()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 595
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 596
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_41

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 597
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->guaranteeCMK(Ljava/lang/String;I)Z

    move-result v2

    .line 599
    invoke-direct {p0, p1, p2}, getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_58

    .line 601
    iget-object v3, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v3, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 607
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_41
    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of sdp specified adjustment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 608
    return v2

    .line 603
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_58
    const-string v3, "adjustSDP :: Unexpected condition..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_41
.end method

.method private checkCMKExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 410
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v0

    return v0
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1104
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 9
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1110
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v3, READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5b

    .line 1111
    sget-object v3, READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1112
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_58

    .line 1114
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1110
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1120
    .end local v2    # "key":Ljava/lang/String;
    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    sget-object v3, READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_b2

    .line 1121
    sget-object v3, READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1122
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_af

    .line 1124
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1120
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 1129
    .end local v2    # "key":Ljava/lang/String;
    :cond_b2
    return-void
.end method

.method private checkSDPassword(Ljava/lang/String;)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1545
    const/4 v2, 0x0

    .line 1546
    .local v2, "result":Z
    const-string/jumbo v5, "enterprise_shared_device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 1549
    .local v1, "mService":Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "loginUserName"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1550
    .local v4, "userName":Ljava/lang/String;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_22
    move v3, v2

    .line 1565
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_23
    return v3

    .line 1553
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_24
    if-eqz v1, :cond_2d

    .line 1555
    :try_start_26
    invoke-interface {v1, p1, v4}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;->checkSDPasswordTIMA(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_31

    move-result v5

    if-eqz v5, :cond_2f

    .line 1556
    const/4 v2, 0x0

    :cond_2d
    :goto_2d
    move v3, v2

    .line 1565
    .restart local v3    # "result":I
    goto :goto_23

    .line 1558
    .end local v3    # "result":I
    :cond_2f
    const/4 v2, 0x1

    goto :goto_2d

    .line 1561
    :catch_31
    move-exception v0

    .line 1562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1100
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method private clear(Ljava/lang/String;)V
    .registers 4
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "LockSettingsService.SDP"

    const-string v1, "Clear credential..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz p1, :cond_c

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 494
    :cond_c
    const/4 p1, 0x0

    .line 495
    return-void
.end method

.method private clearHash(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    const/4 v1, 0x0

    .line 536
    packed-switch p2, :pswitch_data_12

    .line 546
    :goto_4
    return-void

    .line 538
    :pswitch_5
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_4

    .line 541
    :pswitch_b
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_4

    .line 536
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method private doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .registers 7
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v4, 0x1

    .line 549
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 550
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CredentialInfo"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 561
    const/4 v0, 0x1

    .line 562
    .local v0, "result":Z
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    packed-switch v1, :pswitch_data_6e

    .line 585
    :cond_1b
    :goto_1b
    :pswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of extra adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 586
    return v0

    .line 565
    :pswitch_32
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v1, v4, :cond_1b

    .line 566
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, adjustPatternToBaseOne(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1b

    .line 571
    :pswitch_3f
    invoke-direct {p0}, isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 572
    const-string/jumbo v1, "doExtraAdjustment :: Migrate SDP... "

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 573
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, adjustSDP(Ljava/lang/String;I)Z

    move-result v0

    .line 574
    if-eqz v0, :cond_1b

    .line 575
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2}, clearHash(II)V

    goto :goto_1b

    .line 578
    :cond_5d
    const-string/jumbo v1, "doExtraAdjustment :: Delegate key verification to G.K..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 579
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2, v3}, adjustCredential(Ljava/lang/String;II)V

    goto :goto_1b

    .line 562
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_1b
        :pswitch_3f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_3f
    .end packed-switch
.end method

.method private doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .registers 8
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v5, 0x1

    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, "result":Z
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_71

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v2, v5, :cond_71

    .line 669
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 670
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CredentialInfo"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 672
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3}, getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_72

    .line 675
    const-string v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 677
    iget-object v2, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 678
    const-string v2, "Migration - Unexpected condition... reset keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 680
    iget-object v2, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 682
    :cond_53
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, setKnoxRecoveryVersion(JI)V

    .line 683
    const/4 v1, 0x1

    .line 687
    :goto_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of lost data recovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 689
    .end local v0    # "encodedCredential":Ljava/lang/String;
    :cond_71
    return v1

    .line 685
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    :cond_72
    const-string v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    .registers 8
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;
    .param p2, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    .line 745
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 746
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CredentialInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    const/4 v1, 0x0

    .line 751
    .local v1, "result":Z
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, isKeyMigrationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 752
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_41

    .line 753
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    .line 770
    :goto_2b
    if-eqz v1, :cond_3c

    .line 771
    invoke-direct {p0, p1}, doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 772
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, setKnoxRecoveryVersion(JI)V

    .line 773
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 777
    :cond_3c
    if-nez v0, :cond_40

    .line 778
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 779
    :cond_40
    return-object v0

    .line 755
    :cond_41
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashMigration(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_2b

    .line 757
    :cond_4a
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, isRecoveryRequired(I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 758
    invoke-direct {p0, p1}, doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 759
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    goto :goto_2b

    .line 760
    :cond_5b
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_68

    .line 761
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_2b

    .line 763
    :cond_68
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashAdjustment(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_2b

    .line 767
    :cond_71
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    goto :goto_2b
.end method

.method private doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2321
    invoke-direct {p0, p5}, checkPasswordReadPermission(I)V

    .line 2323
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 2324
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz p6, :cond_1a

    .line 2325
    new-instance v8, Lcom/android/server/LockSettingsService$8;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$8;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2351
    :goto_19
    return-object v0

    :cond_1a
    new-instance v8, Lcom/android/server/LockSettingsService$9;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$9;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    goto :goto_19
.end method

.method private doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2219
    invoke-direct {p0, p5}, checkPasswordReadPermission(I)V

    .line 2221
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 2222
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$7;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$7;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1717
    invoke-direct {p0, p5}, checkPasswordReadPermission(I)V

    .line 1719
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1720
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v1, v2

    aput-object p1, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v4, "hasChallenge"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "challenge"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "userId"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1722
    invoke-direct {p0, p5}, isKnoxUser(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1723
    new-instance v1, Lcom/android/server/LockSettingsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {p0, p1, p5, v1}, verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1741
    .local v0, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eq v1, v5, :cond_52

    .line 1747
    .end local v0    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_51
    return-object v0

    .line 1746
    :cond_52
    iget-object v1, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 1747
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$6;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    goto :goto_51
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1611
    move/from16 v0, p5

    invoke-direct {p0, v0}, checkPasswordReadPermission(I)V

    .line 1613
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1614
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v7, "pattern"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v7, "hasChallenge"

    aput-object v7, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x4

    const-string v7, "challenge"

    aput-object v7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v7, "userId"

    aput-object v7, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1616
    move/from16 v0, p5

    invoke-direct {p0, v0}, isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1617
    new-instance v3, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    move/from16 v0, p5

    invoke-direct {p0, p1, v0, v3}, verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1635
    .local v2, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_59

    .line 1686
    .end local v2    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_58
    return-object v2

    .line 1640
    :cond_59
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 1641
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_95

    iget-boolean v3, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v3, :cond_95

    const/4 v12, 0x1

    .line 1644
    .local v12, "shouldReEnrollBaseZero":Z
    :goto_68
    if-eqz v12, :cond_97

    .line 1645
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1650
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_6e
    new-instance v10, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 1679
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_8a

    if-eqz v12, :cond_8a

    .line 1681
    move/from16 v0, p5

    invoke-virtual {p0, p1, v6, v0}, setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1683
    :cond_8a
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_93

    .line 1684
    invoke-virtual {p0, p1}, retainPassword(Ljava/lang/String;)V

    :cond_93
    move-object v2, v11

    .line 1686
    goto :goto_58

    .line 1641
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v12    # "shouldReEnrollBaseZero":Z
    :cond_95
    const/4 v12, 0x0

    goto :goto_68

    .line 1647
    .restart local v12    # "shouldReEnrollBaseZero":Z
    :cond_97
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_6e
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .registers 11
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1486
    invoke-direct {p0, p4}, checkWritePermission(I)V

    .line 1487
    if-nez p2, :cond_15

    move-object v0, v4

    .line 1490
    .local v0, "enrolledCredentialBytes":[B
    :goto_7
    if-nez p3, :cond_1a

    move-object v3, v4

    .line 1493
    .local v3, "toEnrollBytes":[B
    :goto_a
    invoke-direct {p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 1496
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_1f

    .line 1516
    :goto_14
    return-object v4

    .line 1487
    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7

    .line 1490
    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1a
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_a

    .line 1502
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_1f
    iget-object v4, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_40

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1504
    const-string v4, "LockSettingsServiceKeystore"

    const-string/jumbo v5, "mdfpp keystore migrate start for fingerprint"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v4, 0x1

    invoke-direct {p0, p3, p4, v4}, migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 1509
    :cond_40
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 1510
    .local v1, "hash":[B
    if-eqz v1, :cond_4b

    .line 1511
    invoke-direct {p0, p3, p4}, setKeystorePassword(Ljava/lang/String;I)V

    :goto_49
    move-object v4, v1

    .line 1516
    goto :goto_14

    .line 1514
    :cond_4b
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B
    .registers 11
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3118
    invoke-direct {p0, p4}, checkWritePermission(I)V

    .line 3119
    if-nez p2, :cond_15

    move-object v0, v4

    .line 3122
    .local v0, "enrolledCredentialBytes":[B
    :goto_7
    if-nez p3, :cond_1a

    move-object v3, v4

    .line 3125
    .local v3, "toEnrollBytes":[B
    :goto_a
    invoke-direct {p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 3128
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_1f

    .line 3137
    :goto_14
    return-object v4

    .line 3119
    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7

    .line 3122
    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1a
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_a

    .line 3132
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_1f
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 3133
    .local v1, "hash":[B
    if-nez v1, :cond_2c

    .line 3135
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move-object v4, v1

    .line 3137
    goto :goto_14
.end method

.method private enrollKnoxCredential(Ljava/lang/String;II)V
    .registers 11
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 829
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 830
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "credential"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const-string/jumbo v3, "userId"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "lockType"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 832
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 835
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_46

    .line 836
    if-ne p3, v5, :cond_47

    .line 837
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPatternChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    :goto_3f
    if-eqz v0, :cond_46

    .line 844
    iget-object v2, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 849
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_46
    :goto_46
    return-void

    .line 838
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_47
    if-ne p3, v6, :cond_4e

    .line 839
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPasswordChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 841
    :cond_4e
    const-string/jumbo v2, "enrollKnoxCredential : Unknown lock type.."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_3f

    .line 847
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_55
    const-string/jumbo v2, "enrollKnoxCredential : Unexpected condition... empty credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_46
.end method

.method private getCurrentHandle(I)[B
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1312
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 1313
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_46

    .line 1328
    const/4 v1, 0x0

    .line 1333
    .local v1, "currentHandle":[B
    :goto_b
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    if-nez v1, :cond_2e

    .line 1334
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_2e
    return-object v1

    .line 1315
    .end local v1    # "currentHandle":[B
    :pswitch_2f
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1316
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_39

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1319
    .restart local v1    # "currentHandle":[B
    :cond_39
    goto :goto_b

    .line 1321
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_3a
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1322
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_44

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1325
    .restart local v1    # "currentHandle":[B
    :cond_44
    goto :goto_b

    .line 1313
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3a
    .end packed-switch
.end method

.method private getCurrentHandleBackupType(II)[B
    .registers 8
    .param p1, "userId"    # I
    .param p2, "currentHandleType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3088
    packed-switch p2, :pswitch_data_40

    .line 3103
    const/4 v1, 0x0

    .line 3108
    .local v1, "currentHandle":[B
    :goto_5
    const/4 v2, -0x1

    if-eq p2, v2, :cond_28

    if-nez v1, :cond_28

    .line 3109
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored handle Backup type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] but no handle available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_28
    return-object v1

    .line 3090
    .end local v1    # "currentHandle":[B
    :pswitch_29
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3091
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_33

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3094
    .restart local v1    # "currentHandle":[B
    :cond_33
    goto :goto_5

    .line 3096
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_34
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3097
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_3e

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3100
    .restart local v1    # "currentHandle":[B
    :cond_3e
    goto :goto_5

    .line 3088
    nop

    :pswitch_data_40
    .packed-switch 0x3
        :pswitch_29
        :pswitch_34
    .end packed-switch
.end method

.method private getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1585
    iget-object v0, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 1586
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1588
    :cond_11
    iget-object v0, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 472
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_c

    .line 473
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_c
    return-object v0
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2082
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v2, :cond_a

    .line 2083
    iget-object v1, p0, mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_38

    .line 2097
    :goto_8
    monitor-exit p0

    return-object v1

    .line 2086
    :cond_a
    :try_start_a
    const-string v2, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2088
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_30

    .line 2089
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2090
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    :goto_26
    iput-object v1, p0, mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 2093
    iget-object v1, p0, mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_8

    .line 2090
    :cond_2b
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    goto :goto_26

    .line 2096
    :cond_30
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_38

    goto :goto_8

    .line 2082
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getKeyType(I)I
    .registers 6
    .param p1, "lockType"    # I

    .prologue
    .line 414
    const/4 v0, -0x1

    .line 415
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_2c

    .line 427
    :goto_4
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyType :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0

    .line 418
    :pswitch_28
    const/4 v0, 0x1

    .line 419
    goto :goto_4

    .line 422
    :pswitch_2a
    const/4 v0, 0x3

    .line 423
    goto :goto_4

    .line 415
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method private getKnoxRecoveryVersion(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "ret":I
    invoke-direct {p0, p1}, isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 512
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v3, "lockscreen.knox_recovery_version"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 515
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, p1}, setKnoxRecoveryVersion(JI)V

    .line 520
    :goto_1c
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery version for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 523
    .end local v1    # "value":Ljava/lang/String;
    :cond_3f
    return v0

    .line 517
    .restart local v1    # "value":Ljava/lang/String;
    :cond_40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1c
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 2065
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2066
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 2067
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2069
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .prologue
    .line 452
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getProfiles(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1259
    .local v5, "um":Landroid/os/UserManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 1263
    .local v6, "versionInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_55

    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1264
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1265
    .local v4, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1269
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_34
    :goto_34
    return-object v2

    .line 1274
    .restart local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_35
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1275
    .local v3, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1276
    .local v1, "pi":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1277
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 1282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_55
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    goto :goto_34
.end method

.method private getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 645
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 649
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getVerificationType(II)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "verificationType":I
    invoke-direct {p0, p1}, checkCMKExists(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 434
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 435
    const/4 v1, 0x1

    .line 448
    :cond_e
    :goto_e
    return v1

    .line 437
    :cond_f
    const/4 v1, 0x2

    goto :goto_e

    .line 439
    :cond_11
    invoke-direct {p0, p1, p2}, getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 441
    .local v0, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v0, :cond_19

    .line 442
    const/4 v1, 0x4

    goto :goto_e

    .line 443
    :cond_19
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_20

    .line 444
    const/16 v1, 0x8

    goto :goto_e

    .line 445
    :cond_20
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 446
    const/16 v1, 0x10

    goto :goto_e
.end method

.method private haveKnoxPassword(II)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 1194
    const/4 v1, 0x0

    .line 1195
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 1197
    .local v2, "sdpEnabled":Z
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1198
    const/4 v1, 0x1

    .line 1217
    :goto_d
    return v1

    .line 1201
    :cond_e
    :try_start_e
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    iget-boolean v2, v3, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1f

    .line 1207
    :goto_18
    if-eqz v2, :cond_2c

    .line 1208
    invoke-direct {p0, p1}, checkCMKExists(I)Z

    move-result v1

    goto :goto_d

    .line 1203
    :catch_1f
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "havePassword :: Error occured..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 1209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2c
    const/4 v3, 0x1

    if-ne p2, v3, :cond_36

    .line 1210
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    goto :goto_d

    .line 1211
    :cond_36
    const/4 v3, 0x2

    if-ne p2, v3, :cond_40

    .line 1212
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    goto :goto_d

    .line 1214
    :cond_40
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "havePassword :: Wrong condition... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private isKeyMigrationRequired(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 695
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v0

    .line 696
    :cond_f
    return v0
.end method

.method private isKnoxUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "ret":Z
    const/16 v1, 0x64

    if-lt p1, v1, :cond_a

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_a

    .line 464
    const/4 v0, 0x1

    .line 466
    :cond_a
    return v0
.end method

.method private isRecoveryRequired(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "result":Z
    invoke-direct {p0, p1}, isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 655
    invoke-direct {p0, p1}, getKnoxRecoveryVersion(I)I

    move-result v0

    .line 657
    .local v0, "currentVersion":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_f

    .line 658
    const/4 v1, 0x1

    .line 661
    .end local v0    # "currentVersion":I
    :cond_f
    return v1
.end method

.method private isSdpSupported()Z
    .registers 2

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method private migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2801
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "this model was mdfpp keystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    if-nez p2, :cond_39

    .line 2803
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "mdfpp keystore is password try MdfppMigrateKeystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2805
    invoke-interface {p5, p3, v1, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2806
    if-nez p4, :cond_2d

    .line 2807
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2834
    :cond_2d
    :goto_2d
    return-object v1

    .line 2811
    :cond_2e
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "password value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2d

    .line 2814
    :cond_39
    iget v2, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_80

    .line 2815
    invoke-interface {p5, p3, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2816
    .local v0, "hash":[B
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "mdfpp keystore is pattern try MdfppMigrateKeystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    iget-object v2, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 2818
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v2

    if-nez v2, :cond_65

    .line 2819
    const-string v1, "LockSettingsSerivceKeystore"

    const-string v2, "MdfppMigrateKeystore failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2d

    .line 2822
    :cond_65
    invoke-interface {p5, p3, v1, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2823
    if-nez p4, :cond_2d

    .line 2824
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2d

    .line 2828
    :cond_75
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "pattern value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2d

    .line 2832
    .end local v0    # "hash":[B
    :cond_80
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "this case would not happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private migrateMDFPPKeystore(Ljava/lang/String;IZ)Z
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "isFingerprint"    # Z

    .prologue
    .line 2839
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 2840
    .local v1, "ks":Landroid/security/KeyStore;
    const/4 v5, 0x1

    .line 2842
    .local v5, "result":Z
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call MDFPPMigrateKeystore with userHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2845
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2846
    .local v2, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2847
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6, p2}, Landroid/security/KeyStore;->onUserAddedMDFPP(II)V

    .line 2848
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAddedMDFPP for userId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "with parentId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 2852
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_6d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_71
    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2853
    .restart local v2    # "pi":Landroid/content/pm/UserInfo;
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2854
    .local v3, "profileUid":I
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-virtual {v1, v3, p1, p3}, Landroid/security/KeyStore;->migrateMDFPPKeystore(ILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_71

    .line 2857
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MdfppMigrateKeystore failed with profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_c8

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 2859
    :cond_c8
    const/4 v5, 0x0

    goto :goto_71

    .line 2864
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_ca
    return v5
.end method

.method private migrateOldData()V
    .registers 35

    .prologue
    .line 940
    :try_start_0
    const-string/jumbo v31, "migrated"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_5d

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 942
    .local v11, "cr":Landroid/content/ContentResolver;
    sget-object v10, VALID_SETTINGS:[Ljava/lang/String;

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_25
    move/from16 v0, v18

    if-ge v15, v0, :cond_43

    aget-object v29, v10, v15

    .line 943
    .local v29, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 944
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_40

    .line 945
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 942
    :cond_40
    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    .line 949
    .end local v29    # "validSetting":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_43
    const-string/jumbo v31, "migrated"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 950
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lock settings to new location"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :cond_5d
    const-string/jumbo v31, "migrated_user_specific"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_14e

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 956
    .local v24, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 957
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 958
    .local v28, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v25, 0x0

    .local v25, "user":I
    :goto_91
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_134

    .line 960
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 961
    .local v27, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 962
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v31, "lock_screen_owner_info"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 963
    .local v19, "ownerInfo":Ljava/lang/String;
    if-eqz v19, :cond_d4

    .line 964
    const-string/jumbo v31, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 965
    const-string v31, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 971
    :cond_d4
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d7} :catch_125

    .line 974
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_d7
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 975
    .local v17, "ivalue":I
    if-eqz v17, :cond_108

    const/4 v13, 0x1

    .line 976
    .local v13, "enabled":Z
    :goto_e5
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    if-eqz v13, :cond_10a

    const-wide/16 v32, 0x1

    :goto_ec
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V
    :try_end_f7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_d7 .. :try_end_f7} :catch_10d
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_f7} :catch_125

    .line 983
    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :cond_f7
    :goto_f7
    :try_start_f7
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 958
    add-int/lit8 v25, v25, 0x1

    goto :goto_91

    .line 975
    .restart local v17    # "ivalue":I
    :cond_108
    const/4 v13, 0x0

    goto :goto_e5

    .line 976
    .restart local v13    # "enabled":Z
    :cond_10a
    const-wide/16 v32, 0x0

    goto :goto_ec

    .line 977
    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :catch_10d
    move-exception v12

    .line 979
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_f7

    .line 980
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    const-wide/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_124} :catch_125

    goto :goto_f7

    .line 1094
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v19    # "ownerInfo":Ljava/lang/String;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v27    # "userId":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_125
    move-exception v20

    .line 1095
    .local v20, "re":Landroid/os/RemoteException;
    const-string v31, "LockSettingsService"

    const-string v32, "Unable to migrate old data"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    .end local v20    # "re":Landroid/os/RemoteException;
    :cond_133
    :goto_133
    return-void

    .line 986
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v24    # "um":Landroid/os/UserManager;
    .restart local v25    # "user":I
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_134
    :try_start_134
    const-string/jumbo v31, "migrated_user_specific"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 987
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated per-user lock settings to new location"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_14e
    const-string/jumbo v31, "migrated_biometric_weak"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_1ef

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 993
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 994
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_177
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_1d5

    .line 995
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 996
    .restart local v27    # "userId":I
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 999
    .local v22, "type":J
    const-string/jumbo v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1002
    .local v8, "alternateType":J
    const-wide/32 v32, 0x8000

    cmp-long v31, v22, v32

    if-nez v31, :cond_1c2

    .line 1003
    const-string/jumbo v31, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    invoke-virtual {v0, v1, v8, v9, v2}, setLong(Ljava/lang/String;JI)V

    .line 1007
    :cond_1c2
    const-string/jumbo v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V

    .line 994
    add-int/lit8 v14, v14, 0x1

    goto :goto_177

    .line 1011
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_1d5
    const-string/jumbo v31, "migrated_biometric_weak"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1ef
    const-string/jumbo v31, "migrated_lockscreen_disabled"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_290

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1021
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1022
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v26

    .line 1023
    .local v26, "userCount":I
    const/16 v21, 0x0

    .line 1024
    .local v21, "switchableUsers":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_21e
    move/from16 v0, v26

    if-ge v14, v0, :cond_235

    .line 1025
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v31

    if-eqz v31, :cond_232

    .line 1026
    add-int/lit8 v21, v21, 0x1

    .line 1024
    :cond_232
    add-int/lit8 v14, v14, 0x1

    goto :goto_21e

    .line 1030
    :cond_235
    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-le v0, v1, :cond_276

    .line 1031
    const/4 v14, 0x0

    :goto_23e
    move/from16 v0, v26

    if-ge v14, v0, :cond_276

    .line 1032
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 1034
    .local v16, "id":I
    const-string/jumbo v31, "lockscreen.disabled"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v31

    if-eqz v31, :cond_273

    .line 1035
    const-string/jumbo v31, "lockscreen.disabled"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, setBoolean(Ljava/lang/String;ZI)V

    .line 1031
    :cond_273
    add-int/lit8 v14, v14, 0x1

    goto :goto_23e

    .line 1040
    .end local v16    # "id":I
    :cond_276
    const-string/jumbo v31, "migrated_lockscreen_disabled"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1041
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lockscreen disabled flag"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v14    # "i":I
    .end local v21    # "switchableUsers":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v26    # "userCount":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_290
    const-string/jumbo v31, "migrated_clear_locktype_if_no_password"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_370

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1046
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1047
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2b9
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_356

    .line 1048
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1049
    .restart local v27    # "userId":I
    const/16 v31, 0x64

    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_32b

    .line 1050
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1053
    .restart local v22    # "type":J
    const-wide/32 v32, 0x20000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_30b

    const-wide/32 v32, 0x30000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_30b

    const-wide/32 v32, 0x40000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_30b

    const-wide/32 v32, 0x50000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_30b

    const-wide/32 v32, 0x60000

    cmp-long v31, v22, v32

    if-nez v31, :cond_32e

    .line 1058
    :cond_30b
    move-object/from16 v0, p0

    iget-object v0, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v31

    if-nez v31, :cond_32b

    .line 1059
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V

    .line 1047
    .end local v22    # "type":J
    :cond_32b
    :goto_32b
    add-int/lit8 v14, v14, 0x1

    goto :goto_2b9

    .line 1063
    .restart local v22    # "type":J
    :cond_32e
    const-wide/32 v32, 0x10000

    cmp-long v31, v22, v32

    if-nez v31, :cond_32b

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v31

    if-nez v31, :cond_32b

    .line 1065
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V

    goto :goto_32b

    .line 1072
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_356
    const-string/jumbo v31, "migrated_clear_locktype_if_no_password"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1073
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated clear locktype if No password."

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_370
    const-string/jumbo v31, "migrated_lockscreen_fingerprintkey"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_133

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1078
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1079
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_399
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_3ec

    .line 1080
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1081
    .restart local v27    # "userId":I
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1084
    .restart local v22    # "type":J
    const-string/jumbo v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1087
    .restart local v8    # "alternateType":J
    const-wide/32 v32, 0x61000

    cmp-long v31, v22, v32

    if-nez v31, :cond_3e9

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1079
    :cond_3e9
    add-int/lit8 v14, v14, 0x1

    goto :goto_399

    .line 1091
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_3ec
    const-string/jumbo v31, "migrated_lockscreen_fingerprintkey"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1092
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lockscreen fingerprint key flag"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_406
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_406} :catch_125

    goto/16 :goto_133
.end method

.method private protect(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "protectedCredential":Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 482
    .local v0, "credentialBytes":[B
    new-instance v1, Ljava/lang/String;

    .end local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 484
    .restart local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {p0, v0}, zeroOut([B)V

    .line 486
    .end local v0    # "credentialBytes":[B
    :cond_f
    return-object v1
.end method

.method private removeUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 1993
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 1994
    iget-object v3, p0, mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    .line 1996
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 1997
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2000
    :try_start_11
    invoke-direct {p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2001
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_1a

    .line 2002
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 2007
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_1a
    :goto_1a
    return-void

    .line 2004
    :catch_1b
    move-exception v0

    .line 2005
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private saveSDPassword(Ljava/lang/String;)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1521
    const/4 v2, 0x0

    .line 1522
    .local v2, "result":Z
    const-string/jumbo v5, "enterprise_shared_device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 1525
    .local v1, "mService":Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "loginUserName"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1526
    .local v4, "userName":Ljava/lang/String;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_22
    move v3, v2

    .line 1541
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_23
    return v3

    .line 1529
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_24
    if-eqz v1, :cond_2d

    .line 1531
    :try_start_26
    invoke-interface {v1, p1, v4}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;->saveSDPasswordInTIMA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_31

    move-result v5

    if-nez v5, :cond_2f

    .line 1532
    const/4 v2, 0x0

    :cond_2d
    :goto_2d
    move v3, v2

    .line 1541
    .restart local v3    # "result":I
    goto :goto_23

    .line 1534
    .end local v3    # "result":I
    :cond_2f
    const/4 v2, 0x1

    goto :goto_2d

    .line 1537
    :catch_31
    move-exception v0

    .line 1538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1290
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1292
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1293
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1294
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    goto :goto_c

    .line 1296
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_1e
    return-void
.end method

.method private setKnoxRecoveryVersion(JI)V
    .registers 7
    .param p1, "value"    # J
    .param p3, "userId"    # I

    .prologue
    .line 527
    invoke-direct {p0, p3}, isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 528
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.knox_recovery_version"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 530
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recovery version for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been set as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 533
    :cond_35
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1150
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1151
    sget-object v0, SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1152
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1154
    :cond_12
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1300
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1302
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1303
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1304
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    goto :goto_c

    .line 1306
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_1e
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 29
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1778
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_12

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1780
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1896
    :cond_11
    :goto_11
    return-object v17

    .line 1791
    :cond_12
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1792
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_11

    .line 1797
    :cond_1b
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_71

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p7

    .line 1798
    invoke-direct/range {v4 .. v9}, migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v17

    .line 1800
    .local v17, "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v17, :cond_11

    .line 1826
    .end local v17    # "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_39
    :goto_39
    const/16 v18, 0x0

    .line 1827
    .local v18, "shouldReEnroll":Z
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1828
    .local v9, "credBytes":[B
    if-eqz p4, :cond_113

    .line 1829
    const/16 v20, 0x0

    .line 1830
    .local v20, "token":[B
    invoke-direct/range {p0 .. p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 1832
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v16

    .line 1833
    .local v16, "responseCode":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_ee

    .line 1834
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v19

    .line 1837
    .local v19, "time":I
    new-instance v15, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 1867
    .end local v19    # "time":I
    .end local v20    # "token":[B
    .local v15, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_67
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_68
    array-length v4, v9

    if-ge v13, v4, :cond_145

    .line 1868
    const/4 v4, 0x0

    aput-byte v4, v9, v13

    .line 1867
    add-int/lit8 v13, v13, 0x1

    goto :goto_68

    .line 1804
    .end local v9    # "credBytes":[B
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v13    # "i":I
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "responseCode":I
    .end local v18    # "shouldReEnroll":Z
    :cond_71
    if-eqz p2, :cond_cd

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_cd

    .line 1805
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v12

    .line 1807
    .local v12, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 1808
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, unlockKeystore(Ljava/lang/String;I)V

    .line 1810
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1811
    if-nez p4, :cond_39

    .line 1812
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_11

    .line 1818
    :cond_c9
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_11

    .line 1821
    .end local v12    # "hash":[B
    :cond_cd
    if-eqz p2, :cond_39

    .line 1822
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 1838
    .restart local v9    # "credBytes":[B
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v16    # "responseCode":I
    .restart local v18    # "shouldReEnroll":Z
    .restart local v20    # "token":[B
    :cond_ee
    if-nez v16, :cond_10f

    .line 1839
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v20

    .line 1840
    if-nez v20, :cond_102

    .line 1842
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_67

    .line 1845
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_102
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v18

    .line 1846
    new-instance v15, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_67

    .line 1849
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_10f
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_67

    .line 1852
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "responseCode":I
    .end local v20    # "token":[B
    :cond_113
    invoke-direct/range {p0 .. p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v9}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 1854
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v16

    .line 1855
    .restart local v16    # "responseCode":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_137

    .line 1856
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v19

    .line 1859
    .restart local v19    # "time":I
    new-instance v15, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 1860
    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_67

    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v19    # "time":I
    :cond_137
    if-nez v16, :cond_141

    .line 1861
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v18

    .line 1862
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_67

    .line 1864
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_141
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_67

    .line 1870
    .restart local v13    # "i":I
    :cond_145
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_18e

    .line 1872
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, unlockKeystore(Ljava/lang/String;I)V

    .line 1873
    if-eqz v18, :cond_161

    .line 1874
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1883
    :cond_161
    :goto_161
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_18a

    .line 1884
    move-object/from16 v0, p0

    iget-object v4, v0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v4, :cond_18a

    .line 1885
    invoke-interface/range {p7 .. p7}, Lcom/android/server/LockSettingsService$CredentialUtil;->getLockType()I

    move-result v14

    .line 1886
    .local v14, "lockType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getKeyType(I)I

    move-result v10

    .line 1888
    .local v10, "cmkType":I
    if-eqz v18, :cond_1a5

    .line 1889
    move-object/from16 v0, p0

    iget-object v4, v0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/server/LockSettingsService$SdpHandler;->migrateCredential(ILjava/lang/String;I)V

    .end local v10    # "cmkType":I
    .end local v14    # "lockType":I
    :cond_18a
    :goto_18a
    move-object/from16 v17, v15

    .line 1896
    goto/16 :goto_11

    .line 1876
    :cond_18e
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_161

    .line 1877
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_161

    .line 1878
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, requireStrongAuth(II)V

    goto :goto_161

    .line 1891
    .restart local v10    # "cmkType":I
    .restart local v14    # "lockType":I
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v4, v0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    goto :goto_18a
.end method

.method private verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 27
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3143
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_12

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3145
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3244
    :cond_11
    :goto_11
    return-object v14

    .line 3156
    :cond_12
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3157
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_11

    .line 3160
    :cond_1b
    if-eqz p2, :cond_75

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_75

    .line 3161
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v12

    .line 3163
    .local v12, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 3164
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, unlockKeystore(Ljava/lang/String;I)V

    .line 3166
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3167
    if-nez p4, :cond_94

    .line 3168
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_11

    .line 3174
    :cond_72
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_11

    .line 3177
    .end local v12    # "hash":[B
    :cond_75
    if-eqz p2, :cond_94

    .line 3178
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :cond_94
    const/16 v16, 0x0

    .line 3183
    .local v16, "shouldReEnroll":Z
    if-eqz p4, :cond_11e

    .line 3184
    const/16 v18, 0x0

    .line 3185
    .local v18, "token":[B
    invoke-direct/range {p0 .. p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 3187
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v15

    .line 3188
    .local v15, "responseCode":I
    const/4 v4, 0x1

    if-ne v15, v4, :cond_fc

    .line 3189
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v17

    .line 3192
    .local v17, "time":I
    new-instance v14, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3223
    .end local v17    # "time":I
    .end local v18    # "token":[B
    .local v14, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_c0
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_152

    .line 3225
    if-eqz v16, :cond_d3

    .line 3226
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3235
    :cond_d3
    :goto_d3
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_11

    .line 3236
    move-object/from16 v0, p0

    iget-object v4, v0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v4, :cond_11

    .line 3237
    invoke-interface/range {p7 .. p7}, Lcom/android/server/LockSettingsService$CredentialUtil;->getLockType()I

    move-result v13

    .line 3238
    .local v13, "lockType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, getKeyType(I)I

    move-result v10

    .line 3240
    .local v10, "cmkType":I
    move-object/from16 v0, p0

    iget-object v4, v0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    goto/16 :goto_11

    .line 3193
    .end local v10    # "cmkType":I
    .end local v13    # "lockType":I
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v18    # "token":[B
    :cond_fc
    if-nez v15, :cond_11b

    .line 3194
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v18

    .line 3195
    if-nez v18, :cond_10f

    .line 3197
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_c0

    .line 3200
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_10f
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v16

    .line 3201
    new-instance v14, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_c0

    .line 3204
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_11b
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_c0

    .line 3207
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v15    # "responseCode":I
    .end local v18    # "token":[B
    :cond_11e
    invoke-direct/range {p0 .. p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 3209
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v15

    .line 3210
    .restart local v15    # "responseCode":I
    const/4 v4, 0x1

    if-ne v15, v4, :cond_144

    .line 3211
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v17

    .line 3214
    .restart local v17    # "time":I
    new-instance v14, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3215
    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_c0

    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v17    # "time":I
    :cond_144
    if-nez v15, :cond_14e

    .line 3216
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v16

    .line 3217
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_c0

    .line 3219
    .end local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_14e
    sget-object v14, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v14    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_c0

    .line 3228
    :cond_152
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d3

    .line 3229
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_d3

    .line 3230
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, requireStrongAuth(II)V

    goto/16 :goto_d3
.end method

.method private verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    .line 783
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 784
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "credential"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 785
    const-string v1, "Verification - Start!"

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 787
    const/4 v8, 0x0

    .line 788
    .local v8, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 789
    const-string v1, "Verification - Unacceptable credential..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 822
    :cond_30
    :goto_30
    if-nez v8, :cond_34

    .line 823
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 824
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 825
    return-object v8

    .line 791
    :cond_4f
    new-instance v0, Lcom/android/server/LockSettingsService$CredentialInfo;

    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v3

    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v1

    invoke-direct {p0, p2, v1}, getVerificationType(II)I

    move-result v4

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService$CredentialInfo;-><init>(Lcom/android/server/LockSettingsService;IIILjava/lang/String;)V

    .line 796
    .local v0, "ci":Lcom/android/server/LockSettingsService$CredentialInfo;
    invoke-direct {p0, v0, p3}, doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    move-result-object v7

    .line 798
    .local v7, "recoveryResponse":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    invoke-virtual {v7}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->getResponseCode()I

    move-result v1

    packed-switch v1, :pswitch_data_a8

    goto :goto_30

    .line 818
    :pswitch_6f
    const-string v1, "Verification - Failed to recovery..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_30

    .line 800
    :pswitch_75
    iget-object v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "encodedCredential":Ljava/lang/String;
    if-eqz v6, :cond_30

    .line 802
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 803
    iget-object v1, p0, mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$500(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_30

    .line 807
    .end local v6    # "encodedCredential":Ljava/lang/String;
    :pswitch_89
    invoke-direct {p0}, isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 808
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 809
    goto :goto_30

    .line 811
    :cond_92
    const/16 v1, 0x10

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v2, v3}, getVerificationType(II)I

    move-result v2

    if-ne v1, v2, :cond_a1

    .line 812
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 813
    goto :goto_30

    .line 815
    :cond_a1
    const-string v1, "Verification - Unexpected condition..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_30

    .line 798
    nop

    :pswitch_data_a8
    .packed-switch -0x1
        :pswitch_6f
        :pswitch_75
        :pswitch_89
    .end packed-switch
.end method

.method private verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6
    .param p1, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1569
    invoke-direct {p0}, getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1570
    iget-object v1, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    .line 1571
    .local v0, "isSharedDevice":Z
    if-eqz v0, :cond_29

    .line 1573
    invoke-direct {p0, p2}, checkSDPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1574
    const-string v1, "LockSettingsService.KeyMgnt"

    const-string v2, "check password true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1581
    .end local v0    # "isSharedDevice":Z
    :cond_29
    :goto_29
    return-object p1

    .line 1577
    .restart local v0    # "isSharedDevice":Z
    :cond_2a
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_29
.end method

.method private zeroOut(Ljava/lang/String;)V
    .registers 2
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 504
    if-eqz p1, :cond_5

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 506
    :cond_5
    const/4 p1, 0x0

    .line 507
    return-void
.end method

.method private zeroOut([B)V
    .registers 4
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 498
    if-nez p1, :cond_4

    .line 501
    :goto_3
    return-void

    .line 499
    :cond_4
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 500
    const/4 p1, 0x0

    .line 501
    goto :goto_3
.end method


# virtual methods
.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2610
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2612
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2613
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v2

    .line 2615
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2616
    const/4 v1, 0x1

    .line 2620
    :goto_12
    return v1

    .line 2619
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2620
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2624
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2626
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2627
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 2629
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2630
    const/4 v1, 0x1

    .line 2635
    :goto_12
    return v1

    .line 2633
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2635
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2583
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2585
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2586
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v2

    .line 2588
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2589
    const/4 v1, 0x1

    .line 2593
    :goto_12
    return v1

    .line 2592
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2593
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkAppLockPattern(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2597
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2598
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 2599
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v2

    .line 2601
    .local v2, "storedHash":[B
    if-nez v2, :cond_15

    .line 2602
    const/4 v1, 0x1

    .line 2606
    :goto_14
    return v1

    .line 2605
    :cond_15
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2606
    .local v1, "matched":Z
    goto :goto_14
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2569
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2571
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2572
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v2

    .line 2574
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2575
    const/4 v1, 0x1

    .line 2579
    :goto_12
    return v1

    .line 2578
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2579
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2306
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2307
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_18

    .line 2308
    const-string v1, "LockSettingsService"

    const-string v2, "checkBackupPassword( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_18
    return-object v0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2203
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2205
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_17

    .line 2206
    const-string v1, "LockSettingsService"

    const-string v2, "checkBackupPin( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_17
    return-object v0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2781
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2783
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2784
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v2

    .line 2786
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2787
    const/4 v1, 0x1

    .line 2791
    :goto_12
    return v1

    .line 2790
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2791
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2724
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2725
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2726
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "password"

    aput-object v5, v3, v4

    aput-object p1, v3, v1

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2728
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2729
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v2

    .line 2731
    .local v2, "storedHash":[B
    if-nez v2, :cond_31

    .line 2743
    :cond_30
    :goto_30
    return v1

    .line 2735
    :cond_31
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2738
    .local v1, "matched":Z
    if-eqz v1, :cond_30

    .line 2739
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_30

    .line 2740
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    goto :goto_30
.end method

.method public checkParentControlPassword([BI)Z
    .registers 6
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 2667
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2669
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readParentControlPasswordHash(I)[B

    move-result-object v1

    .line 2671
    .local v1, "storedHash":[B
    if-nez v1, :cond_d

    .line 2672
    const/4 v0, 0x1

    .line 2676
    :goto_c
    return v0

    .line 2675
    :cond_d
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 2676
    .local v0, "matched":Z
    goto :goto_c
.end method

.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1693
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1694
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_13

    .line 1695
    invoke-virtual {p0, p1}, retainPassword(Ljava/lang/String;)V

    .line 1697
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1698
    invoke-direct {p0, v0, p1}, verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1700
    :cond_1d
    const-string v1, "LockSettingsService.KeyMgnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz p1, :cond_45

    .line 1704
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 1706
    :cond_45
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1594
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1596
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_14

    .line 1597
    invoke-direct {p0, v0, p1}, verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1600
    :cond_14
    return-object v0
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2477
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2479
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2480
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockBackupkPinHash(I)[B

    move-result-object v2

    .line 2482
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2483
    const/4 v1, 0x1

    .line 2488
    :goto_12
    return v1

    .line 2486
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2488
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2509
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2511
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2512
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 2514
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2515
    const/4 v1, 0x1

    .line 2520
    :goto_12
    return v1

    .line 2518
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2520
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2421
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2423
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2424
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPasswordHash(I)[B

    move-result-object v2

    .line 2426
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2427
    const/4 v1, 0x1

    .line 2432
    :goto_12
    return v1

    .line 2430
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2432
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2450
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2451
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 2452
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPatternHash(I)[B

    move-result-object v2

    .line 2454
    .local v2, "storedHash":[B
    if-nez v2, :cond_15

    .line 2455
    const/4 v1, 0x1

    .line 2459
    :goto_14
    return v1

    .line 2458
    :cond_15
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2459
    .local v1, "matched":Z
    goto :goto_14
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2392
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2394
    iget-object v3, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2395
    .local v0, "hash":[B
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPinHash(I)[B

    move-result-object v2

    .line 2397
    .local v2, "storedHash":[B
    if-nez v2, :cond_13

    .line 2398
    const/4 v1, 0x1

    .line 2403
    :goto_12
    return v1

    .line 2401
    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2403
    .local v1, "matched":Z
    goto :goto_12
.end method

.method public checkSignatureBackupPin([BI)Z
    .registers 6
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2133
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 2135
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readSignatureBackupPinHash(I)[B

    move-result-object v1

    .line 2137
    .local v1, "storedHash":[B
    if-nez v1, :cond_d

    .line 2138
    const/4 v0, 0x1

    .line 2143
    :goto_c
    return v0

    .line 2141
    :cond_d
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 2143
    .local v0, "matched":Z
    goto :goto_c
.end method

.method public checkVoldPassword(I)Z
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1901
    iget-boolean v0, p0, mFirstCallToVold:Z

    if-nez v0, :cond_6

    .line 1902
    const/4 v0, 0x0

    .line 1989
    :goto_5
    return v0

    .line 1904
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, mFirstCallToVold:Z

    .line 1906
    invoke-direct {p0, p1}, checkPasswordReadPermission(I)V

    .line 1916
    invoke-direct {p0}, getMountService()Landroid/os/storage/IMountService;

    move-result-object v12

    .line 1917
    .local v12, "service":Landroid/os/storage/IMountService;
    invoke-interface {v12}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 1918
    .local v9, "password":Ljava/lang/String;
    invoke-interface {v12}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 1919
    if-nez v9, :cond_1b

    .line 1920
    const/4 v0, 0x0

    goto :goto_5

    .line 1924
    :cond_1b
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 1927
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1928
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "getMaximumFailedPasswordsForDisable"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1932
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_75

    .line 1934
    const/4 v11, 0x0

    .line 1935
    .local v11, "resultMDM":I
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1936
    const-string/jumbo v0, "getMaximumFailedPasswordsForDisable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1937
    if-lez v11, :cond_72

    .line 1938
    const-string v0, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check Password again due to PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6d} :catch_a3
    .catchall {:try_start_3f .. :try_end_6d} :catchall_a8

    .line 1939
    const/4 v0, 0x0

    .line 1943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1948
    .end local v11    # "resultMDM":I
    :cond_75
    :goto_75
    :try_start_75
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1950
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1952
    .local v10, "pw":Ljava/lang/String;
    invoke-virtual {p0, v9, p1}, checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_ae

    .line 1955
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1956
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1957
    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_a0} :catch_ad

    .line 1960
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_a0
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1941
    .end local v10    # "pw":Ljava/lang/String;
    .restart local v11    # "resultMDM":I
    :catch_a3
    move-exception v0

    .line 1943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_75

    :catchall_a8
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1963
    .end local v11    # "resultMDM":I
    :catch_ad
    move-exception v0

    .line 1967
    :cond_ae
    :try_start_ae
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1969
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1971
    .restart local v10    # "pw":Ljava/lang/String;
    invoke-virtual {p0, v9, p1}, checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_dd

    .line 1974
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1975
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1976
    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d9} :catch_dc

    .line 1979
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_d9
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1982
    .end local v10    # "pw":Ljava/lang/String;
    :catch_dc
    move-exception v0

    .line 1986
    :cond_dd
    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 1989
    const/4 v0, 0x0

    goto/16 :goto_5
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-direct {p0, p1, p3}, checkReadPermission(Ljava/lang/String;I)V

    .line 1159
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .end local p2    # "defaultValue":Z
    :goto_e
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_f
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    const/4 p2, 0x1

    goto :goto_e

    :cond_22
    const/4 p2, 0x0

    goto :goto_e
.end method

.method public getCarrierLockPlusMode(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2751
    invoke-direct {p0, p1}, checkWritePermission(I)V

    .line 2752
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->getCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-direct {p0, p1, p4}, checkReadPermission(Ljava/lang/String;I)V

    .line 1168
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .end local p2    # "defaultValue":J
    :goto_e
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_e
.end method

.method public getParentControlPasswordHashSize(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2689
    iget-object v1, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->readParentControlPasswordHash(I)[B

    move-result-object v0

    .line 2691
    .local v0, "storedHash":[B
    if-eqz v0, :cond_a

    .line 2692
    array-length v1, v0

    .line 2694
    :goto_9
    return v1

    :cond_a
    const/4 v1, -0x1

    goto :goto_9
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1254
    sget-object v0, mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureInfo(I)[B
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2112
    invoke-direct {p0, p1}, checkPasswordReadPermission(I)V

    .line 2114
    iget-object v1, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->readSignatureHash(I)[B

    move-result-object v0

    .line 2116
    .local v0, "storedHash":[B
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-direct {p0, p1, p3}, checkReadPermission(Ljava/lang/String;I)V

    .line 1176
    invoke-virtual {p0, p1, p2, p3}, getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1180
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1183
    .local v0, "ident":J
    :try_start_d
    iget-object v2, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "1"
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1e

    .line 1185
    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    .end local v0    # "ident":J
    :goto_1a
    return-object v2

    .line 1183
    .restart local v0    # "ident":J
    :cond_1b
    :try_start_1b
    const-string v2, "0"
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_17

    .line 1185
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1189
    .end local v0    # "ident":J
    :cond_23
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2651
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2655
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2643
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2647
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2639
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2255
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2151
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2776
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2719
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveParentControlPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2683
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasParentControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-direct {p0, p1}, isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1226
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, haveKnoxPassword(II)Z

    move-result v0

    .line 1228
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    goto :goto_b
.end method

.method public havePattern(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-direct {p0, p1}, isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, haveKnoxPassword(II)Z

    move-result v0

    .line 1238
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    goto :goto_b
.end method

.method public havePersonalModeBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2493
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2525
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2437
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePattern(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2464
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2408
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveSignature(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2101
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveSignature(I)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2128
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveSignatureBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 2011
    const/4 v0, -0x1

    invoke-direct {p0, v0}, checkPasswordReadPermission(I)V

    .line 2012
    iget-object v0, p0, mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2013
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2023
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2024
    iget-object v0, p0, mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2025
    return-void
.end method

.method public retainPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1245
    return-void
.end method

.method public sanitizePassword()V
    .registers 2

    .prologue
    .line 1248
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1249
    const-string/jumbo v0, "default_password"

    sput-object v0, mSavePassword:Ljava/lang/String;

    .line 1251
    :cond_b
    return-void
.end method

.method saveSharedDevicePassword(Ljava/lang/String;)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1403
    invoke-direct {p0}, getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1404
    iget-object v1, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1405
    iget-object v1, p0, mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    .line 1406
    .local v0, "isSharedDevice":Z
    if-eqz v0, :cond_1d

    .line 1408
    invoke-direct {p0, p1}, saveSDPassword(Ljava/lang/String;)Z

    .line 1412
    .end local v0    # "isSharedDevice":Z
    :cond_1d
    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2554
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2556
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    .line 2558
    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2561
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2563
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    .line 2566
    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2540
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2542
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    .line 2544
    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2547
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2549
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    .line 2551
    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2533
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2535
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPinHash([BI)V

    .line 2537
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-direct {p0, p3}, checkWritePermission(I)V

    .line 1134
    if-eqz p2, :cond_b

    const-string v0, "1"

    :goto_7
    invoke-direct {p0, p1, p3, v0}, setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1135
    return-void

    .line 1134
    :cond_b
    const-string v0, "0"

    goto :goto_7
.end method

.method public setCarrierLockPlusEnabled(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2763
    return-void
.end method

.method public setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2261
    const/4 v2, 0x4

    invoke-direct {p0, p3, v2}, getCurrentHandleBackupType(II)[B

    move-result-object v0

    .line 2263
    .local v0, "currentHandle":[B
    if-nez p1, :cond_16

    .line 2264
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPassword( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BI)V

    .line 2301
    :cond_15
    :goto_15
    return-void

    .line 2269
    :cond_16
    if-nez v0, :cond_22

    .line 2270
    if-eqz p2, :cond_21

    .line 2271
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_21
    const/4 p2, 0x0

    .line 2275
    :cond_22
    const/4 v1, 0x0

    .line 2276
    .local v1, "enrolledHandle":[B
    if-eqz p4, :cond_57

    .line 2279
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2280
    const-string v2, "LockSettingsServiceKeystore"

    const-string/jumbo v3, "mdfpp keystore migrate start for swipe fingerprint"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/4 v2, 0x1

    invoke-direct {p0, p1, p3, v2}, migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 2284
    :cond_3b
    invoke-direct {p0, v0, p2, p1, p3}, enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 2289
    :goto_3f
    if-eqz v1, :cond_5c

    .line 2290
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BI)V

    .line 2296
    :goto_46
    if-eqz v1, :cond_15

    .line 2297
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_15

    .line 2298
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, p3, v3, v4}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    goto :goto_15

    .line 2286
    :cond_57
    invoke-direct {p0, v0, p2, p1, p3}, enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_3f

    .line 2292
    :cond_5c
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll backup Password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 2157
    invoke-direct {p0, p3, v5}, getCurrentHandleBackupType(II)[B

    move-result-object v0

    .line 2160
    .local v0, "currentHandle":[B
    if-nez p1, :cond_10

    .line 2161
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_10

    .line 2162
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v2, p3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 2166
    :cond_10
    if-nez p1, :cond_21

    .line 2167
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPin( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPinHash([BI)V

    .line 2198
    :cond_20
    :goto_20
    return-void

    .line 2172
    :cond_21
    if-nez v0, :cond_2d

    .line 2173
    if-eqz p2, :cond_2c

    .line 2174
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_2c
    const/4 p2, 0x0

    .line 2179
    :cond_2d
    invoke-direct {p0, v0, p2, p1, p3}, enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 2180
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_6d

    .line 2181
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockBackupPin( writeBackupPinHash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-object v2, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPinHash([BI)V

    .line 2188
    :goto_5b
    if-eqz v1, :cond_20

    .line 2189
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_20

    .line 2190
    if-eqz p2, :cond_75

    .line 2191
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    goto :goto_20

    .line 2184
    :cond_6d
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll backup pin"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 2193
    :cond_75
    iget-object v2, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->migrateCredential(ILjava/lang/String;I)V

    goto :goto_20
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2769
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    .line 2770
    return-void
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2701
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2702
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2703
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2705
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    .line 2708
    iget-object v0, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v0, :cond_41

    .line 2709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2710
    iget-object v0, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    .line 2713
    :cond_41
    return-void
.end method

.method public setLockParentControlPassword([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 2660
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2662
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeParentControlPasswordHash([BI)V

    .line 2663
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1418
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1419
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "password"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "savedCredential"

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    const/4 v4, 0x4

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1422
    invoke-direct {p0, p3}, isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-direct {p0, p3}, checkCMKExists(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1424
    invoke-direct {p0, p1, p3, v6}, enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1481
    :goto_38
    return-void

    .line 1428
    :cond_39
    invoke-direct {p0, p3}, getCurrentHandle(I)[B

    move-result-object v0

    .line 1430
    .local v0, "currentHandle":[B
    if-nez p1, :cond_4f

    .line 1431
    invoke-direct {p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1432
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v8, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1433
    invoke-direct {p0, v8, p3}, setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_38

    .line 1437
    :cond_4f
    if-nez v0, :cond_5b

    .line 1438
    if-eqz p2, :cond_5a

    .line 1439
    const-string v3, "LockSettingsService"

    const-string v4, "Saved credential provided, but none stored"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_5a
    const/4 p2, 0x0

    .line 1444
    :cond_5b
    invoke-direct {p0, v0, p2, p1, p3}, enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 1445
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_93

    .line 1446
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1452
    :goto_66
    if-eqz v1, :cond_7a

    .line 1453
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_7a

    .line 1454
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1458
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v3, p3, v7}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 1466
    :cond_7a
    if-nez p3, :cond_8f

    .line 1467
    if-eqz p1, :cond_9b

    .line 1468
    const-string v3, "LSManager.setLockPassword"

    const-string v4, "Set new password."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :goto_85
    new-instance v2, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1473
    .local v2, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v2, p1}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 1479
    .end local v2    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_8f
    invoke-virtual {p0, p1}, saveSharedDevicePassword(Ljava/lang/String;)V

    goto :goto_38

    .line 1448
    :cond_93
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to enroll password"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 1470
    :cond_9b
    const-string v3, "LSManager.setLockPassword"

    const-string v4, "Delete password."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1344
    invoke-direct {p0, p3}, isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-direct {p0, p3}, checkCMKExists(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1346
    const/4 v3, 0x1

    invoke-direct {p0, p1, p3, v3}, enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1399
    :goto_11
    return-void

    .line 1350
    :cond_12
    invoke-direct {p0, p3}, getCurrentHandle(I)[B

    move-result-object v0

    .line 1352
    .local v0, "currentHandle":[B
    if-nez p1, :cond_28

    .line 1353
    invoke-direct {p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1354
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v6, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1355
    invoke-direct {p0, v6, p3}, setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_11

    .line 1359
    :cond_28
    if-nez v0, :cond_34

    .line 1360
    if-eqz p2, :cond_33

    .line 1361
    const-string v3, "LockSettingsService"

    const-string v4, "Saved credential provided, but none stored"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_33
    const/4 p2, 0x0

    .line 1366
    :cond_34
    invoke-direct {p0, v0, p2, p1, p3}, enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 1367
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_bc

    .line 1368
    iget-object v3, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1374
    :goto_3f
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.MODEL is ? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    if-nez p3, :cond_a8

    .line 1378
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSM userId is ? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "N910"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1380
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.MODEL contains N910 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    new-instance v2, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1382
    .local v2, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    const-string v3, "LockSettingsService"

    const-string v4, "LSManager Call lsw.setPassword(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {v2, v6}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 1390
    .end local v2    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_a8
    if-eqz v1, :cond_b7

    .line 1391
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_b7

    .line 1392
    iget-object v3, p0, mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1397
    :cond_b7
    invoke-virtual {p0, p1}, saveSharedDevicePassword(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1370
    :cond_bc
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to enroll pattern"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-direct {p0, p4}, checkWritePermission(I)V

    .line 1140
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1141
    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2499
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2501
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockFingerprintPasswordHash([BI)V

    .line 2504
    return-void
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2469
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2471
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLocBackupkPinHash([BI)V

    .line 2473
    return-void
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2413
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2415
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPasswordHash([BI)V

    .line 2417
    return-void
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2442
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2444
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPatternHash([BI)V

    .line 2446
    return-void
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2384
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2386
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPinHash([BI)V

    .line 2388
    return-void
.end method

.method public setSignatureBackupPin([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2121
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2123
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeSignatureBackupPinHash([BI)V

    .line 2124
    return-void
.end method

.method public setSignatureInfo([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2106
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2107
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeSignatureHash([BI)V

    .line 2108
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-direct {p0, p3}, checkWritePermission(I)V

    .line 1146
    invoke-direct {p0, p1, p3, p2}, setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1147
    return-void
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 927
    invoke-direct {p0}, migrateOldData()V

    .line 929
    :try_start_3
    invoke-direct {p0}, getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_d

    .line 933
    :goto_6
    iget-object v1, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 934
    return-void

    .line 930
    :catch_d
    move-exception v0

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 2017
    const/4 v0, -0x1

    invoke-direct {p0, v0}, checkPasswordReadPermission(I)V

    .line 2018
    iget-object v0, p0, mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2019
    return-void
.end method

.method public updateCarrierLockPlusMode(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2756
    invoke-direct {p0, p1}, checkWritePermission(I)V

    .line 2757
    iget-object v0, p0, mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->updateCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2316
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2214
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1712
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1606
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
