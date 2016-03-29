.class public Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;
.super Ljava/lang/Object;
.source "KeyguardSecurityPolicyUtils.java"


# static fields
.field private static sInstance:Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsDeviceDisableForMaxFailedAttempt:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 63
    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->sInstance:Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->sInstance:Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->sInstance:Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    return-object v0
.end method


# virtual methods
.method public getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "KeyguardSecurityPolicyUtils"

    const-string v1, "Can\'t get EnterpriseDeviceManager: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 143
    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v1

    .line 143
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 140
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 141
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    if-eqz v6, :cond_2

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 143
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public hideCarrierTextInfo(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "knoxCustomLockScreenState":I
    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 155
    .local v0, "knoxCM":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v3, "getLockScreenHiddenItems"

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 158
    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 159
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    .line 160
    const/4 v3, 0x1

    .line 163
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isMDMenabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    return v0
.end method

.method public isKnoxCustomLockScreenDisabled()Z
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    .line 176
    .local v0, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenOverrideMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKnoxCustomLockScreenOverridden()Z
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    .line 169
    .local v0, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenOverrideMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMDMenabled()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isMDMenabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "maxNumFailedAttemptForDisable":I
    const/4 v0, 0x0

    .line 103
    .local v0, "curNumFailedAttempts":I
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v1

    .line 106
    if-lez v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 109
    if-lt v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 112
    :cond_0
    const-string v2, "KeyguardSecurityPolicyUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportFailedUnlockAttempt :  maxNumFailedAttemptForDisable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , curNumFailedAttempts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "KeyguardSecurityPolicyUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeviceDisabledForMaxFailedAttempt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v2, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDeviceDisabledForMaxFailedAttempts()V

    .line 124
    .end local v0    # "curNumFailedAttempts":I
    .end local v1    # "maxNumFailedAttemptForDisable":I
    :cond_1
    :goto_1
    return-void

    .line 109
    .restart local v0    # "curNumFailedAttempts":I
    .restart local v1    # "maxNumFailedAttemptForDisable":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 122
    .end local v0    # "curNumFailedAttempts":I
    .end local v1    # "maxNumFailedAttemptForDisable":I
    :cond_3
    const-string v2, "KeyguardSecurityPolicyUtils"

    const-string v3, "MDM is not enabled..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
