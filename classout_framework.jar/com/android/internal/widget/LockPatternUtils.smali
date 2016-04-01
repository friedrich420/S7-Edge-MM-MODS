.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;,
        Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    }
.end annotation


# static fields
.field public static final APP_LOCK_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.applock_fingerprint"

.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final ENABLED_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.enabled_fingerprint"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final ENTERPRISEID_TYPE_KEY:Ljava/lang/String; = "lockscreen.enterpriseidentity_type"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL2:J = 0xea60L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL3:J = 0x493e0L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL4:J = 0x927c0L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL5:J = 0x1b7740L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL6:J = 0x36ee80L

.field public static final FINGERPRINT_LOCKSCREEN_OFF:I = 0x0

.field public static final FINGERPRINT_LOCKSCREEN_ON:I = 0x1

.field public static final FINGERPRINT_LOCKSCREEN_OPTIONAL:I = 0x2

.field public static final FLAG_ENTERPRISEID_SELECTED:Ljava/lang/String; = "lockscreen.enterpriseidentity_selected"

.field public static final FMM_LOCK:I = 0x0

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKOUT_RECOVERY_KEY:Ljava/lang/String; = "lockscreen.lockedoutRecovery"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATH_PERMANENT_MEM_LOCK_FOLDER:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PRIVATE_MODE_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.privatemode_fingerprint"

.field private static final SECURE_DEBUG:Z

.field public static final SKTLOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final SKT_CARRIERLOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field public static final SKT_CARRIER_LOCK:I = 0x1

.field public static final SKT_FAILED_ATTEMPT_TIMEOUT_MS:J = 0x927c0L

.field public static final SMARTCARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.smartcard_type"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field public static final UNIVERSAL_LOCK_ENABLED:Ljava/lang/String; = "isUniversalLock"

.field private static cacPasswordSetProgress:Z = false

.field private static failedUnlockAttemptNumber:J = 0x0L

.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static lockChecksum:Ljava/lang/String; = null

.field private static lockChecksumUnlock:Ljava/lang/String; = null

.field private static lockMsg:Ljava/lang/String; = null

.field private static lockMsgUnlock:Ljava/lang/String; = null

.field private static lockPassword:Ljava/lang/String; = null

.field private static lockPasswordUnlock:Ljava/lang/String; = null

.field private static lockSaveMsg:Ljava/lang/String; = null

.field private static lockSaveMsgUnlock:Ljava/lang/String; = null

.field private static lockType:Ljava/lang/String; = null

.field private static lockTypeUnlock:Ljava/lang/String; = null

.field private static mIsCallbackCalled:Z = false

.field private static final mSCafeName:Ljava/lang/String;

.field private static mScVerifyStatus:I = 0x0

.field private static mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager; = null

.field private static final mSmsPortAddressedMessage:Z = false

.field private static mSwipeSmartLock:Z = false

.field private static volatile sCurrentUserId:I = 0x0

.field private static final secretKey:Ljava/lang/String; = "SKT : Find lost phone plus !!!"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_8
    sput-boolean v0, SECURE_DEBUG:Z

    .line 244
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "i_love_office_tg"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 249
    const-string v0, ""

    sput-object v0, lockMsg:Ljava/lang/String;

    .line 250
    const-string v0, ""

    sput-object v0, lockSaveMsg:Ljava/lang/String;

    .line 254
    const-string v0, ""

    sput-object v0, lockMsgUnlock:Ljava/lang/String;

    .line 255
    const-string v0, ""

    sput-object v0, lockSaveMsgUnlock:Ljava/lang/String;

    .line 257
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mSCafeName:Ljava/lang/String;

    .line 261
    sput v1, mScVerifyStatus:I

    .line 262
    const/4 v0, 0x0

    sput-object v0, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 263
    sput-boolean v1, cacPasswordSetProgress:Z

    .line 297
    sput-boolean v1, mSwipeSmartLock:Z

    .line 299
    const/16 v0, -0x2710

    sput v0, sCurrentUserId:I

    .line 300
    const-wide/16 v0, 0x0

    sput-wide v0, failedUnlockAttemptNumber:J

    return-void

    :cond_42
    move v0, v1

    .line 122
    goto :goto_8
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 355
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, mMultiUserMode:Z

    .line 357
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v2, failedUnlockAttemptNumber:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, failedUnlockAttemptNumber:J

    .line 359
    return-void

    .line 355
    :cond_27
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 118
    sput p0, mScVerifyStatus:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 118
    sput-boolean p0, mIsCallbackCalled:Z

    return p0
.end method

.method private static categoryChar(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1080
    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x0

    .line 1083
    :goto_9
    return v0

    .line 1081
    :cond_a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_14

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    .line 1082
    :cond_14
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1e

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1e

    const/4 v0, 0x2

    goto :goto_9

    .line 1083
    :cond_1e
    const/4 v0, 0x3

    goto :goto_9
.end method

.method private clearLockExceptPwd()V
    .registers 2

    .prologue
    .line 798
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, clearLockExceptPwd(I)V

    .line 799
    return-void
.end method

.method private clearLockExceptPwd(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateCACAuthentication(I)V

    .line 808
    return-void
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 7
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 1042
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1043
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 1044
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1045
    const/4 v0, 0x1

    .line 1043
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1047
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 1051
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 1052
    const/high16 v4, 0x50000

    .line 1062
    :goto_1f
    return v4

    .line 1054
    :cond_20
    if-eqz v1, :cond_25

    .line 1055
    const/high16 v4, 0x40000

    goto :goto_1f

    .line 1057
    :cond_25
    if-eqz v0, :cond_34

    .line 1058
    invoke-static {p0}, maxLengthSequence(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_31

    const/high16 v4, 0x20000

    goto :goto_1f

    :cond_31
    const/high16 v4, 0x30000

    goto :goto_1f

    .line 1062
    :cond_34
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1973
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .registers 9
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1848
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_b

    move-result p2

    .line 1853
    .end local p2    # "defaultValue":Z
    :goto_8
    return p2

    .line 1849
    .restart local p2    # "defaultValue":Z
    :catch_9
    move-exception v1

    .line 1850
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_8

    .line 1851
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 1852
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read boolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private getCurrentOrCallingUserId()I
    .registers 2

    .prologue
    .line 582
    iget-boolean v0, p0, mMultiUserMode:Z

    if-eqz v0, :cond_9

    .line 585
    invoke-virtual {p0}, getCurrentUser()I

    move-result v0

    .line 587
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_8
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2736
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2737
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2738
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2739
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 3

    .prologue
    .line 362
    iget-object v1, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_10

    .line 363
    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 365
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 367
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_10
    iget-object v1, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .registers 11
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1872
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_b

    move-result-wide p2

    .line 1877
    .end local p2    # "defaultValue":J
    :goto_8
    return-wide p2

    .line 1873
    .restart local p2    # "defaultValue":J
    :catch_9
    move-exception v1

    .line 1874
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_8

    .line 1875
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_b
    move-exception v0

    .line 1876
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static getProfiles(I)Ljava/util/List;
    .registers 12
    .param p0, "userId"    # I
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
    .line 2082
    const/4 v3, 0x0

    .line 2084
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_1
    const-string/jumbo v9, "user"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v7

    .line 2086
    .local v7, "um":Landroid/os/IUserManager;
    if-eqz v7, :cond_38

    .line 2087
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_66

    .line 2090
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_13
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 2091
    .local v8, "versionInfo":Landroid/os/Bundle;
    if-eqz v8, :cond_60

    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 2092
    invoke-interface {v7, p0}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 2093
    .local v6, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_39

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 2097
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    move-object v3, v4

    .line 2120
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_38
    :goto_38
    return-object v3

    .line 2102
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_39
    const/4 v9, 0x0

    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v5

    .line 2103
    .local v5, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2104
    .local v2, "pi":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-nez v9, :cond_42

    .line 2105
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_59} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_59} :catch_6b

    goto :goto_42

    .line 2115
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_5a
    move-exception v0

    move-object v3, v4

    .line 2116
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "um":Landroid/os/IUserManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_5c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_38

    .line 2112
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_60
    const/4 v9, 0x0

    :try_start_61
    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_6b

    move-result-object v3

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_38

    .line 2117
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_66
    move-exception v0

    .line 2118
    .local v0, "e":Ljava/lang/Exception;
    :goto_67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 2117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "um":Landroid/os/IUserManager;
    :catch_6b
    move-exception v0

    move-object v3, v4

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_67

    .line 2115
    .end local v7    # "um":Landroid/os/IUserManager;
    :catch_6e
    move-exception v0

    goto :goto_5c
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 383
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1449
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 1450
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_33

    .line 1452
    :try_start_c
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 1453
    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, setLong(Ljava/lang/String;JI)V

    .line 1454
    const-string v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_33} :catch_38

    .line 1460
    :cond_33
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1455
    :catch_38
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 5

    .prologue
    .line 3111
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3112
    .local v0, "tContext":Landroid/content/Context;
    :goto_e
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3116
    sget-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 3111
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_24
    iget-object v0, p0, mContext:Landroid/content/Context;

    goto :goto_e
.end method

