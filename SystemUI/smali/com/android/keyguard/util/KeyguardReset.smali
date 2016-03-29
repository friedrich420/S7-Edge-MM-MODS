.class public Lcom/android/keyguard/util/KeyguardReset;
.super Ljava/lang/Object;
.source "KeyguardReset.java"


# static fields
.field private static sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 41
    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 44
    const-string v0, "KeyguardReset"

    const-string v1, "KeyguardReset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    return-void
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 60
    const-string v3, "KeyguardReset"

    const-string v4, "findSDCard ()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 66
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 67
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 68
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "KeyguardReset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSDCard ( storageVolumes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    aget-object v3, v2, v0

    .line 75
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v3

    .line 67
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v3, "KeyguardReset"

    const-string v4, "findSDCard ( null )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardReset;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "KeyguardReset"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/android/keyguard/util/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/util/KeyguardReset;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/KeyguardReset;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/keyguard/util/KeyguardReset;->sKeyguardReset:Lcom/android/keyguard/util/KeyguardReset;

    return-object v0
.end method

.method private removeSubUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 158
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 161
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 162
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "KeyguardReset"

    const-string v3, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public updateProgressDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 91
    return-void
.end method

.method public wipeOut(I)V
    .locals 4
    .param p1, "attemptsCount"    # I

    .prologue
    .line 94
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 95
    .local v0, "currentUser":I
    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    .line 97
    .local v1, "expiringUser":I
    const/4 v2, 0x1

    .line 98
    .local v2, "userType":I
    if-ne v1, v0, :cond_1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    const/4 v2, 0x3

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/util/KeyguardReset;->wipeOut(II)V

    .line 106
    return-void

    .line 102
    :cond_1
    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 103
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public wipeOut(II)V
    .locals 13
    .param p1, "attemptsCount"    # I
    .param p2, "usertype"    # I

    .prologue
    .line 110
    const-string v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wipeOut() attemptsCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " usertype = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v9, 0x0

    .line 112
    .local v9, "wipeExcludeExternalStorage":Z
    const-string v7, "com.android.email"

    .line 113
    .local v7, "pkg":Ljava/lang/String;
    const-string v0, "com.android.email.SecurityPolicy$PolicyAdmin"

    .line 114
    .local v0, "cls":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const-string v10, "com.android.email"

    const-string v11, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v5, "mAdminName":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 118
    .local v6, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v10, 0x1

    if-ne p2, v10, :cond_2

    .line 119
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 121
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v9

    .line 123
    const-string v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wipeExcludeExternalStorage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/keyguard/util/KeyguardReset;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 126
    .local v8, "sdcard":Landroid/os/storage/StorageVolume;
    sget v10, Lcom/android/keyguard/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v10}, Lcom/android/keyguard/util/KeyguardReset;->updateProgressDialog(I)V

    .line 127
    if-eqz v8, :cond_0

    if-nez v9, :cond_0

    .line 128
    const-string v10, "KeyguardReset"

    const-string v11, "wipeOut ( send ACTION_MASTER_CLEAR/EXTRA_WIPE_EXTERNAL_STORAGE=true)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    const-string v10, "android.intent.extra.REASON"

    const-string v11, "MasterClearConfirm"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v10, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "sdcard":Landroid/os/storage/StorageVolume;
    :goto_0
    return-void

    .line 135
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v8    # "sdcard":Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->factoryResetWithoutUI()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 136
    const-string v10, "KeyguardReset"

    const-string v11, "wipeOut ( send SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :cond_1
    const-string v10, "KeyguardReset"

    const-string v11, "wipeOut ( send ACTION_MASTER_CLEAR )"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "sdcard":Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v10, "KeyguardReset"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wipeOut() removeSubUser usertype : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 146
    .local v1, "currentUserId":I
    const/4 v10, 0x2

    if-ne p2, v10, :cond_3

    .line 147
    iget-object v10, p0, Lcom/android/keyguard/util/KeyguardReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    .line 149
    .local v3, "expiringUser":I
    invoke-direct {p0, v3}, Lcom/android/keyguard/util/KeyguardReset;->removeSubUser(I)V

    goto :goto_0

    .line 151
    .end local v3    # "expiringUser":I
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/util/KeyguardReset;->removeSubUser(I)V

    goto :goto_0
.end method
