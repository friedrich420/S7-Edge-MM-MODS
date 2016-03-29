.class public Lcom/android/settings/ChooseLockEnterpriseIdentity;
.super Landroid/app/Activity;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockEnterpriseIdentity$1;,
        Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
    }
.end annotation


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnforceWithoutCancel:Z

.field private mGenericSSO:Landroid/app/enterprise/sso/GenericSSO;

.field private mIsPasswordChangeEnforced:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOldEnterprisePassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRequestedQuality:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mEnforceWithoutCancel:Z

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 71
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 72
    iput v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    .line 73
    iput v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    .line 74
    iput v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    .line 75
    iput v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    .line 76
    iput v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    .line 77
    iput v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    .line 78
    iput-object v2, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    .line 81
    const/high16 v0, 0x60000

    iput v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    .line 201
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/sso/GenericSSO;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Landroid/app/enterprise/sso/GenericSSO;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/ChooseLockEnterpriseIdentity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->handleAuthFail(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockEnterpriseIdentity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    return v0
.end method

.method private handleAuthFail(I)V
    .locals 13
    .param p1, "error"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 418
    const-string v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleAuthFail:error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v6, 0x0

    .line 420
    .local v6, "result":I
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v11, "isChangeRequested"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 424
    .local v4, "pwdChangeEnforceStatus":I
    const/4 v5, 0x0

    .line 427
    .local v5, "pwdChangeTimeout":I
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 428
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v2, :cond_7

    .line 429
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 432
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 443
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :cond_0
    :goto_0
    if-lt v4, v7, :cond_3

    .line 444
    if-gtz v5, :cond_1

    if-eq v4, v7, :cond_2

    :cond_1
    const/4 v9, 0x2

    if-lt v4, v9, :cond_8

    :cond_2
    move v3, v7

    .line 447
    .local v3, "enforceWithoutCancel":Z
    :goto_1
    const-string v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pwdChangeEnforceStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pwdChangeTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enforceWithoutCancel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-nez v3, :cond_3

    .line 453
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-direct {p0, v9, v5}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->scheduleNextPwdChange(II)V

    .line 456
    .end local v3    # "enforceWithoutCancel":Z
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v9, :cond_6

    .line 458
    const/16 v9, -0xf

    if-eq p1, v9, :cond_4

    const/16 v9, -0x10

    if-ne p1, v9, :cond_5

    .line 460
    :cond_4
    const/16 v6, 0x6b

    .line 461
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const v10, 0x7f0e168a

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 466
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    .line 470
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    .line 473
    return-void

    .line 437
    .restart local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :cond_7
    :try_start_1
    const-string v9, "ChooseLockEnterpriseIdentity"

    const-string v10, "ekm is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 440
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecurityException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_8
    move v3, v8

    .line 444
    goto/16 :goto_1
.end method

.method private handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 372
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    .line 375
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    const/high16 v5, 0x60000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, p2, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "db_lockscreen_is_smart_lock"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v3, :cond_0

    .line 382
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v2, "warningClearIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x10000000

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v7, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 394
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 395
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v5, "setPwdChangeRequested"

    invoke-static {v3, v4, v5, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    invoke-direct {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    .line 408
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sender":Landroid/app/PendingIntent;
    .end local v2    # "warningClearIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    .line 414
    return-void
.end method

.method private scheduleNextPwdChange(II)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    mul-int/2addr v6, p2

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 478
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5, v0, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 482
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 484
    iget-object v4, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v6, "setPwdChangeRequested"

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 490
    const-string v4, "ChooseLockEnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleNextPwdChange: for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 356
    const-string v1, "ChooseLockEnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 359
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 362
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    if-eqz v8, :cond_6

    .line 502
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 503
    const v8, 0x7f0e116e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 656
    :goto_0
    return-object v8

    .line 508
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 509
    const v8, 0x7f0e116d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 514
    :cond_1
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 515
    const v8, 0x7f0e1170

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 520
    :cond_2
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 521
    const v8, 0x7f0e116f

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 524
    :cond_3
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 525
    const v8, 0x7f0e1171

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 530
    :cond_4
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 531
    const v8, 0x7f0e1172

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 534
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 539
    :cond_6
    if-eqz p1, :cond_8

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v8, v9, :cond_7

    .line 541
    const v8, 0x7f0e02a5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 544
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v8, v9, :cond_8

    .line 545
    const v8, 0x7f0e02ab

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 549
    :cond_8
    const/4 v2, 0x0

    .line 550
    .local v2, "letters":I
    const/4 v5, 0x0

    .line 551
    .local v5, "numbers":I
    const/4 v3, 0x0

    .line 552
    .local v3, "lowercase":I
    const/4 v6, 0x0

    .line 553
    .local v6, "symbols":I
    const/4 v7, 0x0

    .line 554
    .local v7, "uppercase":I
    const/4 v4, 0x0

    .line 555
    .local v4, "nonletter":I
    if-eqz p1, :cond_e

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_e

    .line 557
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 559
    .local v0, "c":C
    const/16 v8, 0x20

    if-lt v0, v8, :cond_9

    const/16 v8, 0x7f

    if-le v0, v8, :cond_a

    .line 560
    :cond_9
    const v8, 0x7f0e02af

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 562
    :cond_a
    const/16 v8, 0x30

    if-lt v0, v8, :cond_b

    const/16 v8, 0x39

    if-gt v0, v8, :cond_b

    .line 563
    add-int/lit8 v5, v5, 0x1

    .line 564
    add-int/lit8 v4, v4, 0x1

    .line 556
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 565
    :cond_b
    const/16 v8, 0x41

    if-lt v0, v8, :cond_c

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_c

    .line 566
    add-int/lit8 v2, v2, 0x1

    .line 567
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 568
    :cond_c
    const/16 v8, 0x61

    if-lt v0, v8, :cond_d

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_d

    .line 569
    add-int/lit8 v2, v2, 0x1

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 572
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 573
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 578
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_e
    iget v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    if-ge v2, v8, :cond_f

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130002

    iget v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 583
    :cond_f
    iget v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    if-ge v5, v8, :cond_10

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130005

    iget v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 588
    :cond_10
    iget v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    if-ge v3, v8, :cond_11

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130003

    iget v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 593
    :cond_11
    iget v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    if-ge v7, v8, :cond_12

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130004

    iget v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 598
    :cond_12
    iget v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    if-ge v6, v8, :cond_13

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130006

    iget v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 603
    :cond_13
    iget v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    if-ge v4, v8, :cond_14

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130007

    iget v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 617
    :cond_14
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/enterprise/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v8

    if-eqz v8, :cond_1b

    .line 622
    :cond_15
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 623
    const v8, 0x7f0e116e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 628
    :cond_16
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 629
    const v8, 0x7f0e116d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 634
    :cond_17
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 635
    const v8, 0x7f0e1170

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 640
    :cond_18
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 641
    const v8, 0x7f0e116f

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 644
    :cond_19
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 645
    const v8, 0x7f0e1171

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 650
    :cond_1a
    iget-object v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, p1}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 651
    const v8, 0x7f0e1172

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 656
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iput-object p0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    .line 92
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 93
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/sso/GenericSSO;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/sso/GenericSSO;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Landroid/app/enterprise/sso/GenericSSO;

    .line 94
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 98
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 101
    .local v5, "userId":I
    const-string v6, "enterprise.password_old"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    .line 102
    if-eqz v1, :cond_0

    const-string v6, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    iput-boolean v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    .line 107
    :cond_0
    const-string v6, "lockscreen.password_type"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    .line 110
    const-string v6, "lockscreen.password_min"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 113
    const-string v6, "lockscreen.password_max"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 115
    const-string v6, "lockscreen.password_min_letters"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    .line 118
    const-string v6, "lockscreen.password_min_uppercase"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    .line 121
    const-string v6, "lockscreen.password_min_lowercase"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    .line 124
    const-string v6, "lockscreen.password_min_numeric"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    .line 127
    const-string v6, "lockscreen.password_min_symbols"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    .line 130
    const-string v6, "lockscreen.password_min_nonletter"

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    .line 135
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 137
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 140
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    const/high16 v7, 0x20000

    if-ne v6, v7, :cond_7

    .line 142
    iput v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 151
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :goto_0
    const-string v6, "lockscreen.password_old"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    .line 152
    const/4 v0, 0x4

    .line 154
    .local v0, "MIN_PWD_LENGTH":I
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-lt v6, v8, :cond_8

    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-ge v6, v7, :cond_8

    .line 163
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 166
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v6, :cond_3

    .line 167
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 170
    :cond_3
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v6, :cond_4

    .line 171
    iget-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v6, v9}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 172
    iput-boolean v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    .line 189
    :cond_4
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v6, v8, :cond_5

    .line 190
    iput v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    .line 193
    :cond_5
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v6, v10, :cond_6

    .line 194
    iput v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    .line 196
    :cond_6
    const/4 v2, 0x0

    .line 197
    .local v2, "arg":Ljava/lang/String;
    new-instance v6, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;

    invoke-direct {v6, p0, v11}, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/android/settings/ChooseLockEnterpriseIdentity;Lcom/android/settings/ChooseLockEnterpriseIdentity$1;)V

    new-array v7, v9, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void

    .line 144
    .end local v0    # "MIN_PWD_LENGTH":I
    .end local v2    # "arg":Ljava/lang/String;
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_7
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_0

    .line 157
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_8
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v6, v8, :cond_9

    .line 158
    iput v8, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1

    .line 159
    :cond_9
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v7, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v6, v7, :cond_2

    .line 160
    iget v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    iput v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1
.end method