.method private getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 5

    .prologue
    .line 3136
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3138
    .local v0, "tContext":Landroid/content/Context;
    :goto_e
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3140
    sget-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 3136
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_24
    iget-object v0, p0, mContext:Landroid/content/Context;

    goto :goto_e
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1896
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_d

    move-result-object v2

    .line 1901
    :goto_a
    return-object v2

    .line 1897
    :catch_b
    move-exception v1

    .line 1898
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_a

    .line 1899
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 1900
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .registers 6

    .prologue
    .line 333
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 334
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_1b

    .line 335
    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get TrustManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    :cond_1b
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1318
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1321
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_c
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    if-eq v3, v2, :cond_19

    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1b

    move-result v3

    if-eq v3, v2, :cond_19

    .line 1326
    :goto_18
    return v2

    .line 1321
    :cond_19
    const/4 v2, 0x0

    goto :goto_18

    .line 1323
    :catch_1b
    move-exception v1

    .line 1324
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public static isDeviceEncryptionEnabled()Z
    .registers 3

    .prologue
    .line 1336
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .registers 2

    .prologue
    .line 2056
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isFollowLegacyTimeoutPolicy()Z
    .registers 3

    .prologue
    .line 342
    const-string/jumbo v0, "mocha"

    sget-object v1, mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "americano"

    sget-object v1, mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 343
    :cond_15
    const/4 v0, 0x1

    .line 345
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isKnoxUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_1a

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_1a

    .line 430
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 431
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_1a

    .line 432
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    .line 434
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_1a
    return v1
.end method

