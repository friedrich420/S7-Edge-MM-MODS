.class Lcom/android/server/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$1;,
        Lcom/android/server/LockSettingsStorage$Cache;,
        Lcom/android/server/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/LockSettingsStorage$Callback;,
        Lcom/android/server/LockSettingsStorage$CredentialHash;
    }
.end annotation


# static fields
.field private static final APP_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "applockfingerprintpassword.key"

.field private static final APP_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "applockbackuppin.key"

.field private static final APP_LOCK_PASSWORD_FILE:Ljava/lang/String; = "applockpassword.key"

.field private static final APP_LOCK_PATTERN_FILE:Ljava/lang/String; = "applockpattern.key"

.field private static final APP_LOCK_PIN_FILE:Ljava/lang/String; = "applockpin.key"

.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final INITIAL_STATE:I = 0x0

.field private static final LEGACY_LOCK_BACKUP_PASSWORD_FILE:Ljava/lang/String; = "fingerprintpassword.key"

.field private static final LEGACY_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "sparepassword.key"

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_BACKUP_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.backuppassword.key"

.field private static final LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "gatekeeper.backuppin.key"

.field private static final LOCK_FMM_PASSWORD_FILE:Ljava/lang/String; = "fmmpassword.key"

.field private static final LOCK_PARENT_CONTROL_PASSWORD_FILE:Ljava/lang/String; = "parentcontrol.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final LOCK_SIGNATURE_BACKUPPIN_FILE:Ljava/lang/String; = "signaturebackuppin.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SKT_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static final LOCK_STATE:I = 0x1

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final PERSONAL_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "personalfingerprintpassword.key"

.field private static final PERSONAL_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "personalbackuppin.key"

.field private static final PERSONAL_LOCK_PASSWORD_FILE:Ljava/lang/String; = "personalpassword.key"

.field private static final PERSONAL_LOCK_PATTERN_FILE:Ljava/lang/String; = "personalpattern.key"

.field private static final PERSONAL_LOCK_PIN_FILE:Ljava/lang/String; = "personalpin.key"

.field private static final SIGNATURE_SETTINGS_ADDED_INDEX:I = 0x9

.field private static final SIGNATURE_SETTINGS_CURRENT:I = 0x16

.field private static final SIGNATURE_SETTINGS_OLD:I = 0x15

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"

.field private static final UNLOCK_STATE:I = 0x2


# instance fields
.field private final mCache:Lcom/android/server/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

.field private mSKTLockState:I