.method private isLockPasswordEnabled(II)Z
    .registers 13
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1552
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p2}, getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1553
    .local v2, "backupMode":J
    const/high16 v6, 0x40000

    if-eq p1, v6, :cond_24

    const/high16 v6, 0x20000

    if-eq p1, v6, :cond_24

    const/high16 v6, 0x30000

    if-eq p1, v6, :cond_24

    const/high16 v6, 0x50000

    if-eq p1, v6, :cond_24

    const/high16 v6, 0x60000

    if-eq p1, v6, :cond_24

    const/high16 v6, 0x70000

    if-ne p1, v6, :cond_5a

    :cond_24
    move v1, v5

    .line 1559
    .local v1, "passwordEnabled":Z
    :goto_25
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_48

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_48

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_48

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_48

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_5c

    :cond_48
    move v0, v5

    .line 1564
    .local v0, "backupEnabled":Z
    :goto_49
    invoke-direct {p0, p2}, savedPasswordExists(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    if-nez v1, :cond_59

    invoke-virtual {p0, p2}, usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    if-eqz v0, :cond_5e

    :cond_59
    :goto_59
    return v5

    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_5a
    move v1, v4

    .line 1553
    goto :goto_25

    .restart local v1    # "passwordEnabled":Z
    :cond_5c
    move v0, v4

    .line 1559
    goto :goto_49

    .restart local v0    # "backupEnabled":Z
    :cond_5e
    move v5, v4

    .line 1564
    goto :goto_59
.end method

.method private isLockPatternEnabled(II)Z
    .registers 4
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1611
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p2}, savedPatternExists(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isLockUniversalEnabled(II)Z
    .registers 4
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1074
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, p2}, savedPatternExists(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static maxDiffCategory(I)I
    .registers 2
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    .line 1087
    if-eqz p0, :cond_5

    if-ne p0, v0, :cond_6

    .line 1089
    :cond_5
    :goto_5
    return v0

    .line 1088
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const/16 v0, 0xa

    goto :goto_5

    .line 1089
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .registers 13
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_8

    .line 1137
    :goto_7
    return v7

    .line 1110
    :cond_8
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1111
    .local v8, "previousChar":C
    invoke-static {v8}, categoryChar(C)I

    move-result v0

    .line 1112
    .local v0, "category":I
    const/4 v5, 0x0

    .line 1113
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 1114
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 1115
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 1116
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4d

    .line 1117
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1118
    .local v3, "currentChar":C
    invoke-static {v3}, categoryChar(C)I

    move-result v1

    .line 1119
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 1120
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_31

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_3e

    .line 1121
    :cond_31
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1122
    move v9, v2

    .line 1123
    const/4 v6, 0x0

    .line 1124
    move v0, v1

    .line 1134
    :goto_3a
    move v8, v3

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1127
    :cond_3e
    if-eqz v6, :cond_4a

    if-eq v4, v5, :cond_4a

    .line 1128
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1129
    add-int/lit8 v9, v2, -0x1

    .line 1131
    :cond_4a
    move v5, v4

    .line 1132
    const/4 v6, 0x1

    goto :goto_3a

    .line 1136
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1137
    goto :goto_7
.end method

.method private onAfterChangingPassword(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 2034
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2035
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1408
    if-nez p0, :cond_5

    .line 1409
    const-string v4, ""

    .line 1418
    :goto_4
    return-object v4

    .line 1411
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1413
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1414
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1415
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_1c

    .line 1416
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1418
    :cond_1c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 1430
    const/4 v1, 0x0

    .line 1444
    :goto_3
    return-object v1

    .line 1433
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1434
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1435
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 1436
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1437
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1435
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1440
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1441
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 1442
    .local v1, "hash":[B
    goto :goto_3

    .line 1443
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1444
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1394
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 1395
    const-string v4, ""

    .line 1404
    :goto_4
    return-object v4

    .line 1397
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1399
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1400
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_27

    .line 1401
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1402
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1400
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1404
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_27
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3017
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3018
    return-void
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3022
    :try_start_0
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 3023
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_42

    .line 3024
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3025
    invoke-static {p1}, computePasswordQuality(Ljava/lang/String;)I

    move-result v10

    .line 3026
    .local v10, "computedQuality":I
    if-eqz v10, :cond_18

    .line 3027
    invoke-virtual {p0, p1, p3}, setContainerPasswordState(Ljava/lang/String;I)V

    .line 3040
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :goto_17
    return-void

    .line 3030
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "computedQuality":I
    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_17

    .line 3037
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :catch_28
    move-exception v11

    .line 3038
    .local v11, "re":Ljava/lang/Exception;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save Fingerprint lock password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 3034
    .end local v11    # "re":Ljava/lang/Exception;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_42
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_4a
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_28

    goto :goto_17
.end method

.method private savedPasswordExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 706
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 708
    :goto_8
    return v1

    .line 707
    :catch_9
    move-exception v0

    .line 708
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private savedPasswordExistsNoCache()Z
    .registers 5

    .prologue
    .line 1590
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 1592
    .local v1, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v1, :cond_1d

    .line 1594
    :try_start_c
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    move-result v2

    .line 1599
    :goto_14
    return v2

    .line 1595
    :catch_15
    move-exception v0

    .line 1596
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Unable to reach LockSettingsService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1867
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, setBoolean(Ljava/lang/String;ZI)V

    .line 1868
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1859
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1864
    :goto_7
    return-void

    .line 1860
    :catch_8
    move-exception v0

    .line 1862
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1882
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, setLong(Ljava/lang/String;JI)V

    .line 1883
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1887
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1892
    :goto_7
    return-void

    .line 1888
    :catch_8
    move-exception v0

    .line 1890
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1907
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1912
    :goto_7
    return-void

    .line 1908
    :catch_8
    move-exception v0

    .line 1910
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private shouldEncryptWithCredentials(Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z

    .prologue
    .line 2060
    invoke-virtual {p0, p1}, isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, isDoNotAskCredentialsOnBootSet()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    if-nez p0, :cond_4

    .line 1375
    const/4 v3, 0x0

    .line 1385
    :cond_3
    return-object v3

    .line 1378
    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1380
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1381
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 1382
    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x31

    int-to-byte v0, v4

    .line 1383
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1381
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .prologue
    .line 1524
    const-string v0, "0123456789ABCDEF"

    .line 1525
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1526
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1530
    :cond_43
    return-object v2
.end method

.method private updateCACAuthentication()V
    .registers 4

    .prologue
    .line 3256
    invoke-virtual {p0}, isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    sget-boolean v1, cacPasswordSetProgress:Z

    if-nez v1, :cond_25

    .line 3257
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3259
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3260
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    const/4 v1, 0x0

    sput-boolean v1, cacPasswordSetProgress:Z

    .line 3263
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_25
    return-void
.end method

.method private updateCACAuthentication(I)V
    .registers 8
    .param p1, "quality"    # I

    .prologue
    const/high16 v5, 0x70000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3283
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCACAuthentication "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    invoke-direct {p0}, updateCACAuthentication()V

    .line 3285
    invoke-direct {p0, p1}, update_lockscreen_type(I)V

    .line 3286
    if-ne p1, v5, :cond_45

    move v0, v1

    :goto_26
    invoke-virtual {p0, v0}, setCACPasswordEnabled(Z)Z

    .line 3287
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCACPasswordEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_47

    :goto_39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    return-void

    :cond_45
    move v0, v2

    .line 3286
    goto :goto_26

    :cond_47
    move v1, v2

    .line 3287
    goto :goto_39
.end method

.method private updateCryptoUserInfo(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 997
    if-eqz p1, :cond_3

    .line 1016
    :goto_2
    return-void

    .line 1001
    :cond_3
    invoke-virtual {p0, p1}, isOwnerInfoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p0, p1}, getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_d
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1004
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_21

    .line 1005
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1001
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1e
    const-string v2, ""

    goto :goto_d

    .line 1009
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_21
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1011
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_25
    const-string v4, "LockPatternUtils"

    const-string v5, "Setting owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    goto :goto_2

    .line 1013
    :catch_32
    move-exception v0

    .line 1014
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing user info"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1163
    :goto_6
    return-void

    .line 1145
    :cond_7
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1146
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_18

    .line 1147
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1151
    :cond_18
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method

.method private updateEnterpriseIdentityLock(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 509
    :try_start_0
    iget-object v3, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen.enterpriseidentity_selected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 511
    .local v1, "eIdChoosenByUser":I
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnterpriseIdentityLock: eIdChoosenByUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Enterprise ID status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, isEnterpriseIdentityLockSet(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, "isEidLockNeedToSet":Z
    if-lez v1, :cond_43

    .line 516
    const/4 v2, 0x1

    .line 518
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, setEnterpriseIdentitySelected(ZI)Z

    .line 521
    :cond_43
    invoke-virtual {p0, p1}, isEnterpriseIdentityLockSet(I)Z

    move-result v3

    if-eq v3, v2, :cond_4c

    .line 522
    invoke-virtual {p0, v2, p1}, setEnterpriseIdentityLock(ZI)Z

    .line 524
    :cond_4c
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnterpriseIdentityLock: EidState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, isEnterpriseIdentityLockSet(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    .line 528
    .end local v1    # "eIdChoosenByUser":I
    .end local v2    # "isEidLockNeedToSet":Z
    :goto_69
    return-void

    .line 525
    :catch_6a
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method

.method private update_lockscreen_type(I)V
    .registers 6
    .param p1, "quality"    # I

    .prologue
    .line 3270
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_LOCKTYPE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3272
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x70000

    if-ne p1, v1, :cond_38

    .line 3273
    const-string v1, "Type"

    const-string v2, "Smartcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3277
    :goto_16
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3278
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCACAuthentication: send broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    const/4 v1, 0x0

    sput-boolean v1, cacPasswordSetProgress:Z

    .line 3280
    return-void

    .line 3275
    :cond_38
    const-string v1, "Type"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16
.end method


# virtual methods
.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2567
    :try_start_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_e

    .line 2568
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v1

    .line 2578
    :cond_d
    :goto_d
    return v1

    .line 2569
    :cond_e
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_1b

    .line 2570
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_d

    .line 2571
    :cond_1b
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_28

    .line 2572
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_d

    .line 2573
    :cond_28
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v2, :cond_d

    .line 2574
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_33} :catch_35

    move-result v1

    goto :goto_d

    .line 2577
    :catch_35
    move-exception v0

    .line 2578
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public checkBackupPassword(Ljava/lang/String;IZ)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3333
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 3335
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_10

    .line 3344
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_f
    return v2

    .line 3337
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v2, :cond_22

    .line 3338
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3

    .line 3343
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_20
    move-exception v0

    .line 3344
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_f

    .line 3340
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_22
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBackupPassword resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3e} :catch_20

    .line 3341
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public checkBackupPin(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2279
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2281
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_10

    .line 2290
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_f
    return v2

    .line 2283
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v2, :cond_22

    .line 2284
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3

    .line 2289
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_20
    move-exception v0

    .line 2290
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_f

    .line 2286
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_22
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBackupPin resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3e} :catch_20

    .line 2287
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3044
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, checkFingerprintPassword(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;IZ)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3049
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 3051
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBackupPassword resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2c

    .line 3059
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_2b
    return v2

    .line 3055
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2c
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBackupPassword resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_48} :catch_4a

    .line 3056
    const/4 v2, 0x0

    goto :goto_2b

    .line 3058
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_4a
    move-exception v0

    .line 3059
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_2b
.end method

.method public checkParentControlPassword(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2627
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    .line 2635
    .local v2, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 2640
    .local v0, "length":I
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    move-result v3

    .line 2645
    .end local v0    # "length":I
    :goto_18
    return v3

    .line 2644
    :catch_19
    move-exception v1

    .line 2645
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v3, 0x1

    goto :goto_18
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 626
    :try_start_2
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 628
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_11

    .line 643
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_10
    :goto_10
    return v2

    .line 630
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_2d

    .line 631
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v4
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_21

    .line 636
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_21
    move-exception v0

    .line 638
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, isKnoxUser(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 639
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 640
    goto :goto_10

    .line 633
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2d
    :try_start_2d
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPassword resCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_49} :catch_21

    move v2, v3

    .line 634
    goto :goto_10
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 668
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 670
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6, p2}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 685
    :cond_14
    :goto_14
    return v5

    .line 675
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 676
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, getRequestedPasswordHistoryLength(I)I

    move-result v4

    .line 677
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_14

    .line 680
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 682
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2e

    .line 683
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 685
    :cond_2e
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_14
.end method

.method public checkPasswordWithCAC(Ljava/lang/String;)I
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3156
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    const/4 v2, 0x0

    sput-boolean v2, mIsCallbackCalled:Z

    .line 3158
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 3161
    .local v0, "cv":Landroid/os/ConditionVariable;
    :try_start_f
    invoke-direct {p0}, getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$2;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/ConditionVariable;)V

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils$2;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    invoke-virtual {v2, v3, v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_45

    .line 3184
    sget-boolean v2, mIsCallbackCalled:Z

    if-nez v2, :cond_28

    .line 3185
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 3189
    :cond_28
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    sget v2, mScVerifyStatus:I

    :goto_44
    return v2

    .line 3176
    :catch_45
    move-exception v1

    .line 3177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3178
    const/4 v2, 0x5

    goto :goto_44
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 478
    :try_start_2
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 481
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_15

    .line 495
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_14
    :goto_14
    return v2

    .line 483
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_31

    .line 484
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v4
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_25} :catch_25

    .line 488
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_25
    move-exception v0

    .line 490
    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, isKnoxUser(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 491
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 492
    goto :goto_14

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_31
    move v2, v3

    .line 486
    goto :goto_14
.end method

.method public checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2530
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2532
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2534
    :goto_c
    return v2

    .line 2533
    :catch_d
    move-exception v0

    .line 2534
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockBackupPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2501
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2503
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2505
    :goto_c
    return v2

    .line 2504
    :catch_d
    move-exception v0

    .line 2505
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2444
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2446
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2448
    :goto_c
    return v2

    .line 2447
    :catch_d
    move-exception v0

    .line 2448
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2415
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2417
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2419
    :goto_c
    return v2

    .line 2418
    :catch_d
    move-exception v0

    .line 2419
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModePattern(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2471
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2473
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 2475
    :goto_10
    return v2

    .line 2474
    :catch_11
    move-exception v0

    .line 2475
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v1, 0x1

    .line 2373
    :try_start_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_e

    .line 2374
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v1

    .line 2383
    :cond_d
    :goto_d
    return v1

    .line 2375
    :cond_e
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_1b

    .line 2376
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_d

    .line 2377
    :cond_1b
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_2c

    .line 2378
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p2}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_d

    .line 2379
    :cond_2c
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v2, :cond_d

    .line 2380
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_37} :catch_39

    move-result v1

    goto :goto_d

    .line 2382
    :catch_39
    move-exception v0

    .line 2383
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public checkRemoteLockPassword(ILjava/lang/String;I)Z
    .registers 12
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    .line 2828
    if-nez p1, :cond_1f

    .line 2829
    :try_start_3
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 2830
    .local v3, "sha1":[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2832
    .local v0, "base64":Ljava/lang/String;
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    invoke-interface {v5, v0, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 2841
    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "sha1":[B
    :cond_1e
    :goto_1e
    return v4

    .line 2833
    :cond_1f
    if-ne p1, v4, :cond_1e

    .line 2834
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_28} :catch_4e

    move-result v4

    goto :goto_1e

    .line 2836
    :catch_2a
    move-exception v2

    .line 2837
    .local v2, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Password "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 2839
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_4e
    move-exception v1

    .line 2840
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method public checkVoldPassword(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 654
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 656
    :goto_8
    return v1

    .line 655
    :catch_9
    move-exception v0

    .line 656
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public clearEncryptionPassword()V
    .registers 3

    .prologue
    .line 1344
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, updateEncryptionPassword(ILjava/lang/String;)V

    .line 1345
    return-void
.end method

.method public clearLock(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 761
    const-string v0, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0, v1, p1}, setFingerPrintLockscreen(ZI)V

    .line 763
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, setLong(Ljava/lang/String;JI)V

    .line 766
    :try_start_25
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 767
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 768
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    .line 769
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_49} :catch_79

    .line 774
    :goto_49
    if-nez p1, :cond_63

    .line 776
    invoke-direct {p0, v5, v4}, updateEncryptionPassword(ILjava/lang/String;)V

    .line 779
    if-nez p1, :cond_63

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 780
    new-instance v10, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 781
    .local v10, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v10, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 782
    invoke-virtual {v10, v4}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 787
    .end local v10    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_63
    invoke-virtual {p0, v1}, setCredentialRequiredToDecrypt(Z)V

    .line 789
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 792
    invoke-direct {p0, p1}, onAfterChangingPassword(I)V

    .line 793
    return-void

    .line 770
    :catch_79
    move-exception v0

    goto :goto_49
.end method

.method public clearLockUniversal(Z)V
    .registers 6
    .param p1, "isFallback"    # Z

    .prologue
    .line 816
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, setLong(Ljava/lang/String;JI)V

    .line 820
    :try_start_b
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_1c

    .line 824
    :goto_18
    invoke-direct {p0}, clearLockExceptPwd()V

    .line 825
    return-void

    .line 821
    :catch_1c
    move-exception v0

    goto :goto_18
.end method

.method public clearLockoutAttemptDeadline()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1819
    sput-wide v2, failedUnlockAttemptNumber:J

    .line 1820
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1821
    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-virtual {p0}, getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, setLong(Ljava/lang/String;JI)V

    .line 1822
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0}, getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, setLong(Ljava/lang/String;JI)V

    .line 1823
    return-void
.end method

.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 2743
    const/4 v3, 0x0

    .line 2746
    .local v3, "output":Ljava/lang/String;
    :try_start_1
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2747
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    sget-object v7, ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2748
    const/4 v5, 0x0

    invoke-static {p2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2749
    .local v0, "buff":[B
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_21} :catch_23
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_21} :catch_42
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_21} :catch_61
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_21} :catch_80
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_9f

    .end local v3    # "output":Ljava/lang/String;
    .local v4, "output":Ljava/lang/String;
    move-object v3, v4

    .line 2762
    .end local v0    # "buff":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "output":Ljava/lang/String;
    .restart local v3    # "output":Ljava/lang/String;
    :goto_22
    return-object v3

    .line 2750
    :catch_23
    move-exception v2

    .line 2751
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2752
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_42
    move-exception v2

    .line 2753
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2754
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_61
    move-exception v2

    .line 2755
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2756
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_80
    move-exception v2

    .line 2757
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2758
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_9f
    move-exception v2

    .line 2759
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22
.end method

.method public deinitializeCACAuthentication()V
    .registers 4

    .prologue
    .line 3151
    const-string v0, "LockPatternUtils"

    const-string v1, "deinitializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->deinitializeCAC(Landroid/os/UserHandle;)V

    .line 3153
    return-void
.end method

.method public getActivePasswordQuality(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 727
    invoke-virtual {p0, p1}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 729
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, isLockPasswordEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 754
    .end local v0    # "quality":I
    :cond_a
    :goto_a
    return v0

    .line 734
    .restart local v0    # "quality":I
    :cond_b
    invoke-direct {p0, v0, p1}, isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_a

    .line 739
    invoke-direct {p0, v0, p1}, isLockUniversalEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 741
    const/16 v0, 0x1000

    goto :goto_a

    .line 744
    :cond_1a
    invoke-virtual {p0, v0, p1}, isSmartUnlockEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 746
    const v0, 0x9100

    goto :goto_a

    .line 749
    :cond_24
    invoke-virtual {p0, v0, p1}, isFingerPrintLockscreen(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 751
    const v0, 0x61000

    goto :goto_a

    .line 754
    :cond_2e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCarrierLockoutAttemptDeadline(I)J
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 2773
    const-string/jumbo v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 2774
    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2775
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_12

    move-wide v0, v4

    .line 2778
    .end local v0    # "deadline":J
    :cond_12
    return-wide v0
.end method

.method public getCurrentUser()I
    .registers 4

    .prologue
    .line 570
    sget v1, sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_9

    .line 572
    sget v1, sCurrentUserId:I

    .line 577
    :goto_8
    return v1

    .line 575
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 576
    :catch_14
    move-exception v0

    .line 577
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 321
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 322
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 324
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 325
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :cond_22
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1990
    const-string v7, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v7, p1}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1991
    .local v5, "serialized":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1992
    const/4 v0, 0x0

    .line 2001
    :cond_d
    return-object v0

    .line 1994
    :cond_e
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1995
    .local v6, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1996
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v3, :cond_d

    aget-object v4, v1, v2

    .line 1997
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1998
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method

.method public getFingerPrintLockscreenState(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2916
    const-string v0, "lockscreen.enabled_fingerprint"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 2

    .prologue
    .line 1354
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1364
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 1799
    const-string v8, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v8, v6, v7, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 1800
    .local v0, "deadline":J
    const-string v8, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v8, v6, v7, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 1801
    .local v4, "timeoutMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1802
    .local v2, "now":J
    cmp-long v8, v0, v2

    if-gez v8, :cond_25

    cmp-long v8, v0, v6

    if-eqz v8, :cond_25

    .line 1804
    const-string v8, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v8, v6, v7, p1}, setLong(Ljava/lang/String;JI)V

    .line 1805
    const-string v8, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v8, v6, v7, p1}, setLong(Ljava/lang/String;JI)V

    move-wide v0, v6

    .line 1815
    .end local v0    # "deadline":J
    :cond_25
    return-wide v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1029
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordRecoverable(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 3096
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1919
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1929
    const/4 v8, 0x0

    .line 1930
    .local v8, "recoveryPassword":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v5

    const-string/jumbo v3, "set_date IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1935
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 1937
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2b

    .line 1938
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1939
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_56
    .catchall {:try_start_1d .. :try_end_2a} :catchall_5e

    move-result-object v8

    .line 1944
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1949
    :cond_2e
    :goto_2e
    if-nez v8, :cond_55

    .line 1950
    invoke-direct {p0}, generateRecoveryPassword()Ljava/lang/String;

    move-result-object v8

    .line 1954
    invoke-virtual {p0}, removeRecoveryPasswords()V

    .line 1957
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1958
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    const-string/jumbo v0, "set_date"

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1960
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1963
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_55
    return-object v8

    .line 1941
    :catch_56
    move-exception v7

    .line 1942
    .local v7, "e":Ljava/lang/Exception;
    :try_start_57
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5e

    .line 1944
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getRecoveryScreenLocked()Z
    .registers 4

    .prologue
    .line 2349
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    .line 2350
    .local v0, "userId":I
    const-string v1, "lockscreen.lockedoutRecovery"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 387
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 395
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 407
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 399
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 391
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public initializeCACAuthentication()V
    .registers 3

    .prologue
    .line 3129
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    invoke-virtual {p0}, isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3131
    invoke-direct {p0}, getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3133
    :cond_10
    return-void
.end method

.method public initializeCACAuthentication_Sync()V
    .registers 3

    .prologue
    .line 3144
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    invoke-virtual {p0}, isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3146
    invoke-direct {p0}, getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 3148
    :cond_10
    return-void
.end method

.method public isAppLockFingerPrintLockscreen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2604
    const-string v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 866
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 868
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_16

    .line 874
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 891
    :cond_15
    :goto_15
    return v3

    .line 869
    :catch_16
    move-exception v0

    .line 870
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_15

    .line 877
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 882
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 884
    .local v2, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_15

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v3

    goto :goto_15
.end method

.method public isCACCardRegistered()Z
    .registers 5

    .prologue
    .line 3206
    const/4 v0, 0x0

    .line 3208
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_20

    move-result v0

    .line 3212
    :goto_7
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    return v0

    .line 3209
    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public isCACPasswordEnabled()Z
    .registers 4

    .prologue
    .line 3120
    const-string v0, "lockscreen.smartcard_type"

    const/4 v1, 0x0

    invoke-virtual {p0}, getCurrentUser()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled()Z
    .registers 3

    .prologue
    .line 2690
    const/4 v0, 0x0

    .line 2704
    .local v0, "mCarrierlockMode":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLockPlusEnabled()Z
    .registers 2

    .prologue
    .line 2715
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockPlusEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2720
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2722
    :goto_8
    return v1

    .line 2721
    :catch_9
    move-exception v0

    .line 2722
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isCarrierPasswordSaved()Z
    .registers 4

    .prologue
    .line 2853
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 2855
    :goto_c
    return v1

    .line 2854
    :catch_d
    move-exception v0

    .line 2855
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .registers 6
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2038
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2040
    .local v0, "value":I
    if-ne v0, v3, :cond_d

    .end local p1    # "defaultValue":Z
    :goto_c
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_d
    if-eqz v0, :cond_11

    const/4 p1, 0x1

    goto :goto_c

    :cond_11
    const/4 p1, 0x0

    goto :goto_c
.end method

.method public isDeviceConnectedWithCACCard()Z
    .registers 5

    .prologue
    .line 3217
    invoke-direct {p0}, getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isDeviceConnectedWithCard()Z

    move-result v0

    .line 3218
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACCardRegistred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1924
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "is_smpw_key"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public isEnterpriseIdentityLockSet()Z
    .registers 2

    .prologue
    .line 534
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, isEnterpriseIdentityLockSet(I)Z

    move-result v0

    return v0
.end method

.method public isEnterpriseIdentityLockSet(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 555
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEnterpriseIdSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v2, v3, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, v3, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled()Z
    .registers 2

    .prologue
    .line 2672
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled(I)Z
    .registers 4
    .param p1, "userid"    # I

    .prologue
    .line 2677
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2679
    :goto_8
    return v1

    .line 2678
    :catch_9
    move-exception v0

    .line 2679
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isFingerPrintLockscreen(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 2911
    const-string v0, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v0, v2, v3, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFingerPrintLockscreen(II)Z
    .registers 7
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2920
    const v3, 0x61000

    if-ne p1, v3, :cond_11

    move v0, v1

    .line 2921
    .local v0, "isFingerPrintEnabled":Z
    :goto_8
    if-eqz v0, :cond_13

    invoke-virtual {p0, p2}, isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_10
    return v1

    .end local v0    # "isFingerPrintEnabled":Z
    :cond_11
    move v0, v2

    .line 2920
    goto :goto_8

    .restart local v0    # "isFingerPrintEnabled":Z
    :cond_13
    move v1, v2

    .line 2921
    goto :goto_10
.end method

.method public isLockFingerprintEnabled(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v4, 0x61000

    const/4 v0, 0x0

    .line 3072
    const-string v1, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v1, v0, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public isLockPasswordEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, isLockPasswordEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabledNoCache(I)Z
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 1571
    const-string v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v4, v6

    .line 1572
    .local v4, "mode":J
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .line 1573
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3e

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3e

    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3e

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3e

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3e

    const-wide/32 v6, 0x70000

    cmp-long v6, v4, v6

    if-nez v6, :cond_75

    :cond_3e
    const/4 v1, 0x1

    .line 1579
    .local v1, "passwordEnabled":Z
    :goto_3f
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_62

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_62

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_62

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_62

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_77

    :cond_62
    const/4 v0, 0x1

    .line 1585
    .local v0, "backupEnabled":Z
    :goto_63
    invoke-direct {p0}, savedPasswordExistsNoCache()Z

    move-result v6

    if-eqz v6, :cond_79

    if-nez v1, :cond_73

    invoke-virtual {p0, p1}, usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_79

    if-eqz v0, :cond_79

    :cond_73
    const/4 v6, 0x1

    :goto_74
    return v6

    .line 1573
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_75
    const/4 v1, 0x0

    goto :goto_3f

    .line 1579
    .restart local v1    # "passwordEnabled":Z
    :cond_77
    const/4 v0, 0x0

    goto :goto_63

    .line 1585
    .restart local v0    # "backupEnabled":Z
    :cond_79
    const/4 v6, 0x0

    goto :goto_74
.end method

.method public isLockPatternEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1607
    invoke-virtual {p0, p1}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, isLockPatternEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 847
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {p0, p1}, isSecure(I)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "lockscreen.disabled"

    invoke-direct {p0, v2, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_1a
    if-eqz v0, :cond_25

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public isLockUniversalEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, isLockUniversalEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isOwnerInfoEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1033
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isParentControlLockEnabled()Z
    .registers 2

    .prologue
    .line 2667
    const/4 v0, 0x0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 719
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1831
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrevLockFingerprintEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3082
    const-string/jumbo v0, "prev_lock_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrivateModeFingerPrintLockscreen(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3091
    const-string v0, "lockscreen.privatemode_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1538
    invoke-virtual {p0, p1}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1539
    .local v0, "mode":I
    invoke-direct {p0, v0, p1}, isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-direct {p0, v0, p1}, isLockPasswordEnabled(II)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-direct {p0, v0, p1}, isLockUniversalEnabled(II)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0, p1}, isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0, p1}, isCarrierLockPlusEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0, p1}, isFingerPrintLockscreen(I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0, p1}, isSmartUnlockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2e
    const/4 v1, 0x1

    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public isSmartCardPasswordEnabled()Z
    .registers 8

    .prologue
    .line 3236
    const/4 v2, 0x0

    .line 3237
    .local v2, "ret":Z
    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, getCurrentUser()I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 3239
    .local v0, "mode":J
    const-wide/32 v4, 0x70000

    cmp-long v3, v0, v4

    if-nez v3, :cond_15

    const/4 v2, 0x1

    .line 3241
    :cond_15
    return v2
.end method

.method public isSmartUnlockEnabled()Z
    .registers 2

    .prologue
    .line 1705
    invoke-virtual {p0}, getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, isSmartUnlockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSmartUnlockEnabled(I)Z
    .registers 4
    .param p1, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1709
    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, p1}, usingSmartUnlock(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isSmartUnlockEnabled(II)Z
    .registers 5
    .param p1, "quality"    # I
    .param p2, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1713
    const v1, 0x9100

    if-eq p1, v1, :cond_a

    const/high16 v1, 0x90000

    if-ne p1, v1, :cond_19

    :cond_a
    invoke-virtual {p0, p2}, savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p2}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public isSmartcardAuthInstalled()Z
    .registers 5

    .prologue
    .line 3227
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 3228
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    return v0
.end method

.method public isSwipeSmartLock()Z
    .registers 2

    .prologue
    .line 2865
    sget-boolean v0, mSwipeSmartLock:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1749
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1639
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .line 1640
    .local v0, "passPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_12

    .line 1641
    invoke-virtual {v0}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x1

    .line 1643
    :cond_12
    return v1
.end method

.method public isVisiblePatternEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1634
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1495
    if-nez p1, :cond_4

    .line 1496
    const/4 v8, 0x0

    .line 1517
    :goto_3
    return-object v8

    .line 1505
    :cond_4
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p2}, getSalt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1506
    .local v6, "saltedPassword":[B
    const/4 v7, 0x0

    .line 1507
    .local v7, "sha":[B
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1508
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1509
    .local v4, "s":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    const/16 v8, 0x400

    if-ge v2, v8, :cond_56

    .line 1510
    if-eqz v7, :cond_32

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 1511
    :cond_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 1512
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 1513
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 1509
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1515
    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1516
    .local v0, "e":J
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "passwordToHash time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-static {v7}, toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_83
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_83} :catch_86

    move-result-object v8

    goto/16 :goto_3

    .line 1518
    .end local v0    # "e":J
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "s":J
    .end local v6    # "saltedPassword":[B
    .end local v7    # "sha":[B
    :catch_86
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Missing digest algorithm: "

    invoke-direct {v8, v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public passwordToHashOriginal(Ljava/lang/String;I)[B
    .registers 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1473
    if-nez p1, :cond_4

    .line 1474
    const/4 v6, 0x0

    .line 1487
    :goto_3
    return-object v6

    .line 1478
    :cond_4
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1479
    .local v4, "saltedPassword":[B
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1480
    .local v5, "sha1":[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1482
    .local v3, "md5":[B
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 1483
    .local v0, "combined":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1484
    const/4 v6, 0x0

    array-length v7, v5

    array-length v8, v3

    invoke-static {v3, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1486
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 1487
    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_50
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_50} :catch_52

    move-result-object v6

    goto :goto_3

    .line 1488
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_52
    move-exception v1

    .line 1489
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Missing digest algorithm: "

    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public recoverPassword(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 3101
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    .line 3102
    return-void
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 5
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2065
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2069
    return-void

    .line 2066
    :catch_a
    move-exception v0

    .line 2067
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeRecoveryPasswords()V
    .registers 5

    .prologue
    .line 1968
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "set_date IS NULL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1970
    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 411
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 412
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 413
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, requireStrongAuth(II)V

    .line 414
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 417
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 418
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 419
    sput-wide v2, failedUnlockAttemptNumber:J

    .line 420
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 421
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v2, v3, p1}, setLong(Ljava/lang/String;JI)V

    .line 422
    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v0, v2, v3, p1}, setLong(Ljava/lang/String;JI)V

    .line 423
    return-void
.end method

.method public requireCredentialEntry(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2012
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, requireStrongAuth(II)V

    .line 2013
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 7
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2027
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2031
    :goto_7
    return-void

    .line 2028
    :catch_8
    move-exception v0

    .line 2029
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while requesting strong auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public sanitizePassword()V
    .registers 5

    .prologue
    .line 990
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 994
    :goto_7
    return-void

    .line 991
    :catch_8
    move-exception v0

    .line 992
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t sanitize password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    .line 2551
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_c

    .line 2552
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    .line 2563
    :cond_b
    :goto_b
    return-void

    .line 2553
    :cond_c
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3c

    .line 2554
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_b

    .line 2560
    :catch_18
    move-exception v0

    .line 2561
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2555
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_3c
    :try_start_3c
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_48

    .line 2556
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_b

    .line 2557
    :cond_48
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_b

    .line 2558
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockBackupPin(Ljava/lang/String;I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_53} :catch_18

    goto :goto_b
.end method

.method public saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3316
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 3321
    :goto_8
    return-void

    .line 3317
    :catch_9
    move-exception v0

    .line 3319
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2322
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, saveLockBackupPin(Ljava/lang/String;II)V

    .line 2323
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;II)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2329
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 2334
    :goto_8
    return-void

    .line 2330
    :catch_9
    move-exception v0

    .line 2332
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public saveLockBackupPin(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 2339
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2344
    :goto_7
    return-void

    .line 2340
    :catch_8
    move-exception v0

    .line 2342
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public saveLockFingerprint(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 2925
    invoke-virtual {p0, v1, p1}, setLockFingerprintEnabled(ZI)V

    .line 2926
    invoke-virtual {p0, v1, p1}, setPrevLockFingerprintEnabled(ZI)V

    .line 2927
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x61000

    invoke-direct {p0, v1, v2, v3, p1}, setLong(Ljava/lang/String;JI)V

    .line 2929
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2930
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 2931
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2940
    invoke-direct {p0, p1, p2}, saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V

    .line 2941
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;IIZ)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "quality"    # I
    .param p4, "skipUpdateEncryptionPassword"    # Z

    .prologue
    .line 2944
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 2945
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 27
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "quality"    # I
    .param p5, "skipUpdateEncryptionPassword"    # Z

    .prologue
    .line 2949
    :try_start_0
    invoke-virtual/range {p0 .. p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 2950
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_11b

    .line 2951
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2952
    if-nez p3, :cond_48

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_48

    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_48

    .line 2955
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, updateEncryptionPassword(ILjava/lang/String;)V

    .line 2957
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 2958
    new-instance v15, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2959
    .local v15, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 2960
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 2961
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 2965
    .end local v15    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_48
    invoke-static/range {p1 .. p1}, computePasswordQuality(Ljava/lang/String;)I

    move-result v14

    .line 2966
    .local v14, "computedQuality":I
    const-string v5, "lockscreen.password_type_alternate"

    move/from16 v0, p4

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, setLong(Ljava/lang/String;J)V

    .line 2967
    if-eqz v14, :cond_98

    .line 2968
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, setContainerPasswordState(Ljava/lang/String;I)V

    .line 2979
    :goto_65
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v5

    if-nez v5, :cond_97

    .line 2984
    const-string v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2986
    .local v18, "passwordHistory":Ljava/lang/String;
    if-nez v18, :cond_7e

    .line 2987
    new-instance v18, Ljava/lang/String;

    .end local v18    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    .line 2989
    .restart local v18    # "passwordHistory":Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getRequestedPasswordHistoryLength(I)I

    move-result v19

    .line 2990
    .local v19, "passwordHistoryLength":I
    if-nez v19, :cond_c4

    .line 2991
    const-string v18, ""

    .line 3005
    :goto_8a
    const-string v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v6}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3014
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_97
    :goto_97
    return-void

    .line 2971
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "computedQuality":I
    :cond_98
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a7} :catch_a8

    goto :goto_65

    .line 3011
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    :catch_a8
    move-exception v20

    .line 3012
    .local v20, "re":Ljava/lang/Exception;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save Fingerprint lock password "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 2993
    .end local v20    # "re":Ljava/lang/Exception;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "computedQuality":I
    .restart local v18    # "passwordHistory":Ljava/lang/String;
    .restart local v19    # "passwordHistoryLength":I
    :cond_c4
    :try_start_c4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v16

    .line 2994
    .local v16, "hash":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 2995
    .local v17, "hashString":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_101

    .line 2996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3000
    :cond_101
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v6, v0

    mul-int v6, v6, v19

    add-int v6, v6, v19

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_8a

    .line 3008
    .end local v14    # "computedQuality":I
    .end local v16    # "hash":[B
    .end local v17    # "hashString":Ljava/lang/String;
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_11b
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_12a} :catch_a8

    goto/16 :goto_97
.end method

.method public saveLockParentControlPassword(Ljava/lang/String;I)V
    .registers 9
    .param p1, "spare"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2651
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    .line 2652
    .local v2, "userId":I
    invoke-virtual {p0, p1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2655
    .local v0, "hash":[B
    :try_start_8
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 2661
    :goto_13
    return-void

    .line 2657
    :catch_14
    move-exception v1

    .line 2659
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save lock parent control password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 46
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 1177
    :try_start_0
    invoke-virtual/range {p0 .. p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 1178
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_32

    .line 1179
    :cond_d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password must not be null and at least of length 4"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 1306
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_16
    move-exception v37

    .line 1308
    .local v37, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    .end local v37    # "re":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void

    .line 1183
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_32
    :try_start_32
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1184
    invoke-static/range {p1 .. p1}, computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 1187
    .local v24, "computedQuality":I
    if-nez p4, :cond_57

    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1189
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, shouldEncryptWithCredentials(Z)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 1190
    invoke-virtual/range {p0 .. p0}, clearEncryptionPassword()V

    .line 1201
    :cond_57
    :goto_57
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, updateCACAuthentication(I)V

    .line 1202
    const-string v5, "lockscreen.password_type"

    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v14, v15, v1}, setLong(Ljava/lang/String;JI)V

    .line 1203
    if-eqz v24, :cond_1f0

    .line 1204
    const/4 v7, 0x0

    .line 1205
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 1206
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 1207
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 1208
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 1209
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 1210
    .local v12, "nonletter":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_7a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_ed

    .line 1211
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1212
    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_c6

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_c6

    .line 1213
    add-int/lit8 v7, v7, 0x1

    .line 1214
    add-int/lit8 v8, v8, 0x1

    .line 1210
    :goto_9a
    add-int/lit8 v28, v28, 0x1

    goto :goto_7a

    .line 1192
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v23    # "c":C
    .end local v28    # "i":I
    :cond_9d
    const/high16 v5, 0x20000

    move/from16 v0, v24

    if-ne v0, v5, :cond_bd

    const/16 v33, 0x1

    .line 1194
    .local v33, "numeric":Z
    :goto_a5
    const/high16 v5, 0x30000

    move/from16 v0, v24

    if-ne v0, v5, :cond_c0

    const/16 v34, 0x1

    .line 1196
    .local v34, "numericComplex":Z
    :goto_ad
    if-nez v33, :cond_b1

    if-eqz v34, :cond_c3

    :cond_b1
    const/16 v39, 0x3

    .line 1198
    .local v39, "type":I
    :goto_b3
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_57

    .line 1192
    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .end local v39    # "type":I
    :cond_bd
    const/16 v33, 0x0

    goto :goto_a5

    .line 1194
    .restart local v33    # "numeric":Z
    :cond_c0
    const/16 v34, 0x0

    goto :goto_ad

    .line 1196
    .restart local v34    # "numericComplex":Z
    :cond_c3
    const/16 v39, 0x0

    goto :goto_b3

    .line 1215
    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v23    # "c":C
    .restart local v28    # "i":I
    :cond_c6
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_d7

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_d7

    .line 1216
    add-int/lit8 v7, v7, 0x1

    .line 1217
    add-int/lit8 v9, v9, 0x1

    goto :goto_9a

    .line 1218
    :cond_d7
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_e8

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_e8

    .line 1219
    add-int/lit8 v10, v10, 0x1

    .line 1220
    add-int/lit8 v12, v12, 0x1

    goto :goto_9a

    .line 1222
    :cond_e8
    add-int/lit8 v11, v11, 0x1

    .line 1223
    add-int/lit8 v12, v12, 0x1

    goto :goto_9a

    .line 1226
    .end local v23    # "c":C
    :cond_ed
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1231
    if-eqz p2, :cond_19b

    .line 1232
    invoke-static/range {p2 .. p2}, computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .line 1233
    .local v25, "computedQuality_old":I
    const/16 v29, 0x0

    .line 1234
    .local v29, "letters_old":I
    const/16 v40, 0x0

    .line 1235
    .local v40, "uppercase_old":I
    const/16 v30, 0x0

    .line 1236
    .local v30, "lowercase_old":I
    const/16 v32, 0x0

    .line 1237
    .local v32, "numbers_old":I
    const/16 v38, 0x0

    .line 1238
    .local v38, "symbols_old":I
    const/16 v31, 0x0

    .line 1239
    .local v31, "nonletter_old":I
    const/16 v28, 0x0

    :goto_112
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_15c

    .line 1240
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1241
    .restart local v23    # "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_135

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_135

    .line 1242
    add-int/lit8 v29, v29, 0x1

    .line 1243
    add-int/lit8 v40, v40, 0x1

    .line 1239
    :goto_132
    add-int/lit8 v28, v28, 0x1

    goto :goto_112

    .line 1244
    :cond_135
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_146

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_146

    .line 1245
    add-int/lit8 v29, v29, 0x1

    .line 1246
    add-int/lit8 v30, v30, 0x1

    goto :goto_132

    .line 1247
    :cond_146
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_157

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_157

    .line 1248
    add-int/lit8 v32, v32, 0x1

    .line 1249
    add-int/lit8 v31, v31, 0x1

    goto :goto_132

    .line 1251
    :cond_157
    add-int/lit8 v38, v38, 0x1

    .line 1252
    add-int/lit8 v31, v31, 0x1

    goto :goto_132

    .line 1256
    .end local v23    # "c":C
    :cond_15c
    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_19b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_19b

    move/from16 v0, v29

    if-ne v0, v7, :cond_19b

    move/from16 v0, v40

    if-ne v0, v8, :cond_19b

    move/from16 v0, v30

    if-ne v0, v9, :cond_19b

    move/from16 v0, v32

    if-ne v0, v10, :cond_19b

    move/from16 v0, v38

    if-ne v0, v11, :cond_19b

    move/from16 v0, v31

    if-ne v0, v12, :cond_19b

    .line 1261
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_19b

    .line 1262
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateForEAS(IIIIIIIII)V

    .line 1278
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v25    # "computedQuality_old":I
    .end local v28    # "i":I
    .end local v29    # "letters_old":I
    .end local v30    # "lowercase_old":I
    .end local v31    # "nonletter_old":I
    .end local v32    # "numbers_old":I
    .end local v38    # "symbols_old":I
    .end local v40    # "uppercase_old":I
    :cond_19b
    :goto_19b
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v1}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    .line 1279
    .local v35, "passwordHistory":Ljava/lang/String;
    if-nez v35, :cond_1a9

    .line 1280
    const-string v35, ""

    .line 1282
    :cond_1a9
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, getRequestedPasswordHistoryLength(I)I

    move-result v36

    .line 1283
    .local v36, "passwordHistoryLength":I
    if-nez v36, :cond_205

    .line 1284
    const-string v35, ""

    .line 1294
    :goto_1b5
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1295
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, updateEnterpriseIdentityLock(I)V

    .line 1296
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, onAfterChangingPassword(I)V

    .line 1299
    if-nez p4, :cond_31

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1300
    new-instance v26, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1301
    .local v26, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1302
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto/16 :goto_31

    .line 1271
    .end local v26    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v35    # "passwordHistory":Ljava/lang/String;
    .end local v36    # "passwordHistoryLength":I
    :cond_1f0
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p4

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_19b

    .line 1286
    .restart local v35    # "passwordHistory":Ljava/lang/String;
    .restart local v36    # "passwordHistoryLength":I
    :cond_205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v27

    .line 1287
    .local v27, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-direct {v6, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1290
    const/4 v5, 0x0

    move-object/from16 v0, v27

    array-length v6, v0

    mul-int v6, v6, v36

    add-int v6, v6, v36

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_248
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_248} :catch_16

    move-result-object v35

    goto/16 :goto_1b5
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 914
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    .registers 5
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 923
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V
    .registers 11
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    .line 934
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V
    .registers 21
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .param p5, "isSmartUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LockPatternUtils.saveLockPattern() userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSmartUnlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDirectionLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    if-eqz p1, :cond_3b

    :try_start_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_5e

    .line 940
    :cond_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "pattern must not be null and at least 4 dots long."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_44} :catch_44

    .line 980
    :catch_44
    move-exception v13

    .line 981
    .local v13, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t save lock pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v13    # "re":Landroid/os/RemoteException;
    :cond_5d
    :goto_5d
    return-void

    .line 944
    :cond_5e
    :try_start_5e
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static/range {p1 .. p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 945
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 948
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_83

    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 950
    const/4 v4, 0x1

    invoke-direct {p0, v4}, shouldEncryptWithCredentials(Z)Z

    move-result v4

    if-nez v4, :cond_d2

    .line 951
    invoke-virtual {p0}, clearEncryptionPassword()V

    .line 958
    :cond_83
    :goto_83
    const-string v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v4, v5, v0}, setBoolean(Ljava/lang/String;ZI)V

    .line 959
    const/high16 v4, 0x10000

    invoke-direct {p0, v4}, updateCACAuthentication(I)V

    .line 960
    const/high16 v3, 0x10000

    .line 961
    .local v3, "passwordQuality":I
    if-eqz p4, :cond_db

    .line 962
    const/16 v3, 0x1000

    .line 967
    :cond_96
    :goto_96
    const-string v4, "lockscreen.password_type"

    int-to-long v6, v3

    move/from16 v0, p3

    invoke-direct {p0, v4, v6, v7, v0}, setLong(Ljava/lang/String;JI)V

    .line 968
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 970
    move/from16 v0, p3

    invoke-direct {p0, v0}, onAfterChangingPassword(I)V

    .line 971
    move/from16 v0, p3

    invoke-direct {p0, v0}, updateEnterpriseIdentityLock(I)V

    .line 973
    if-nez p3, :cond_5d

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 974
    new-instance v12, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 975
    .local v12, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 976
    invoke-static/range {p1 .. p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 977
    .local v14, "stringPattern":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto :goto_5d

    .line 953
    .end local v3    # "passwordQuality":I
    .end local v12    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v14    # "stringPattern":Ljava/lang/String;
    :cond_d2
    invoke-static/range {p1 .. p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 954
    .restart local v14    # "stringPattern":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-direct {p0, v4, v14}, updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_da} :catch_44

    goto :goto_83

    .line 963
    .end local v14    # "stringPattern":Ljava/lang/String;
    .restart local v3    # "passwordQuality":I
    :cond_db
    if-eqz p5, :cond_96

    .line 964
    const v3, 0x9100

    goto :goto_96
.end method

.method public saveLockUniversal(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    .line 904
    return-void
.end method

.method public savePersonalModeFingerPrintPassword(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2520
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2522
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2527
    :goto_b
    return-void

    .line 2523
    :catch_c
    move-exception v0

    .line 2525
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockBackupPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2490
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2492
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2497
    :goto_b
    return-void

    .line 2493
    :catch_c
    move-exception v0

    .line 2495
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockPassword(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2434
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2436
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2441
    :goto_b
    return-void

    .line 2437
    :catch_c
    move-exception v0

    .line 2439
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockPattern(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2462
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2464
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 2468
    :goto_f
    return-void

    .line 2465
    :catch_10
    move-exception v0

    .line 2466
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public savePersonalModeLockPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2405
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2407
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2412
    :goto_b
    return-void

    .line 2408
    :catch_c
    move-exception v0

    .line 2410
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)V
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2357
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_c

    .line 2358
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 2369
    :cond_b
    :goto_b
    return-void

    .line 2359
    :cond_c
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_3c

    .line 2360
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_b

    .line 2366
    :catch_18
    move-exception v0

    .line 2367
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2361
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_3c
    :try_start_3c
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_4c

    .line 2362
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    goto :goto_b

    .line 2363
    :cond_4c
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_b

    .line 2364
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_57} :catch_18

    goto :goto_b
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;)V
    .registers 4
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2781
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 2782
    return-void
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;I)V
    .registers 8
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2793
    packed-switch p1, :pswitch_data_4a

    .line 2816
    :goto_3
    return-void

    .line 2797
    :pswitch_4
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_3

    .line 2798
    :catch_d
    move-exception v0

    .line 2800
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2806
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_27
    :try_start_27
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_3

    .line 2807
    :catch_2f
    move-exception v0

    .line 2809
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2793
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_27
    .end packed-switch
.end method

.method public savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .registers 6
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2584
    :try_start_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_e

    .line 2585
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v1

    .line 2595
    :cond_d
    :goto_d
    return v1

    .line 2586
    :cond_e
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_1b

    .line 2587
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v1

    goto :goto_d

    .line 2588
    :cond_1b
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_28

    .line 2589
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v1

    goto :goto_d

    .line 2590
    :cond_28
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_d

    .line 2591
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_33} :catch_35

    move-result v1

    goto :goto_d

    .line 2594
    :catch_35
    move-exception v0

    .line 2595
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public savedBackupPasswordExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3325
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 3327
    :goto_8
    return v1

    .line 3326
    :catch_9
    move-exception v0

    .line 3327
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public savedBackupPinExists()Z
    .registers 4

    .prologue
    .line 2271
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 2273
    :goto_c
    return v1

    .line 2272
    :catch_d
    move-exception v0

    .line 2273
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedFingerprintPasswordExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3065
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 3067
    :goto_8
    return v1

    .line 3066
    :catch_9
    move-exception v0

    .line 3067
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public savedParentControlPasswordExists()Z
    .registers 4

    .prologue
    .line 2617
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 2619
    :goto_c
    return v1

    .line 2618
    :catch_d
    move-exception v0

    .line 2619
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPatternExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 694
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 696
    :goto_8
    return v1

    .line 695
    :catch_9
    move-exception v0

    .line 696
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public savedPersonalModeBackupPinExists()Z
    .registers 4

    .prologue
    .line 2510
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2512
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2514
    :goto_c
    return v2

    .line 2513
    :catch_d
    move-exception v0

    .line 2514
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModeFingerPrintPasswordExists()Z
    .registers 4

    .prologue
    .line 2539
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2541
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2543
    :goto_c
    return v2

    .line 2542
    :catch_d
    move-exception v0

    .line 2543
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePasswordExists()Z
    .registers 4

    .prologue
    .line 2453
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2455
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2457
    :goto_c
    return v2

    .line 2456
    :catch_d
    move-exception v0

    .line 2457
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePatternExists()Z
    .registers 4

    .prologue
    .line 2480
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2482
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2484
    :goto_c
    return v2

    .line 2483
    :catch_d
    move-exception v0

    .line 2484
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePinExists()Z
    .registers 4

    .prologue
    .line 2424
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2426
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2428
    :goto_c
    return v2

    .line 2427
    :catch_d
    move-exception v0

    .line 2428
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
    .registers 6
    .param p1, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2389
    :try_start_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_e

    .line 2390
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v1

    .line 2399
    :cond_d
    :goto_d
    return v1

    .line 2391
    :cond_e
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_1b

    .line 2392
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v1

    goto :goto_d

    .line 2393
    :cond_1b
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_28

    .line 2394
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v1

    goto :goto_d

    .line 2395
    :cond_28
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_d

    .line 2396
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_33} :catch_35

    move-result v1

    goto :goto_d

    .line 2398
    :catch_35
    move-exception v0

    .line 2399
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method public setAppLockFingerPrintLockscreen(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2600
    const-string v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 2601
    return-void
.end method

.method public setCACPasswordEnabled(Z)Z
    .registers 3
    .param p1, "status"    # Z

    .prologue
    .line 3124
    const-string v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 3125
    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockoutAttemptDeadline(I)J
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 2768
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, setLong(Ljava/lang/String;JI)V

    .line 2769
    return-wide v0
.end method

.method public setContainerPasswordState(Ljava/lang/String;I)V
    .registers 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2870
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2871
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 2872
    .local v2, "letters":I
    const/4 v3, 0x0

    .line 2873
    .local v3, "uppercase":I
    const/4 v4, 0x0

    .line 2874
    .local v4, "lowercase":I
    const/4 v5, 0x0

    .line 2875
    .local v5, "numbers":I
    const/4 v6, 0x0

    .line 2876
    .local v6, "symbols":I
    const/4 v7, 0x0

    .line 2878
    .local v7, "nonletter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v10, v1, :cond_43

    .line 2879
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2880
    .local v9, "c":C
    const/16 v1, 0x41

    if-lt v9, v1, :cond_24

    const/16 v1, 0x5a

    if-gt v9, v1, :cond_24

    .line 2881
    add-int/lit8 v2, v2, 0x1

    .line 2882
    add-int/lit8 v3, v3, 0x1

    .line 2878
    :goto_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 2883
    :cond_24
    const/16 v1, 0x61

    if-lt v9, v1, :cond_31

    const/16 v1, 0x7a

    if-gt v9, v1, :cond_31

    .line 2884
    add-int/lit8 v2, v2, 0x1

    .line 2885
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2886
    :cond_31
    const/16 v1, 0x30

    if-lt v9, v1, :cond_3e

    const/16 v1, 0x39

    if-gt v9, v1, :cond_3e

    .line 2887
    add-int/lit8 v5, v5, 0x1

    .line 2888
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 2890
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    .line 2891
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 2894
    .end local v9    # "c":C
    :cond_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordState(IIIIIIII)V

    .line 2896
    invoke-virtual {p0, p2}, getActivePasswordQuality(I)I

    move-result v1

    const v8, 0x61000

    if-ne v1, v8, :cond_57

    .line 2897
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 2899
    :cond_57
    return-void
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .registers 5
    .param p1, "required"    # Z

    .prologue
    .line 2044
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_e

    .line 2045
    const-string v0, "LockPatternUtils"

    const-string v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_d
    :goto_d
    return-void

    .line 2049
    :cond_e
    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2050
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "require_password_to_decrypt"

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :goto_20
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :cond_24
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 566
    sput p1, sCurrentUserId:I

    .line 567
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1978
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1979
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1980
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 1981
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1983
    :cond_20
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1985
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_28
    const-string v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1986
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1987
    return-void
.end method

.method public setEnterpriseIdentityLock(Z)Z
    .registers 3
    .param p1, "status"    # Z

    .prologue
    .line 550
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, setEnterpriseIdentityLock(ZI)Z

    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentityLock(ZI)Z
    .registers 4
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 560
    const-string v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 561
    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentitySelected(ZI)Z
    .registers 7
    .param p1, "select"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    const/16 v2, 0x64

    if-lt p2, v2, :cond_10

    .line 543
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lockscreen.enterpriseidentity_selected"

    if-ne p1, v0, :cond_11

    :goto_c
    invoke-static {v2, v3, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    .line 546
    :cond_10
    return v1

    :cond_11
    move v0, v1

    .line 543
    goto :goto_c
.end method

.method public setFingerPrintLockscreen(II)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2907
    const-string v0, "lockscreen.enabled_fingerprint"

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3, p2}, setLong(Ljava/lang/String;JI)V

    .line 2908
    return-void
.end method

.method public setFingerPrintLockscreen(ZI)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2902
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 2903
    .local v0, "state":I
    :goto_3
    const-string v1, "lockscreen.enabled_fingerprint"

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3, p2}, setLong(Ljava/lang/String;JI)V

    .line 2904
    return-void

    .line 2902
    .end local v0    # "state":I
    :cond_a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setLockFingerprintEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3078
    const-string v0, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 3079
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1619
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, setLockPatternEnabled(ZI)V

    .line 1620
    return-void
.end method

.method public setLockPatternEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1626
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 1627
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .registers 4
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 836
    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 837
    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x5

    const-wide/16 v4, 0x1

    .line 1772
    sget-wide v2, failedUnlockAttemptNumber:J

    add-long/2addr v2, v4

    sput-wide v2, failedUnlockAttemptNumber:J

    .line 1773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1774
    .local v0, "deadline":J
    sget-wide v2, failedUnlockAttemptNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    invoke-direct {p0}, isFollowLegacyTimeoutPolicy()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1775
    :cond_19
    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 1787
    :cond_1c
    :goto_1c
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v4, failedUnlockAttemptNumber:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1789
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, setLong(Ljava/lang/String;JI)V

    .line 1790
    return-wide v0

    .line 1776
    :cond_2f
    sget-wide v2, failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    .line 1777
    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    goto :goto_1c

    .line 1778
    :cond_3c
    sget-wide v2, failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_49

    .line 1779
    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    goto :goto_1c

    .line 1780
    :cond_49
    sget-wide v2, failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_56

    .line 1781
    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    goto :goto_1c

    .line 1782
    :cond_56
    sget-wide v2, failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_61

    .line 1783
    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    goto :goto_1c

    .line 1784
    :cond_61
    sget-wide v2, failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1c

    .line 1785
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_1c
.end method

.method public setLockoutAttemptDeadline(II)J
    .registers 9
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 1759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 1760
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, setLong(Ljava/lang/String;JI)V

    .line 1761
    const-string v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, setLong(Ljava/lang/String;JI)V

    .line 1762
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1019
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1020
    invoke-direct {p0, p2}, updateCryptoUserInfo(I)V

    .line 1021
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1024
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 1025
    invoke-direct {p0, p2}, updateCryptoUserInfo(I)V

    .line 1026
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 1843
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1844
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1915
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 1916
    return-void
.end method

.method public setPrevLockFingerprintEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3086
    const-string/jumbo v0, "prev_lock_type"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 3087
    return-void
.end method

.method public setPrivateModeFingerPrintLockscreen(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2934
    const-string v0, "lockscreen.privatemode_fingerprint"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 2935
    return-void
.end method

.method public setRecoveryScreenLocked(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 3106
    const-string v0, "lockscreen.lockedoutRecovery"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 3107
    return-void
.end method

.method public setSmartUnlockEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1723
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1724
    return-void
.end method

.method public setSmartUnlockEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userid"    # I

    .prologue
    .line 1727
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 1728
    return-void
.end method

.method public setSwipeSmartLock(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2861
    sput-boolean p1, mSwipeSmartLock:Z

    .line 2862
    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1683
    if-eqz p2, :cond_3

    .line 1699
    :goto_2
    return-void

    .line 1687
    :cond_3
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1688
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_14

    .line 1689
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1693
    :cond_14
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1695
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_18
    const-string v4, "PasswordVisible"

    if-eqz p1, :cond_2b

    const-string v3, "1"

    :goto_1e
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_2

    .line 1696
    :catch_22
    move-exception v0

    .line 1697
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing password visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1695
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :try_start_2b
    const-string v3, "0"
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2d} :catch_22

    goto :goto_1e
.end method

.method public setVisiblePatternEnabled(ZI)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1652
    invoke-virtual {p0}, isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz p1, :cond_10

    .line 1653
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not enable visible pattern by IT admin."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_f
    :goto_f
    return-void

    .line 1657
    :cond_10
    const-string v3, "lock_pattern_visible_pattern"

    invoke-direct {p0, v3, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 1660
    if-nez p2, :cond_f

    .line 1664
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1665
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_28

    .line 1666
    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1670
    :cond_28
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1672
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_2c
    const-string v4, "PatternVisible"

    if-eqz p1, :cond_3f

    const-string v3, "1"

    :goto_32
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_f

    .line 1673
    :catch_36
    move-exception v0

    .line 1674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing pattern visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1672
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3f
    :try_start_3f
    const-string v3, "0"
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_41} :catch_36

    goto :goto_32
.end method

.method public showCardNotRegisteredDialog()V
    .registers 5

    .prologue
    .line 3194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3195
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3197
    :try_start_c
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "showCardNotRegisteredDialog called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_19} :catch_1a

    .line 3203
    :goto_19
    return-void

    .line 3199
    :catch_1a
    move-exception v0

    .line 3200
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "showCardNotRegisteredDialog "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .registers 5
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 2073
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2077
    :goto_9
    return-void

    .line 2074
    :catch_a
    move-exception v0

    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public updateCarrierLockPlus(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2728
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLockPlusMode(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2731
    :goto_8
    return v1

    .line 2729
    :catch_9
    move-exception v0

    .line 2730
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable updateCarrierLockPlus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public usingBiometricWeak(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 856
    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 858
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public usingSmartUnlock(I)Z
    .registers 6
    .param p1, "userid"    # I

    .prologue
    .line 1734
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1736
    .local v0, "quality":I
    const v1, 0x9100

    if-eq v0, v1, :cond_13

    const/high16 v1, 0x90000

    if-ne v0, v1, :cond_1b

    :cond_13
    invoke-virtual {p0, p1}, savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1739
    const/4 v1, 0x1

    .line 1741
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public verifyBackupPassword(Ljava/lang/String;JIZ)[B
    .registers 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3351
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 3354
    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_18

    .line 3355
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 3362
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_17
    return-object v0

    .line 3356
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_18
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 3357
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_29

    .line 3361
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_29
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    move-object v0, v8

    .line 3362
    goto :goto_17

    .end local v6    # "re":Landroid/os/RemoteException;
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2c
    move-object v0, v8

    .line 3359
    goto :goto_17
.end method

.method public verifyBackupPin(Ljava/lang/String;JI)[B
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2297
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2300
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_14

    .line 2301
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .line 2308
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_13
    :goto_13
    return-object v2

    .line 2302
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 2303
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_25

    .line 2307
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_25
    move-exception v0

    .line 2308
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_13
.end method

.method public verifyPassword(Ljava/lang/String;JI)[B
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 603
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 606
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_14

    .line 607
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .line 614
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_13
    :goto_13
    return-object v2

    .line 608
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 609
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_25

    .line 613
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_25
    move-exception v0

    .line 614
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_13
.end method

.method public verifyPattern(Ljava/util/List;JI)[B
    .registers 11
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x0

    .line 450
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 452
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_10

    .line 465
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_f
    :goto_f
    return-object v2

    .line 457
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1b

    .line 458
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    goto :goto_f

    .line 459
    :cond_1b
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 460
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2c} :catch_2c

    .line 464
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_2c
    move-exception v0

    .line 465
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_f
.end method