.field private mStoredCredentialType:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    aput-object v1, v0, v2

    sput-object v0, COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, DEFAULT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache;-><init>(Lcom/android/server/LockSettingsStorage$1;)V

    iput-object v0, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mFileWriteLock:Ljava/lang/Object;

    .line 1136
    const/4 v0, 0x0

    iput v0, p0, mSKTLockState:I

    .line 128
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    .line 130
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 131
    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 62
    sget-object v0, DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method private clearBackupPasswordHash(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 880
    invoke-virtual {p0, p1}, getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 881
    return-void
.end method

.method private clearPasswordHash(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 416
    invoke-virtual {p0, p1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 417
    return-void
.end method

.method private clearPatternHash(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 404
    invoke-virtual {p0, p1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 405
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_a

    .line 391
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 393
    :cond_a
    return-void
.end method

.method private getAppLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 558
    const-string v0, "applockbackuppin.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 578
    const-string v0, "applockfingerprintpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 517
    const-string v0, "applockpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 538
    const-string v0, "applockpattern.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppLockPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 497
    const-string v0, "applockpin.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 440
    const-string/jumbo v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarrierLockPlusModeFromFile()Z
    .registers 10

    .prologue
    .line 1139
    const/4 v2, 0x0

    .line 1140
    .local v2, "retValue":Z
    invoke-direct {p0}, isCarrierLockENCVersion()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1141
    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1144
    const/4 v4, 0x0

    .line 1146
    .local v4, "storedText":Ljava/lang/String;
    :try_start_15
    iget-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, mContext:Landroid/content/Context;

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1148
    if-eqz v4, :cond_37

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1149
    const-string v5, "LockSettingsStorage"

    const-string/jumbo v6, "getCarrierLockPlusMode() is true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_39

    .line 1150
    const/4 v2, 0x1

    .end local v4    # "storedText":Ljava/lang/String;
    :cond_37
    :goto_37
    move v3, v2

    .line 1172
    .end local v2    # "retValue":Z
    .local v3, "retValue":Z
    :goto_38
    return v3

    .line 1152
    .end local v3    # "retValue":Z
    .restart local v2    # "retValue":Z
    .restart local v4    # "storedText":Ljava/lang/String;
    :catch_39
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "LockSettingsStorage"

    const-string v6, "IOException while read file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1158
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "storedText":Ljava/lang/String;
    :cond_42
    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/sec_efs/sktdm_mem/lawlock.txt"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1160
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1161
    const/4 v4, 0x0

    .line 1163
    .restart local v4    # "storedText":Ljava/lang/String;
    const/16 v5, 0x20

    const/4 v6, 0x0

    :try_start_53
    invoke-static {v1, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1164
    if-eqz v4, :cond_6a

    const-string v5, "ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1165
    const-string v5, "LockSettingsStorage"

    const-string/jumbo v6, "getCarrierLockPlusMode() is true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_69} :catch_6c

    .line 1166
    const/4 v2, 0x1

    .end local v4    # "storedText":Ljava/lang/String;
    :cond_6a
    :goto_6a
    move v3, v2

    .line 1172
    .end local v2    # "retValue":Z
    .restart local v3    # "retValue":Z
    goto :goto_38

    .line 1168
    .end local v3    # "retValue":Z
    .restart local v2    # "retValue":Z
    .restart local v4    # "storedText":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 1169
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "LockSettingsStorage"

    const-string v6, "IOException while read file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "basename"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-direct {p0, p1}, getUserParentOrSelfId(I)I

    move-result p1

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_33

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    :goto_32
    return-object v1

    :cond_33
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_32
.end method

.method private getPersonalModeLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1050
    const-string/jumbo v0, "personalbackuppin.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonalModeLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1070
    const-string/jumbo v0, "personalfingerprintpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonalModeLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1009
    const-string/jumbo v0, "personalpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonalModeLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1030
    const-string/jumbo v0, "personalpattern.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonalModeLockPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 989
    const-string/jumbo v0, "personalpin.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignatureBackupPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 962
    const-string/jumbo v0, "signaturebackuppin.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignatureFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 942
    const-string/jumbo v0, "signature.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserParentOrSelfId(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 457
    if-eqz p1, :cond_1b

    .line 460
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 461
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_1c

    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x64

    if-lt p1, v3, :cond_1c

    .line 474
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    .end local p1    # "userId":I
    :cond_1b
    :goto_1b
    return p1

    .line 468
    .restart local v2    # "versionInfo":Landroid/os/Bundle;
    .restart local p1    # "userId":I
    :cond_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 469
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 470
    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1b

    .line 471
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1b
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-direct {p0, p1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 326
    .local v0, "contents":[B
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isCarrierLockENCVersion()Z
    .registers 3

    .prologue
    .line 1177
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1179
    const/4 v1, 0x1

    .line 1181
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v6, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v6

    .line 332
    :try_start_3
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 333
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B

    move-result-object v3

    monitor-exit v6

    .line 357
    :goto_12
    return-object v3

    .line 335
    :cond_13
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    # invokes: Lcom/android/server/LockSettingsStorage$Cache;->getVersion()I
    invoke-static {v5}, Lcom/android/server/LockSettingsStorage$Cache;->access$100(Lcom/android/server/LockSettingsStorage$Cache;)I

    move-result v4

    .line 336
    .local v4, "version":I
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3f

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 341
    .local v3, "stored":[B
    :try_start_1c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_5d
    .catchall {:try_start_1c .. :try_end_24} :catchall_96

    .line 342
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v3, v5, [B

    .line 343
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 344
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_ba
    .catchall {:try_start_24 .. :try_end_33} :catchall_b7

    .line 348
    if-eqz v2, :cond_bd

    .line 350
    :try_start_35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_42

    move-object v1, v2

    .line 356
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_39
    :goto_39
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/server/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    goto :goto_12

    .line 336
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    .end local v4    # "version":I
    :catchall_3f
    move-exception v5

    :try_start_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v5

    .line 351
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "stored":[B
    .restart local v4    # "version":I
    :catch_42
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 353
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_39

    .line 345
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5d
    move-exception v0

    .line 346
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    const-string v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_96

    .line 348
    if-eqz v1, :cond_39

    .line 350
    :try_start_78
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_39

    .line 351
    :catch_7c
    move-exception v0

    .line 352
    const-string v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_96
    move-exception v5

    :goto_97
    if-eqz v1, :cond_9c

    .line 350
    :try_start_99
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 353
    :cond_9c
    :goto_9c
    throw v5

    .line 351
    :catch_9d
    move-exception v0

    .line 352
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "LockSettingsStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_b7
    move-exception v5

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_97

    .line 345
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_ba
    move-exception v0

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5e

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_bd
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_39
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 361
    iget-object v4, p0, mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 362
    const/4 v1, 0x0

    .line 365
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_ab
    .catchall {:try_start_4 .. :try_end_c} :catchall_84

    .line 367
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_11

    :try_start_e
    array-length v3, p2

    if-nez v3, :cond_26

    .line 368
    :cond_11
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 372
    :goto_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_2c
    .catchall {:try_start_e .. :try_end_19} :catchall_a8

    .line 376
    if-eqz v2, :cond_ad

    .line 378
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_69
    .catchall {:try_start_1b .. :try_end_1e} :catchall_a5

    move-object v1, v2

    .line 384
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v3, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 385
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_66

    .line 386
    return-void

    .line 370
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_26
    const/4 v3, 0x0

    :try_start_27
    array-length v5, p2

    invoke-virtual {v2, p2, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_2c
    .catchall {:try_start_27 .. :try_end_2b} :catchall_a8

    goto :goto_16

    .line 373
    :catch_2c
    move-exception v0

    move-object v1, v2

    .line 374
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_2e
    :try_start_2e
    const-string v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_84

    .line 376
    if-eqz v1, :cond_1f

    .line 378
    :try_start_48
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_66

    goto :goto_1f

    .line 379
    :catch_4c
    move-exception v0

    .line 380
    :try_start_4d
    const-string v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_66
    move-exception v3

    :goto_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_4d .. :try_end_68} :catchall_66

    throw v3

    .line 379
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_69
    move-exception v0

    .line 380
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6a
    const-string v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_a5

    move-object v1, v2

    .line 381
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1f

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_84
    move-exception v3

    :goto_85
    if-eqz v1, :cond_8a

    .line 378
    :try_start_87
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b
    .catchall {:try_start_87 .. :try_end_8a} :catchall_66

    .line 381
    :cond_8a
    :goto_8a
    :try_start_8a
    throw v3

    .line 379
    :catch_8b
    move-exception v0

    .line 380
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_66

    goto :goto_8a

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_a5
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_67

    .line 376
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_a8
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_85

    .line 373
    :catch_ab
    move-exception v0

    goto :goto_2e

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_ad
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_1f
.end method


# virtual methods
.method clearCache()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$Cache;->clear()V

    .line 628
    return-void
.end method

.method closeDatabase()V
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->close()V

    .line 623
    return-void
.end method

.method public getCarrierLockPlusMode()Z
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1185
    iget v2, p0, mSKTLockState:I

    if-nez v2, :cond_1c

    .line 1186
    const-string v2, "LockSettingsStorage"

    const-string/jumbo v3, "mSKTLockState initial value!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-direct {p0}, getCarrierLockPlusModeFromFile()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1188
    iput v0, p0, mSKTLockState:I

    .line 1200
    :cond_17
    :goto_17
    return v0

    .line 1191
    :cond_18
    iput v4, p0, mSKTLockState:I

    move v0, v1

    .line 1192
    goto :goto_17

    .line 1194
    :cond_1c
    iget v2, p0, mSKTLockState:I

    if-eq v2, v0, :cond_17

    .line 1196
    iget v0, p0, mSKTLockState:I

    if-ne v0, v4, :cond_26

    move v0, v1

    .line 1197
    goto :goto_17

    .line 1199
    :cond_26
    const-string v0, "LockSettingsStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSKTLockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mSKTLockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1200
    goto :goto_17
.end method

.method getLegacyLockBackupPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 905
    const-string/jumbo v0, "fingerprintpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 859
    const-string/jumbo v0, "sparepassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 436
    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 431
    const-string/jumbo v0, "gesture.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockBackupPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 909
    const-string/jumbo v0, "gatekeeper.backuppassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockBackupPinFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 863
    const-string/jumbo v0, "gatekeeper.backuppin.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockCarrierPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1220
    const-string/jumbo v0, "sktpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockFMMPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1120
    const-string/jumbo v0, "fmmpassword.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockParentControlPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1087
    const-string/jumbo v0, "parentcontrol.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 426
    const-string/jumbo v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 421
    const-string/jumbo v0, "gatekeeper.pattern.key"

    invoke-direct {p0, p1, v0}, getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoredCredentialType(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 241
    iget v2, p0, mStoredCredentialType:I

    if-eqz v2, :cond_9

    .line 242
    iget v2, p0, mStoredCredentialType:I

    .line 266
    :goto_8
    return v2

    .line 245
    :cond_9
    invoke-virtual {p0, p1}, readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v1

    .line 246
    .local v1, "pattern":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v1, :cond_1e

    .line 247
    invoke-virtual {p0, p1}, readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 248
    iput v4, p0, mStoredCredentialType:I

    .line 266
    :goto_17
    iget v2, p0, mStoredCredentialType:I

    goto :goto_8

    .line 250
    :cond_1a
    const/4 v2, -0x1

    iput v2, p0, mStoredCredentialType:I

    goto :goto_17

    .line 253
    :cond_1e
    invoke-virtual {p0, p1}, readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 254
    .local v0, "password":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2e

    .line 256
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-ne v2, v3, :cond_2b

    .line 257
    iput v4, p0, mStoredCredentialType:I

    goto :goto_17

    .line 259
    :cond_2b
    iput v3, p0, mStoredCredentialType:I

    goto :goto_17

    .line 262
    :cond_2e
    iput v3, p0, mStoredCredentialType:I

    goto :goto_17
.end method

.method public getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, getStoredCredentialType(I)I

    move-result v0

    .line 227
    .local v0, "credentialType":I
    invoke-virtual {p0, p1, v0}, getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v1

    return-object v1
.end method

.method public getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "credentialType"    # I

    .prologue
    .line 231
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 232
    invoke-virtual {p0, p1}, readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 236
    :goto_7
    return-object v0

    .line 233
    :cond_8
    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 234
    invoke-virtual {p0, p1}, readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    goto :goto_7

    .line 236
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasBackupPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 913
    invoke-virtual {p0, p1}, getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, getLegacyLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 915
    :cond_14
    const/4 v0, 0x1

    .line 917
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hasBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 867
    invoke-virtual {p0, p1}, getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, getLegacyLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 869
    :cond_14
    const/4 v0, 0x1

    .line 871
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hasCarrierPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasFMMPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParentControlPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1091
    invoke-virtual {p0, p1}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPassword(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0, p1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, hasFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1}, getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 315
    :cond_15
    :goto_15
    return v0

    .line 310
    :cond_16
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 315
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hasPattern(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, p1}, getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 562
    invoke-direct {p0, p1}, getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 582
    invoke-direct {p0, p1}, getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 522
    invoke-direct {p0, p1}, getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 542
    invoke-direct {p0, p1}, getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 501
    invoke-direct {p0, p1}, getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeLockBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1054
    invoke-direct {p0, p1}, getPersonalModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeLockFingerprintPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1074
    invoke-direct {p0, p1}, getPersonalModeLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeLockPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1014
    invoke-direct {p0, p1}, getPersonalModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeLockPattern(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1034
    invoke-direct {p0, p1}, getPersonalModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeLockPin(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 993
    invoke-direct {p0, p1}, getPersonalModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveSignature(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 946
    invoke-direct {p0, p1}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 966
    invoke-direct {p0, p1}, getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prefetchUser(I)V
    .registers 16
    .param p1, "userId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 197
    iget-object v2, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v2

    .line 198
    :try_start_6
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 199
    monitor-exit v2

    .line 222
    :goto_f
    return-void

    .line 201
    :cond_10
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->setFetched(I)V

    .line 202
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    # invokes: Lcom/android/server/LockSettingsStorage$Cache;->getVersion()I
    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->access$100(Lcom/android/server/LockSettingsStorage$Cache;)I

    move-result v11

    .line 203
    .local v11, "version":I
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_4e

    .line 206
    iget-object v1, p0, mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 207
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    sget-object v2, COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const-string/jumbo v3, "user=?"

    new-array v4, v13, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_54

    .line 211
    :goto_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 212
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "value":Ljava/lang/String;
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, v9, v10, p1, v11}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_3a

    .line 203
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "version":I
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1

    .line 216
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "version":I
    :cond_51
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_54
    invoke-virtual {p0, p1}, readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    .line 221
    invoke-virtual {p0, p1}, readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    goto :goto_f
.end method

.method public readAppLockBackupkPinHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 550
    invoke-direct {p0, p1}, getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 551
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 554
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readAppLockFingerprintPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1}, getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 571
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 574
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readAppLockPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 509
    invoke-direct {p0, p1}, getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 510
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 513
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readAppLockPatternHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 530
    invoke-direct {p0, p1}, getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 531
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 534
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readAppLockPinHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 489
    invoke-direct {p0, p1}, getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 490
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 493
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 889
    invoke-virtual {p0, p1}, getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 890
    .local v0, "stored":[B
    if-eqz v0, :cond_1c

    array-length v1, v0

    if-lez v1, :cond_1c

    .line 891
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "readBackupPasswordHash( VERSION_GATEKEEPER )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    .line 901
    :goto_1b
    return-object v1

    .line 895
    :cond_1c
    invoke-virtual {p0, p1}, getLegacyLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 896
    if-eqz v0, :cond_38

    array-length v1, v0

    if-lez v1, :cond_38

    .line 897
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "readBackupPasswordHash( VERSION_LEGACY )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    goto :goto_1b

    .line 900
    :cond_38
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "readBackupPasswordHash( NULL )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 842
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "readBackupPinHash()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {p0, p1}, getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 844
    .local v0, "stored":[B
    if-eqz v0, :cond_24

    array-length v1, v0

    if-lez v1, :cond_24

    .line 845
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "readBackupPinHash( VERSION_GATEKEEPER )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    .line 855
    :goto_23
    return-object v1

    .line 849
    :cond_24
    invoke-virtual {p0, p1}, getLegacyLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 850
    if-eqz v0, :cond_40

    array-length v1, v0

    if-lez v1, :cond_40

    .line 851
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "readBackupPinHash( VERSION_LEGACY )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    goto :goto_23

    .line 855
    :cond_40
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public readCarrierPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1228
    invoke-virtual {p0, p1}, getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1229
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1232
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readFMMPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1112
    invoke-virtual {p0, p1}, getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1113
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1116
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 172
    iget-object v2, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v2

    .line 173
    :try_start_5
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 174
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    monitor-exit v2

    .line 192
    :cond_14
    :goto_14
    return-object p2

    .line 176
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_15
    iget-object v1, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    # invokes: Lcom/android/server/LockSettingsStorage$Cache;->getVersion()I
    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->access$100(Lcom/android/server/LockSettingsStorage$Cache;)I

    move-result v10

    .line 177
    .local v10, "version":I
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_5b

    .line 180
    sget-object v9, DEFAULT:Ljava/lang/Object;

    .line 181
    .local v9, "result":Ljava/lang/Object;
    iget-object v1, p0, mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    sget-object v2, COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5e

    .line 186
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 187
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    .end local v9    # "result":Ljava/lang/Object;
    :cond_4a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v9

    .line 191
    :goto_4e
    iget-object v2, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1, v1, p3, v10}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 192
    sget-object v2, DEFAULT:Ljava/lang/Object;

    if-eq v1, v2, :cond_14

    check-cast v1, Ljava/lang/String;

    move-object p2, v1

    goto :goto_14

    .line 177
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "version":I
    .end local p2    # "defaultValue":Ljava/lang/String;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "result":Ljava/lang/Object;
    .restart local v10    # "version":I
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_5e
    move-object v1, v9

    goto :goto_4e
.end method

.method public readParentControlPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1095
    invoke-virtual {p0, p1}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1096
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1099
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 270
    invoke-virtual {p0, p1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 271
    .local v0, "stored":[B
    if-eqz v0, :cond_14

    array-length v1, v0

    if-lez v1, :cond_14

    .line 272
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    .line 280
    :goto_13
    return-object v1

    .line 275
    :cond_14
    invoke-virtual {p0, p1}, getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 276
    if-eqz v0, :cond_28

    array-length v1, v0

    if-lez v1, :cond_28

    .line 277
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    goto :goto_13

    .line 280
    :cond_28
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-virtual {p0, p1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 285
    .local v0, "stored":[B
    if-eqz v0, :cond_14

    array-length v1, v0

    if-lez v1, :cond_14

    .line 286
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    .line 299
    :goto_13
    return-object v1

    .line 289
    :cond_14
    invoke-direct {p0, p1}, getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 290
    if-eqz v0, :cond_27

    array-length v1, v0

    if-lez v1, :cond_27

    .line 291
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BZ)V

    goto :goto_13

    .line 294
    :cond_27
    invoke-virtual {p0, p1}, getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    if-eqz v0, :cond_3b

    array-length v1, v0

    if-lez v1, :cond_3b

    .line 296
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    goto :goto_13

    .line 299
    :cond_3b
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public readPersonalModeLockBackupkPinHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1042
    invoke-direct {p0, p1}, getPersonalModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1043
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1046
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readPersonalModeLockFingerprintPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1062
    invoke-direct {p0, p1}, getPersonalModeLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1063
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1066
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readPersonalModeLockPasswordHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1001
    invoke-direct {p0, p1}, getPersonalModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1002
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1005
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readPersonalModeLockPatternHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1022
    invoke-direct {p0, p1}, getPersonalModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1023
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 1026
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readPersonalModeLockPinHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 981
    invoke-direct {p0, p1}, getPersonalModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 982
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 985
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readSignatureBackupPinHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 954
    invoke-direct {p0, p1}, getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 955
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 958
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readSignatureHash(I)[B
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 934
    invoke-direct {p0, p1}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 935
    .local v0, "stored":[B
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 938
    .end local v0    # "stored":[B
    :goto_d
    return-object v0

    .restart local v0    # "stored":[B
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 587
    iget-object v5, p0, mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 589
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 590
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 592
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_4b

    .line 594
    iget-object v6, p0, mFileWriteLock:Ljava/lang/Object;

    monitor-enter v6

    .line 595
    :try_start_1a
    invoke-virtual {p0, p1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 598
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 599
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 601
    :cond_32
    invoke-virtual {p0, p1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 602
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 604
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 605
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 607
    :cond_4a
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_1a .. :try_end_4b} :catchall_7b

    .line 611
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 612
    const-string/jumbo v5, "locksettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 614
    iget-object v5, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->removeUser(I)V
    :try_end_77
    .catchall {:try_start_4b .. :try_end_77} :catchall_7e

    .line 616
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 618
    return-void

    .line 607
    :catchall_7b
    move-exception v5

    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v5

    .line 616
    :catchall_7e
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public updateCarrierLockPlusMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1205
    const-string v1, "LockSettingsStorage"

    const-string/jumbo v2, "updateCarrierLockPlusMode!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-direct {p0}, getCarrierLockPlusModeFromFile()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1207
    iput v0, p0, mSKTLockState:I

    .line 1211
    :goto_11
    return v0

    .line 1210
    :cond_12
    const/4 v0, 0x2

    iput v0, p0, mSKTLockState:I

    .line 1211
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public writeAppLockBackupPinHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 546
    invoke-direct {p0, p2}, getAppLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 547
    return-void
.end method

.method public writeAppLockFingerprintPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 566
    invoke-direct {p0, p2}, getAppLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 567
    return-void
.end method

.method public writeAppLockPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 505
    invoke-direct {p0, p2}, getAppLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 506
    return-void
.end method

.method public writeAppLockPatternHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 526
    invoke-direct {p0, p2}, getAppLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 527
    return-void
.end method

.method public writeAppLockPinHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 485
    invoke-direct {p0, p2}, getAppLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 486
    return-void
.end method

.method public writeBackupPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 885
    invoke-virtual {p0, p2}, getLockBackupPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 886
    return-void
.end method

.method public writeBackupPinHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 838
    invoke-virtual {p0, p2}, getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 839
    return-void
.end method

.method public writeCarrierPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1216
    invoke-virtual {p0, p2}, getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1217
    return-void
.end method

.method public writeFMMPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1108
    invoke-virtual {p0, p2}, getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1109
    return-void
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 138
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string/jumbo v0, "value"

    invoke-virtual {v7, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 145
    :try_start_1e
    const-string/jumbo v0, "locksettings"

    const-string/jumbo v1, "name=? AND user=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    const-string/jumbo v0, "locksettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 149
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 150
    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 151
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LockSettingsStorage"

    const-string v5, "Lock screen string was enabled."

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 162
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 163
    iget-object v0, p0, mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_77

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 168
    return-void

    .line 154
    :cond_67
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    :try_start_6a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LockSettingsStorage"

    const-string v5, "Lock screen string was disabled."

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_77

    goto :goto_5b

    .line 165
    :catchall_77
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 157
    :cond_7c
    :try_start_7c
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 158
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lock screen string was changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a5
    .catchall {:try_start_7c .. :try_end_a5} :catchall_77

    goto :goto_5b
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 134
    iget-object v0, p0, mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public writeParentControlPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1083
    invoke-virtual {p0, p2}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1084
    return-void
.end method

.method public writePasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 408
    if-nez p1, :cond_10

    const/4 v0, -0x1

    :goto_3
    iput v0, p0, mStoredCredentialType:I

    .line 411
    invoke-virtual {p0, p2}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 412
    invoke-direct {p0, p2}, clearPatternHash(I)V

    .line 413
    return-void

    .line 408
    :cond_10
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public writePatternHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 396
    if-nez p1, :cond_10

    const/4 v0, -0x1

    :goto_3
    iput v0, p0, mStoredCredentialType:I

    .line 399
    invoke-virtual {p0, p2}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 400
    invoke-direct {p0, p2}, clearPasswordHash(I)V

    .line 401
    return-void

    .line 396
    :cond_10
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public writePersonalModeLocBackupkPinHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1038
    invoke-direct {p0, p2}, getPersonalModeLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1039
    return-void
.end method

.method public writePersonalModeLockFingerprintPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1058
    invoke-direct {p0, p2}, getPersonalModeLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1059
    return-void
.end method

.method public writePersonalModeLockPasswordHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 997
    invoke-direct {p0, p2}, getPersonalModeLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 998
    return-void
.end method

.method public writePersonalModeLockPatternHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p2}, getPersonalModeLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1019
    return-void
.end method

.method public writePersonalModeLockPinHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 977
    invoke-direct {p0, p2}, getPersonalModeLockPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 978
    return-void
.end method

.method public writeSignatureBackupPinHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 950
    invoke-direct {p0, p2}, getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 951
    return-void
.end method

.method public writeSignatureHash([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 930
    invoke-direct {p0, p2}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 931
    return-void
.end method
