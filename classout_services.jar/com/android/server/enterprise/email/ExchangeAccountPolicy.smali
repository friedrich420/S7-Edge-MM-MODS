.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final NOTE_AUTHORITY:Ljava/lang/String; = "note"

.field private static final PERMISSION_SMIME_CERTIFICATE:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

.field private manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

.field private preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mDeviceId:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    .line 104
    iput-boolean v0, p0, mExchangeServiceDisabled:Z

    .line 105
    iput-boolean v0, p0, mRestartExtendDelay:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, preCallingUid:I

    .line 110
    iput-object v1, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 155
    iput-object v1, p0, mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 189
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1611
    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 162
    :try_start_24
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v0, p0, mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 166
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "success to add receiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4e} :catch_78

    .line 174
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_4e
    const/4 v6, 0x0

    .line 175
    .local v6, "containerId":I
    :try_start_4f
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 176
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/ComponentName;

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v9, "syncMgrCn":Landroid/content/ComponentName;
    if-eqz v8, :cond_77

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_77

    .line 180
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Enabling EAS ExchangeService"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v9, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_77} :catch_81

    .line 187
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_77
    :goto_77
    return-void

    .line 169
    .end local v6    # "containerId":I
    :catch_78
    move-exception v7

    .line 170
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Regist BroadCast failed : "

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    .line 184
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "containerId":I
    :catch_81
    move-exception v7

    .line 185
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Constructor failed : "

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_77
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 99
    sget-object v0, mDeviceId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    .line 99
    iget-boolean v0, p0, mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    .line 99
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 99
    invoke-static {p0}, getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mRestartExtendDelay:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct/range {p0 .. p6}, putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Landroid/app/enterprise/ContextInfo;JIIZ)Z
    .registers 9
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z

    .prologue
    .line 99
    invoke-direct/range {p0 .. p6}, resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v0

    return v0
.end method

.method private enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 200
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const-string v3, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v2, p1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 202
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 203
    .local v0, "callingUid":I
    iget v2, p0, preCallingUid:I

    if-eq v2, v0, :cond_3d

    .line 204
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 206
    iput v0, p0, preCallingUid:I

    .line 207
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3d
    return-object p1
.end method

.method private enforceUCMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 2
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 219
    return-object p1
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "userID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1299
    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fillInExchangeAccountData() : accId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , userID =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1302
    .local v4, "token":J
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1305
    .local v0, "acc":Landroid/app/enterprise/Account;
    :try_start_30
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v7, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1306
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v7, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1307
    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v7, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1308
    const-string v7, "0"

    iput-object v7, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1309
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v7, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1310
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v7, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1311
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1312
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1313
    iget v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v7, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1314
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v7, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1315
    iget-boolean v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-nez v7, :cond_1b1

    :goto_5c
    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1316
    iget-boolean v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1317
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1318
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1319
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1320
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1321
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1322
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1323
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    .line 1324
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    .line 1325
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    .line 1326
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    .line 1327
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    .line 1328
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    .line 1329
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncCalendarAge:I

    .line 1330
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v3, v0, Landroid/app/enterprise/Account;->mEmailBodyTruncationSize:I

    .line 1331
    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v3, v0, Landroid/app/enterprise/Account;->mEmailRoamingBodyTruncationSize:I

    .line 1332
    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    .local v1, "acct":Landroid/accounts/Account;
    const-string v3, "com.android.contacts"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    .line 1336
    const-string v3, "com.android.calendar"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    .line 1338
    const-string/jumbo v3, "tasks"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z

    .line 1340
    const-string/jumbo v3, "note"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    .line 1343
    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1344
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1345
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string/jumbo v6, "eas"

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1346
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1347
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1348
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1349
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1350
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1351
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1352
    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_1b4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_130
    iput-object v3, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1354
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1355
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1356
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1358
    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1359
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1360
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string/jumbo v6, "eas"

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1361
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1362
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1363
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1364
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1365
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1366
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v6, v3, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1367
    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_1b8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_19a
    iput-object v3, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1369
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1370
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1371
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_1ad} :catch_1bb
    .catchall {:try_start_30 .. :try_end_1ad} :catchall_1c8

    .line 1376
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1379
    .end local v1    # "acct":Landroid/accounts/Account;
    :goto_1b0
    return-object v0

    :cond_1b1
    move v3, v6

    .line 1315
    goto/16 :goto_5c

    .line 1352
    .restart local v1    # "acct":Landroid/accounts/Account;
    :cond_1b4
    :try_start_1b4
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_130

    .line 1367
    :cond_1b8
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1ba} :catch_1bb
    .catchall {:try_start_1b4 .. :try_end_1ba} :catchall_1c8

    goto :goto_19a

    .line 1373
    .end local v1    # "acct":Landroid/accounts/Account;
    :catch_1bb
    move-exception v2

    .line 1374
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1bc
    const-string v3, "ExchangeAccountPolicy"

    const-string/jumbo v6, "fillInExchangeAccountData() : failed."

    invoke-static {v3, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c4
    .catchall {:try_start_1bc .. :try_end_1c4} :catchall_1c8

    .line 1376
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b0

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_1c8
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 2016
    const/4 v0, 0x0

    .line 2017
    .local v0, "ret":Z
    const-string v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2018
    const/4 v0, 0x0

    .line 2034
    :cond_a
    :goto_a
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultValueState() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return v0

    .line 2019
    :cond_2e
    const-string v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2020
    const/4 v0, 0x0

    goto :goto_a

    .line 2021
    :cond_38
    const-string v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2022
    const/4 v0, 0x0

    goto :goto_a

    .line 2023
    :cond_42
    const-string v1, "AllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2024
    const/4 v0, 0x1

    goto :goto_a

    .line 2025
    :cond_4c
    const-string v1, "AllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2026
    const/4 v0, 0x1

    goto :goto_a

    .line 2027
    :cond_56
    const-string v1, "ForceSmimeCertForEncryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2028
    const/4 v0, 0x0

    goto :goto_a

    .line 2029
    :cond_60
    const-string v1, "ForceSmimeCertForSigning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2030
    const/4 v0, 0x0

    goto :goto_a

    .line 2031
    :cond_6a
    const-string v1, "AttachmentEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2032
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private getDefaultValueStateInteger(Ljava/lang/String;)I
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 2038
    const/4 v0, 0x0

    .line 2039
    .local v0, "ret":I
    const-string v1, "IncomingAttachmentSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2040
    const/4 v0, 0x0

    .line 2051
    :cond_a
    :goto_a
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultValueStateInteger() : policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    return v0

    .line 2041
    :cond_2e
    const-string v1, "MaxCalendarAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2042
    const/4 v0, 0x0

    goto :goto_a

    .line 2043
    :cond_38
    const-string v1, "MaxEmailAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2044
    const/4 v0, 0x0

    goto :goto_a

    .line 2045
    :cond_42
    const-string v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2046
    const/4 v0, 0x0

    goto :goto_a

    .line 2047
    :cond_4c
    const-string v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2048
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 193
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 196
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .registers 3
    .param p0, "userId"    # I

    .prologue
    .line 1654
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".exchange.ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1657
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private getPolicyState(IJLjava/lang/String;I)Z
    .registers 18
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 1922
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .line 1923
    .local v8, "ret":Z
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 1924
    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p4, v1, v9

    .line 1926
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1927
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1928
    const-string/jumbo v9, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1929
    const-string v9, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1930
    const/4 v7, 0x0

    .line 1933
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_2e
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ExchangeAccountTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_6e

    move-result-object v7

    .line 1942
    if-eqz v7, :cond_3e

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 1943
    :cond_3e
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPolicyState() : results is default value(null), accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    .end local v8    # "ret":Z
    :goto_6d
    return v8

    .line 1936
    .restart local v8    # "ret":Z
    :catch_6e
    move-exception v4

    .line 1938
    .local v4, "ex":Ljava/lang/Exception;
    const-string v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6d

    .line 1947
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_78
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPolicyState() : results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e4

    const/4 v6, 0x1

    .line 1953
    .local v6, "restricterState":Z
    :goto_ba
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1954
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_be
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e9

    .line 1955
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1956
    .local v2, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_e6

    const-string v9, "1"

    :goto_d4
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_be

    .line 1957
    const-string v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getPolicyState: restricted. "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    .line 1958
    goto :goto_6d

    .line 1951
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :cond_e4
    const/4 v6, 0x0

    goto :goto_ba

    .line 1956
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6    # "restricterState":Z
    :cond_e6
    const-string v9, "0"

    goto :goto_d4

    .line 1962
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_e9
    const-string v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getPolicyState: no restrictData. "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    if-nez v6, :cond_f7

    const/4 v9, 0x1

    :goto_f4
    move v8, v9

    goto/16 :goto_6d

    :cond_f7
    const/4 v9, 0x0

    goto :goto_f4
.end method

.method private getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isMinimum"    # Z

    .prologue
    .line 1967
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v9

    .line 1968
    .local v9, "ret":I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .line 1969
    .local v2, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object p4, v2, v11

    .line 1971
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1972
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1973
    const-string/jumbo v11, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1974
    const-string v11, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1975
    const/4 v8, 0x0

    .line 1977
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_2e
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ExchangeAccountTable"

    invoke-virtual {v11, v12, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 1980
    if-eqz v8, :cond_3e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 2012
    .end local v9    # "ret":I
    :cond_3e
    :goto_3e
    return v9

    .line 1983
    .restart local v9    # "ret":I
    :cond_3f
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyStateasInteger() : results = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", accId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", user id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", container id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_7a} :catch_aa

    .line 1993
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1994
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz p6, :cond_b4

    const v7, 0x7fffffff

    .line 1995
    .local v7, "result":I
    :cond_83
    :goto_83
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c4

    .line 1996
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1997
    .local v3, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1998
    .local v10, "value":Ljava/lang/Integer;
    if-eqz v10, :cond_83

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_83

    .line 2000
    if-eqz p6, :cond_b7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v7, :cond_b7

    .line 2001
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_83

    .line 1987
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v7    # "result":I
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_aa
    move-exception v5

    .line 1989
    .local v5, "ex":Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    const-string/jumbo v12, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 1994
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_b4
    const/high16 v7, -0x80000000

    goto :goto_83

    .line 2002
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "result":I
    .restart local v10    # "value":Ljava/lang/Integer;
    :cond_b7
    if-nez p6, :cond_83

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_83

    .line 2003
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_83

    .line 2006
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v10    # "value":Ljava/lang/Integer;
    :cond_c4
    if-eqz p6, :cond_e9

    .line 2007
    const v11, 0x7fffffff

    if-eq v7, v11, :cond_e7

    .line 2011
    :goto_cb
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyStateasInteger() : result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v7

    .line 2012
    goto/16 :goto_3e

    :cond_e7
    move v7, v9

    .line 2007
    goto :goto_cb

    .line 2009
    :cond_e9
    const/high16 v11, -0x80000000

    if-eq v7, v11, :cond_ee

    :goto_ed
    goto :goto_cb

    :cond_ee
    move v7, v9

    goto :goto_ed
.end method

.method private getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .registers 2

    .prologue
    .line 2906
    iget-object v0, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_11

    .line 2907
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 2909
    :cond_11
    iget-object v0, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    return-object v0
.end method

.method private isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 2917
    const/4 v1, 0x0

    .line 2918
    .local v1, "result":Z
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "In isCredentialStorageManaged..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    if-nez p2, :cond_14

    .line 2920
    const-string v3, "ExchangeAccountPolicy"

    const-string/jumbo v4, "credentialStorage is null!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 2934
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_13
    return v2

    .line 2923
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_14
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    :try_start_2e
    invoke-direct {p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 2926
    iget-object v3, p0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {v3, p1, p2}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_39} :catch_5c

    move-result v1

    .line 2933
    :goto_3a
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 2934
    .restart local v2    # "result":I
    goto :goto_13

    .line 2928
    .end local v2    # "result":I
    :cond_54
    :try_start_54
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "UCM service not found!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_3a

    .line 2930
    :catch_5c
    move-exception v0

    .line 2931
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method private isUCMAllowedAndManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    .prologue
    .line 2913
    invoke-direct {p0}, knoxSupportUCM()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, isCredentialStorageManaged(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2887
    const/4 v2, 0x0

    .line 2888
    .local v2, "ret":Z
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_16

    .line 2889
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2890
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 2891
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v0, :cond_16

    .line 2892
    const/4 v2, 0x1

    .line 2902
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_16
    :goto_16
    return v2

    .line 2895
    :cond_17
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    .line 2897
    .local v1, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v1, :cond_16

    iget-boolean v3, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 2898
    const/4 v2, 0x1

    goto :goto_16
.end method

.method private knoxSupportUCM()Z
    .registers 5

    .prologue
    .line 2938
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "In knoxSupportUCM..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const/4 v0, 0x0

    .line 2941
    .local v0, "result":Z
    const/4 v0, 0x1

    .line 2942
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Does KNOX support UCM? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    return v0
.end method

.method private putPolicyState(IIJILjava/lang/String;)Z
    .registers 14
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "value"    # I
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    .line 1905
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1906
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1907
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1908
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1909
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1911
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1912
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1913
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1916
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 1917
    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , value  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    return v2
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .registers 14
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    .line 1886
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1887
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1888
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1889
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1890
    if-eqz p5, :cond_87

    const-string v3, "1"

    :goto_24
    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1893
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1894
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1895
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1897
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 1898
    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , policy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    return v2

    .line 1890
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "ret":Z
    :cond_87
    const-string v3, "0"

    goto :goto_24
.end method

.method private resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I
    .param p5, "type"    # I
    .param p6, "onlyupdateDB"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2861
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2862
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2863
    .local v0, "adminUid":I
    move v3, p4

    .line 2864
    .local v3, "userID":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2865
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x2

    if-ne p5, v6, :cond_3f

    .line 2866
    const-string v6, "ForceSmimeCertForEncryption"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2867
    if-nez p6, :cond_1c

    .line 2868
    invoke-direct {p0, v1, p2, p3, v3}, sendReleaseSMIMECertificateForEncryption(IJI)V

    .line 2880
    :cond_1c
    :goto_1c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2881
    .local v4, "whereValues":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2882
    const-string v6, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2883
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ExchangeAccountTable"

    invoke-virtual {v6, v7, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_3e

    const/4 v5, 0x1

    .end local v4    # "whereValues":Landroid/content/ContentValues;
    :cond_3e
    :goto_3e
    return v5

    .line 2871
    :cond_3f
    const/4 v6, 0x3

    if-ne p5, v6, :cond_51

    .line 2872
    const-string v6, "ForceSmimeCertForSigning"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2873
    if-nez p6, :cond_1c

    .line 2874
    invoke-direct {p0, v1, p2, p3, v3}, sendReleaseSMIMECertificateForSigning(IJI)V

    goto :goto_1c

    .line 2877
    :cond_51
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method

.method private sendReleaseSMIMECertificate(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 1870
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendReleaseSMIMECertificate() : accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1872
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1876
    .local v2, "token":J
    :try_start_41
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_51

    .line 1879
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1881
    return-void

    .line 1879
    :catchall_51
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendReleaseSMIMECertificateForEncryption(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2495
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendReleaseSMIMECertificateForEncryption() : accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2497
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2501
    .local v2, "token":J
    :try_start_41
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_51

    .line 2504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2506
    return-void

    .line 2504
    :catchall_51
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendReleaseSMIMECertificateForSigning(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2471
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendReleaseSMIMECertificateForSigning() : accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2473
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2477
    .local v2, "token":J
    :try_start_41
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_51

    .line 2480
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    return-void

    .line 2480
    :catchall_51
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;
    .param p6, "Action"    # Ljava/lang/String;

    .prologue
    .line 2793
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2794
    const-string v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setForceSMIMECertificateInternal() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2796
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2797
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 2798
    .local v15, "userID":I
    const/4 v11, 0x0

    .line 2799
    .local v11, "result":I
    invoke-direct/range {p0 .. p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v18

    if-nez v18, :cond_62

    .line 2800
    const-string v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setForceSMIMECertificateInternal() : No exist accId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    const/16 v18, 0x3

    .line 2836
    :goto_61
    return v18

    .line 2803
    :cond_62
    if-eqz p4, :cond_6a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_75

    .line 2804
    :cond_6a
    const-string v18, "ExchangeAccountPolicy"

    const-string/jumbo v19, "setForceSMIMECertificateInternal() : certPath is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const/16 v18, 0x1

    goto :goto_61

    .line 2807
    :cond_75
    if-eqz p5, :cond_7d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_88

    .line 2808
    :cond_7d
    const-string v18, "ExchangeAccountPolicy"

    const-string/jumbo v19, "setForceSMIMECertificateInternal() : certPassword is null"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    const/16 v18, 0x2

    goto :goto_61

    .line 2812
    :cond_88
    monitor-enter p0

    .line 2813
    :try_start_89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v4

    .line 2814
    .local v4, "accCertID":J
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v12

    .line 2815
    .local v12, "resultID":J
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p6

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2816
    .local v9, "intent":Landroid/content/Intent;
    const-string v18, "account_id"

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2817
    const-string v18, "cert_path"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2818
    const-string v18, "cert_password_id"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2819
    const-string v18, "certificate_result_id"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c1
    .catchall {:try_start_89 .. :try_end_c1} :catchall_142

    move-result-wide v16

    .line 2822
    .local v16, "token":J
    :try_start_c2
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string v20, "android.permission.sec.SMIME_CERTIFICATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2824
    new-instance v10, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEModeFromAction(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2825
    .local v10, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "S"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v14

    .line 2827
    .local v14, "ret":Z
    const-string v18, "ExchangeAccountPolicy"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_123} :catch_130
    .catchall {:try_start_c2 .. :try_end_123} :catchall_145

    .line 2828
    if-eqz v14, :cond_12e

    const/4 v11, -0x1

    .line 2833
    :goto_126
    :try_start_126
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2835
    .end local v10    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v14    # "ret":Z
    :goto_129
    monitor-exit p0
    :try_end_12a
    .catchall {:try_start_126 .. :try_end_12a} :catchall_142

    move/from16 v18, v11

    .line 2836
    goto/16 :goto_61

    .line 2828
    .restart local v10    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v14    # "ret":Z
    :cond_12e
    const/4 v11, 0x0

    goto :goto_126

    .line 2829
    .end local v10    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v14    # "ret":Z
    :catch_130
    move-exception v8

    .line 2830
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_131
    const-string v18, "ExchangeAccountPolicy"

    const-string/jumbo v19, "setForceSMIMECertificateInternal() : failed. "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13d
    .catchall {:try_start_131 .. :try_end_13d} :catchall_145

    .line 2831
    const/4 v11, 0x0

    .line 2833
    :try_start_13e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_129

    .line 2835
    .end local v4    # "accCertID":J
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "resultID":J
    .end local v16    # "token":J
    :catchall_142
    move-exception v18

    monitor-exit p0
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_142

    throw v18

    .line 2833
    .restart local v4    # "accCertID":J
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v12    # "resultID":J
    .restart local v16    # "token":J
    :catchall_145
    move-exception v18

    :try_start_146
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
    :try_end_14a
    .catchall {:try_start_146 .. :try_end_14a} :catchall_142
.end method

.method private setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .prologue
    .line 2839
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2840
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2841
    .local v7, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2842
    .local v4, "userID":I
    const/4 v8, 0x0

    .line 2844
    .local v8, "ret":Z
    invoke-direct {p0, p1, p2, p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2845
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInernal() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 2858
    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_2b
    return v9

    .line 2849
    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_2c
    const/4 v0, 0x1

    if-eq p4, v0, :cond_32

    const/4 v0, 0x2

    if-ne p4, v0, :cond_54

    .line 2850
    :cond_32
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v8

    .line 2851
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInernal() : release SMIME Encryption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    :cond_54
    const/4 v0, 0x1

    if-eq p4, v0, :cond_5a

    const/4 v0, 0x3

    if-ne p4, v0, :cond_7c

    .line 2855
    :cond_5a
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v8

    .line 2856
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReleaseSMIMECertificateInernal() : release SMIME Signing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    move v9, v8

    .line 2858
    .restart local v9    # "ret":I
    goto :goto_2b
.end method

.method private updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z
    .param p6, "updateField"    # Ljava/lang/String;

    .prologue
    .line 408
    const-wide/16 v4, -0x1

    .line 409
    .local v4, "accId":J
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 410
    .local v7, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 411
    .local v13, "userID":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 413
    .local v8, "containerId":I
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateAccount() :  userID "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 415
    .local v14, "token":J
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 417
    const/16 v16, 0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_14b

    .line 418
    :try_start_3d
    const-string v16, "ExchangeAccountPolicy"

    const-string/jumbo v17, "updateAccount() : Disabling EAS ExchangeService"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 420
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {v8}, getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v12, "syncMgrCn":Landroid/content/ComponentName;
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 424
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, mExchangeServiceDisabled:Z

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_cd

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v4

    .line 430
    :goto_a9
    const-wide/16 v16, -0x1

    cmp-long v16, v4, v16

    if-nez v16, :cond_d0

    .line 431
    const-string v16, "ExchangeAccountPolicy"

    const-string v17, "Enabling EAS ExchangeService : delete account"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v12, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 434
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, mExchangeServiceDisabled:Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_c9} :catch_12a
    .catchall {:try_start_3d .. :try_end_c9} :catchall_161

    .line 463
    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_c9
    :goto_c9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    :goto_cc
    return-wide v4

    .line 428
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_cd
    const-wide/16 v4, -0x1

    goto :goto_a9

    .line 437
    :cond_d0
    if-eqz v6, :cond_c9

    .line 440
    :try_start_d2
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateAccount() : Sending intent to rename"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v10, 0x0

    .line 442
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v16

    if-eqz v16, :cond_13b

    .line 443
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v16, "com.samsung.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v10    # "intent":Landroid/content/Intent;
    :goto_103
    const-string v16, "accountid"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 451
    const-string v16, "alias"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v18, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_129} :catch_12a
    .catchall {:try_start_d2 .. :try_end_129} :catchall_161

    goto :goto_c9

    .line 460
    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :catch_12a
    move-exception v9

    .line 461
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_12b
    const-string v16, "ExchangeAccountPolicy"

    const-string/jumbo v17, "updateAccount() failed : "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_137
    .catchall {:try_start_12b .. :try_end_137} :catchall_161

    .line 463
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_cc

    .line 447
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_13b
    :try_start_13b
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    const-string v16, "com.android.email.RENAME_CERTIFICATE"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10    # "intent":Landroid/content/Intent;
    goto :goto_103

    .line 456
    .end local v6    # "alias":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_14b
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_15e} :catch_12a
    .catchall {:try_start_13b .. :try_end_15e} :catchall_161

    move-result-wide v4

    goto/16 :goto_c9

    .line 463
    :catchall_161
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method


# virtual methods
.method public addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 52
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v31}, addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .registers 55
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;
    .param p20, "peakStarttime"    # I
    .param p21, "peakEndtime"    # I
    .param p22, "peakDays"    # I
    .param p23, "offPeak"    # I
    .param p24, "roamingSchedule"    # I
    .param p25, "retrivalSize"    # I
    .param p26, "periodCalendar"    # I
    .param p27, "isNotify"    # Z
    .param p28, "syncContacts"    # I
    .param p29, "syncCalendar"    # I
    .param p30, "certificate_data"    # [B
    .param p31, "certificate_password"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 306
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v22

    .line 308
    .local v22, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 311
    .local v11, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 313
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    .line 314
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 315
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 316
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 317
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 318
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 319
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    .line 320
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    .line 322
    if-eqz p3, :cond_49

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz p14, :cond_49

    if-eqz p10, :cond_49

    if-nez p4, :cond_53

    .line 324
    :cond_49
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-wide/16 v12, -0x1

    .line 403
    :goto_52
    return-wide v12

    .line 332
    :cond_53
    const/4 v4, 0x1

    move/from16 v0, p12

    if-ne v4, v0, :cond_67

    const/4 v4, 0x1

    move/from16 v0, p13

    if-ne v4, v0, :cond_67

    .line 333
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-wide/16 v12, -0x1

    goto :goto_52

    .line 338
    :cond_67
    const-string/jumbo v8, "eas"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p14

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8b

    .line 340
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-wide/16 v12, -0x1

    goto :goto_52

    .line 344
    :cond_8b
    const-wide/16 v12, 0x0

    .line 345
    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 348
    .local v20, "token":J
    :try_start_91
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p18

    invoke-virtual {v0, v1, v2}, setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16

    .line 352
    .local v16, "newAccountID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p31

    invoke-virtual {v0, v1, v2}, setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    .line 354
    .local v18, "newCertificateID":J
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v15, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 357
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string/jumbo v4, "service"

    const-string/jumbo v5, "eas"

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v4, "server_name"

    move-object/from16 v0, p14

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string/jumbo v4, "user_name"

    move-object/from16 v0, p4

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v4, "user_passwd_id"

    move-wide/from16 v0, v16

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 362
    const-string/jumbo v4, "serverPathPrefix"

    move-object/from16 v0, p19

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string/jumbo v5, "use_ssl"

    if-eqz p15, :cond_1f8

    const/4 v4, 0x1

    :goto_109
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    const-string/jumbo v5, "use_tsl"

    if-eqz p16, :cond_1fb

    const/4 v4, 0x1

    :goto_112
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string/jumbo v5, "trust_all"

    if-eqz p17, :cond_1fe

    const/4 v4, 0x1

    :goto_11b
    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string/jumbo v4, "domain"

    move-object/from16 v0, p5

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string/jumbo v4, "peak_starttime"

    move/from16 v0, p20

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string/jumbo v4, "peak_endtime"

    move/from16 v0, p21

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string/jumbo v4, "peak_days"

    move/from16 v0, p22

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string/jumbo v4, "peak"

    move/from16 v0, p7

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string/jumbo v4, "off_peak"

    move/from16 v0, p23

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    const-string/jumbo v4, "roaming_schedule"

    move/from16 v0, p24

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string/jumbo v4, "period_email"

    move/from16 v0, p6

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string/jumbo v4, "retrival_size"

    move/from16 v0, p25

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string/jumbo v4, "period_calendar"

    move/from16 v0, p26

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string/jumbo v4, "notify"

    move/from16 v0, p27

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const-string/jumbo v4, "sync_contacts"

    move/from16 v0, p28

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string/jumbo v4, "sync_calendar"

    move/from16 v0, p29

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v4, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v4, "signature"

    move-object/from16 v0, p11

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v4, "vibrate_when_silent"

    move/from16 v0, p13

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string/jumbo v4, "vibrate"

    move/from16 v0, p12

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    const-string/jumbo v4, "is_default"

    move/from16 v0, p8

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const-string v4, "certificate_data"

    move-object/from16 v0, p30

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 391
    const-string v4, "certificate_password_id"

    move-wide/from16 v0, v18

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 392
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v4, v15, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 395
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNewAccount() EX : sent intent to Email app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_1ec} :catch_201
    .catchall {:try_start_91 .. :try_end_1ec} :catchall_20d

    .line 400
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "newAccountID":J
    .end local v18    # "newCertificateID":J
    :goto_1ef
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 363
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "newAccountID":J
    .restart local v18    # "newCertificateID":J
    :cond_1f8
    const/4 v4, 0x0

    goto/16 :goto_109

    .line 364
    :cond_1fb
    const/4 v4, 0x0

    goto/16 :goto_112

    .line 365
    :cond_1fe
    const/4 v4, 0x0

    goto/16 :goto_11b

    .line 397
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "newAccountID":J
    .end local v18    # "newCertificateID":J
    :catch_201
    move-exception v14

    .line 398
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_202
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "addNewAccount() EX : failed. "

    invoke-static {v4, v5, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_209
    .catchall {:try_start_202 .. :try_end_209} :catchall_20d

    .line 400
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1ef

    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_20d
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public addNewAccount_new(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ExchangeAccount;)J
    .registers 41
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/app/enterprise/ExchangeAccount;

    .prologue
    .line 2508
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2509
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v34

    .line 2510
    .local v34, "userID":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2512
    .local v14, "containerId":I
    if-nez p2, :cond_18

    .line 2514
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    const-wide/16 v12, -0x1

    .line 2606
    :goto_17
    return-wide v12

    .line 2518
    :cond_18
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2519
    .local v15, "displayName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2520
    .local v16, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2521
    .local v7, "serverAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2522
    .local v23, "protocolVersion":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2523
    .local v28, "senderName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2524
    .local v31, "signature":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2525
    .local v6, "easUser":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2526
    .local v5, "easDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2527
    .local v29, "serverPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPathPrefix:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2528
    .local v30, "serverPathPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    move/from16 v17, v0

    .line 2529
    .local v17, "emailNotificationVibrateAlways":Z
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    if-nez v4, :cond_8e

    const/16 v18, 0x1

    .line 2531
    .local v18, "emailNotificationVibrateWhenSilent":Z
    :goto_76
    if-eqz v16, :cond_84

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    if-eqz v7, :cond_84

    if-eqz v23, :cond_84

    if-nez v6, :cond_91

    .line 2533
    :cond_84
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    const-wide/16 v12, -0x1

    goto :goto_17

    .line 2529
    .end local v18    # "emailNotificationVibrateWhenSilent":Z
    :cond_8e
    const/16 v18, 0x0

    goto :goto_76

    .line 2536
    .restart local v18    # "emailNotificationVibrateWhenSilent":Z
    :cond_91
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_a6

    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_a6

    .line 2537
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    const-wide/16 v12, -0x1

    goto/16 :goto_17

    .line 2541
    :cond_a6
    const-string/jumbo v8, "eas"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    const-wide/16 v36, 0x0

    cmp-long v4, v8, v36

    if-lez v4, :cond_c5

    .line 2543
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount : Error :: Account already exists."

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const-wide/16 v12, -0x1

    goto/16 :goto_17

    .line 2546
    :cond_c5
    const-wide/16 v12, 0x0

    .line 2547
    .local v12, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 2551
    .local v32, "token":J
    :try_start_cb
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() New : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    if-eqz v4, :cond_12f

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    if-eqz v4, :cond_12f

    .line 2554
    const-string v4, "ExchangeAccountPolicy"

    const-string v8, "addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificareMode:I

    move/from16 v22, v0

    .line 2556
    .local v22, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2557
    .local v11, "caller":Ljava/lang/String;
    new-instance v21, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v4, v8, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2558
    .local v21, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .line 2561
    .end local v11    # "caller":Ljava/lang/String;
    .end local v21    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v22    # "mode":I
    :cond_12f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v24

    .line 2562
    .local v24, "newAccountID":J
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v26

    .line 2564
    .local v26, "newCertificateID":J
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-static {v14, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v20, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2567
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2568
    const-string/jumbo v4, "service"

    const-string/jumbo v8, "eas"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2569
    const-string/jumbo v4, "server_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2570
    const-string/jumbo v4, "user_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2571
    const-string/jumbo v4, "user_passwd_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2572
    const-string/jumbo v4, "serverPathPrefix"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    const-string/jumbo v8, "use_ssl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mUseSSL:Z

    if-eqz v4, :cond_2ea

    const/4 v4, 0x1

    :goto_19f
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2574
    const-string/jumbo v8, "use_tsl"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mUseTLS:Z

    if-eqz v4, :cond_2ed

    const/4 v4, 0x1

    :goto_1ae
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2575
    const-string/jumbo v8, "trust_all"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mAcceptAllCertificates:Z

    if-eqz v4, :cond_2f0

    const/4 v4, 0x1

    :goto_1bd
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2576
    const-string/jumbo v4, "domain"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2577
    const-string/jumbo v4, "peak_starttime"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakStarttime:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2578
    const-string/jumbo v4, "peak_endtime"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakEndtime:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2579
    const-string/jumbo v4, "peak_days"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakDays:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2580
    const-string/jumbo v4, "peak"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncInterval:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2581
    const-string/jumbo v4, "off_peak"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mOffPeak:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2582
    const-string/jumbo v4, "roaming_schedule"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mRoamingSchedule:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2583
    const-string/jumbo v4, "period_email"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncLookback:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2584
    const-string/jumbo v4, "retrival_size"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mRetrivalSize:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2585
    const-string/jumbo v4, "period_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mPeriodCalendar:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2586
    const-string/jumbo v4, "notify"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mIsNotify:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2587
    const-string/jumbo v4, "sync_contacts"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncContacts:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2588
    const-string/jumbo v4, "sync_calendar"

    move-object/from16 v0, p2

    iget v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncCalendar:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2589
    const-string v4, "account_name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2590
    const-string/jumbo v4, "signature"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2591
    const-string/jumbo v8, "vibrate_when_silent"

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    if-nez v4, :cond_2f3

    const/4 v4, 0x1

    :goto_27f
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2592
    const-string/jumbo v4, "vibrate"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2593
    const-string/jumbo v4, "is_default"

    move-object/from16 v0, p2

    iget-boolean v8, v0, Landroid/app/enterprise/ExchangeAccount;->mIsDefault:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2594
    const-string v4, "certificate_data"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_data:[B

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2595
    const-string v4, "certificate_password_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2596
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v34

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2598
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_2e5} :catch_2f5
    .catchall {:try_start_cb .. :try_end_2e5} :catchall_315

    .line 2603
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_17

    .line 2573
    :cond_2ea
    const/4 v4, 0x0

    goto/16 :goto_19f

    .line 2574
    :cond_2ed
    const/4 v4, 0x0

    goto/16 :goto_1ae

    .line 2575
    :cond_2f0
    const/4 v4, 0x0

    goto/16 :goto_1bd

    .line 2591
    :cond_2f3
    const/4 v4, 0x0

    goto :goto_27f

    .line 2600
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v24    # "newAccountID":J
    .end local v26    # "newCertificateID":J
    :catch_2f5
    move-exception v19

    .line 2601
    .local v19, "ex":Ljava/lang/Exception;
    :try_start_2f6
    const-string v4, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() NEW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_310
    .catchall {:try_start_2f6 .. :try_end_310} :catchall_315

    .line 2603
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_17

    .end local v19    # "ex":Ljava/lang/Exception;
    :catchall_315
    move-exception v4

    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "allow"    # Z

    .prologue
    .line 2216
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2217
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2219
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2220
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 2221
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2222
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2227
    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_40
    return v8

    .line 2225
    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_41
    const-string v7, "AllowSettingChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 2226
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowEmailSettingsChange() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , allow  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 2227
    .restart local v8    # "ret":I
    goto :goto_40
.end method

.method public allowInComingAttachments(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 2139
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2140
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2142
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2143
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 2144
    .local v0, "ret":Z
    invoke-direct {p0, p1, p3, p4}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2145
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2152
    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_40
    return v8

    .line 2149
    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_41
    const-string v7, "AttachmentEnable"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 2151
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 2152
    .restart local v8    # "ret":I
    goto :goto_40
.end method

.method public createAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;
    .param p6, "serverPassword"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "addNewAccount() EX 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v0 .. v19}, addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1433
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1434
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1435
    .local v8, "containerId":I
    const/4 v11, 0x0

    .line 1437
    .local v11, "ret":Z
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const/4 v4, 0x0

    .line 1439
    .local v4, "EmailAddress":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1441
    .local v5, "InComingServerAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v16

    if-eqz v16, :cond_86

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    .line 1443
    .local v7, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v7, :cond_5f

    .line 1444
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount_new() : Not valid accId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 1492
    .end local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_5e
    return v12

    .line 1447
    .end local v12    # "ret":I
    .restart local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v11    # "ret":Z
    :cond_5f
    iget-object v4, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 1448
    iget-object v5, v7, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 1460
    .end local v7    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_63
    if-eqz v4, :cond_67

    if-nez v5, :cond_c2

    .line 1462
    :cond_67
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : no Inforamtion for accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 1463
    .restart local v12    # "ret":I
    goto :goto_5e

    .line 1451
    .end local v12    # "ret":I
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 1452
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_9e

    iget-boolean v0, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v16, v0

    if-nez v16, :cond_bd

    .line 1453
    :cond_9e
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : No exist accId : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 1454
    .restart local v12    # "ret":I
    goto :goto_5e

    .line 1456
    .end local v12    # "ret":I
    :cond_bd
    iget-object v4, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 1457
    iget-object v5, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    goto :goto_63

    .line 1466
    .end local v6    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_c2
    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f2

    .line 1467
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 1468
    .restart local v12    # "ret":I
    goto/16 :goto_5e

    .line 1471
    .end local v12    # "ret":I
    :cond_f2
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 1472
    .local v13, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1475
    .local v14, "token":J
    :try_start_fa
    const-string v16, "ExchangeAccountPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "deleteAccount() : accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , userId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v16, "edm.intent.action.internal.DELETE_EMAILACCOUNT"

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v10, "intent":Landroid/content/Intent;
    const-string v16, "account_id"

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1479
    const-string/jumbo v16, "user_id"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    const-string/jumbo v16, "service"

    const-string/jumbo v17, "eas"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const-string/jumbo v16, "server_name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v18, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_17a} :catch_181
    .catchall {:try_start_fa .. :try_end_17a} :catchall_193

    .line 1485
    const/4 v11, 0x1

    .line 1490
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "intent":Landroid/content/Intent;
    :goto_17e
    move v12, v11

    .line 1492
    .restart local v12    # "ret":I
    goto/16 :goto_5e

    .line 1486
    .end local v12    # "ret":I
    :catch_181
    move-exception v9

    .line 1487
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_182
    const-string v16, "ExchangeAccountPolicy"

    const-string/jumbo v17, "deleteAccount() : failed. "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18e
    .catchall {:try_start_182 .. :try_end_18e} :catchall_193

    .line 1488
    const/4 v11, 0x0

    .line 1490
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17e

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_193
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
.end method

.method public getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 2671
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2672
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, " getAccountCertificatePassword calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    const/4 v3, 0x0

    .line 2686
    :goto_10
    return-object v3

    .line 2675
    :cond_11
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v4, p1, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2676
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2677
    .local v1, "containerId":I
    const/4 v3, 0x0

    .line 2679
    .local v3, "password":Ljava/lang/String;
    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2680
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_3e

    move-result-object v3

    .line 2685
    .end local v0    # "caller":Ljava/lang/String;
    :goto_35
    const-string v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getAccountCertificatePassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2681
    :catch_3e
    move-exception v2

    .line 2682
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getAccountCertificatePassword() failed"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2683
    const/4 v3, 0x0

    goto :goto_35
.end method

.method public getAccountDetails(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/Account;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1276
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1277
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1278
    .local v2, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1279
    .local v4, "userID":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccountDetails() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,  userID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const/4 v3, 0x0

    .line 1281
    .local v3, "ret":Landroid/app/enterprise/Account;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1282
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v1

    .line 1283
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v1, :cond_40

    .line 1285
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Landroid/app/enterprise/Account;

    move-result-object v3

    .line 1295
    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_40
    :goto_40
    return-object v3

    .line 1289
    :cond_41
    iget-object v5, p0, mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {p1, p2, p3, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1291
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_40

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_40

    .line 1292
    invoke-direct {p0, v2, v0, v4}, fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v3

    goto :goto_40
.end method

.method public getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 2651
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2652
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, " getAccountEmailPassword calls from Profile return default value"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const/4 v3, 0x0

    .line 2666
    :goto_10
    return-object v3

    .line 2655
    :cond_11
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const-string v5, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v4, p1, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2656
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2657
    .local v1, "containerId":I
    const/4 v3, 0x0

    .line 2659
    .local v3, "password":Ljava/lang/String;
    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2660
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_3e

    move-result-object v3

    .line 2665
    .end local v0    # "caller":Ljava/lang/String;
    :goto_35
    const-string v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getAccountEmailPassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2661
    :catch_3e
    move-exception v2

    .line 2662
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ExchangeAccountPolicy"

    const-string/jumbo v5, "getAccountEmailPassword() failed"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2663
    const/4 v3, 0x0

    goto :goto_35
.end method

.method public getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "activeSyncHost"    # Ljava/lang/String;

    .prologue
    .line 1261
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1262
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string/jumbo v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v8

    .line 1265
    .local v8, "ret":J
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountId() : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,  easDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", easUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activeSyncHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-wide v8
.end method

.method public getAllEASAccounts(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/Account;
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1389
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1390
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1391
    .local v6, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 1392
    .local v14, "userID":I
    const-string v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getAllEASAccounts() : userId = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v15

    if-eqz v15, :cond_6e

    .line 1397
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 1398
    .local v4, "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v4, :cond_51

    .line 1399
    move-object v5, v4

    .local v5, "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_41
    if-ge v8, v12, :cond_59

    aget-object v3, v5, v8

    .line 1400
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v3, :cond_4e

    .line 1401
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Landroid/app/enterprise/Account;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 1405
    .end local v3    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    :cond_51
    const-string v15, "ExchangeAccountPolicy"

    const-string/jumbo v16, "getAllEASAccounts_new( ): fail to get list."

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    .end local v4    # "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_59
    :goto_59
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_b1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Landroid/app/enterprise/Account;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/app/enterprise/Account;

    check-cast v15, [Landroid/app/enterprise/Account;

    :goto_6d
    return-object v15

    .line 1410
    :cond_6e
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J

    move-result-object v9

    .line 1411
    .local v9, "ids":[J
    if-eqz v9, :cond_59

    .line 1412
    move-object v5, v9

    .local v5, "arr$":[J
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_7d
    if-ge v8, v12, :cond_59

    aget-wide v10, v5, v8

    .line 1413
    .local v10, "id":J
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v10, v11, v15, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 1415
    .local v2, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v2, :cond_a2

    iget-boolean v15, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a2

    .line 1416
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v14}, fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a2} :catch_a5

    .line 1412
    :cond_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 1418
    .end local v2    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v5    # "arr$":[J
    .end local v8    # "i$":I
    .end local v9    # "ids":[J
    .end local v10    # "id":J
    .end local v12    # "len$":I
    :catch_a5
    move-exception v7

    .line 1419
    .local v7, "ex":Ljava/lang/Exception;
    const-string v15, "ExchangeAccountPolicy"

    const-string/jumbo v16, "getAllEASAccounts() : failed. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    .line 1422
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_b1
    const/4 v15, 0x0

    goto :goto_6d
.end method

.method public getDeviceId(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1538
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1539
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 1540
    .local v14, "userID":I
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceId() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1545
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v2, "getDeviceId() failed : Email App is disabled."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v0, 0x0

    .line 1605
    :goto_42
    return-object v0

    .line 1549
    :cond_43
    sget-object v0, mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 1550
    sget-object v0, mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_42

    .line 1552
    :cond_5c
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 1553
    .local v11, "sync":Ljava/lang/Object;
    monitor-enter v11

    .line 1554
    :try_start_62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_102

    move-result-wide v12

    .line 1556
    .local v12, "token":J
    :try_start_66
    new-instance v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v1, p0, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .line 1570
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    const/4 v6, 0x0

    .line 1571
    .local v6, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1572
    const-string v0, "com.samsung.android.email.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1576
    :goto_78
    const/4 v10, 0x0

    .line 1577
    .local v10, "retAction":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1578
    const-string/jumbo v0, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1582
    :goto_86
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1585
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v9, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1588
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v2, "getDeviceId() : sendBroadcast "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_ad} :catch_f5
    .catchall {:try_start_66 .. :try_end_ad} :catchall_105

    .line 1591
    :try_start_ad
    sget-object v0, mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c6

    .line 1592
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v2, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-wide/16 v4, 0x1388

    invoke-virtual {v11, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_c6
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_c6} :catch_eb
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c6} :catch_f5
    .catchall {:try_start_ad .. :try_end_c6} :catchall_105

    .line 1598
    :cond_c6
    :goto_c6
    :try_start_c6
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_f5
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_105

    .line 1602
    :try_start_cb
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "action":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "retAction":Ljava/lang/String;
    :goto_ce
    monitor-exit v11
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_102

    .line 1605
    sget-object v0, mDeviceId:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_42

    .line 1574
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v6    # "action":Ljava/lang/String;
    :cond_dd
    :try_start_dd
    const-string v0, "com.android.email.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_78

    .line 1580
    .restart local v10    # "retAction":Ljava/lang/String;
    :cond_e4
    const-string v0, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_86

    .line 1595
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_eb
    move-exception v7

    .line 1596
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v2, "getDeviceId() Inturrupted."

    invoke-static {v0, v2, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_f4} :catch_f5
    .catchall {:try_start_dd .. :try_end_f4} :catchall_105

    goto :goto_c6

    .line 1599
    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "retAction":Ljava/lang/String;
    :catch_f5
    move-exception v8

    .line 1600
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_f6
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v2, "getDeviceId() : failed. "

    invoke-static {v0, v2, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_105

    .line 1602
    :try_start_fe
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_ce

    .line 1604
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v12    # "token":J
    :catchall_102
    move-exception v0

    monitor-exit v11
    :try_end_104
    .catchall {:try_start_fe .. :try_end_104} :catchall_102

    throw v0

    .line 1602
    .restart local v12    # "token":J
    :catchall_105
    move-exception v0

    :try_start_106
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_102
.end method

.method public getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1862
    invoke-virtual {p0, p1, p2, p3}, getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2487
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2488
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2489
    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2463
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2464
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2465
    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2183
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2184
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2185
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2186
    .local v5, "userID":I
    const-string v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2273
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2274
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2275
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2276
    .local v5, "userID":I
    const-string v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2314
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2315
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2316
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2317
    .local v5, "userID":I
    const-string v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2386
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2387
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2388
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2389
    .local v5, "userID":I
    const-string v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2454
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2455
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2456
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2457
    .local v5, "userID":I
    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1742
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqEncryptSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1719
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqSigSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSMIMECertificateAlias(Landroid/app/enterprise/ContextInfo;JI)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 2773
    const/4 v1, 0x0

    .line 2774
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2775
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 2789
    :goto_22
    return-object v2

    .line 2779
    :cond_23
    if-nez p4, :cond_2d

    .line 2780
    :try_start_25
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p1, p2, p3, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 2781
    :cond_2d
    if-ne p4, v3, :cond_41

    .line 2782
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p1, p2, p3, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_37

    move-result-object v2

    goto :goto_22

    .line 2784
    :catch_37
    move-exception v0

    .line 2785
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ExchangeAccountPolicy"

    const-string/jumbo v3, "getSMIMECertificateAlias() : failed. "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2786
    const/4 v1, 0x0

    .line 2788
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_41
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSMIMECertificateAlias() : accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 2789
    goto :goto_22
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2208
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2209
    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2210
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2211
    .local v5, "userID":I
    const-string v4, "AllowNotificationChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2231
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2232
    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2233
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2234
    .local v5, "userID":I
    const-string v4, "AllowSettingChange"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2156
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2157
    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2158
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2159
    .local v5, "userID":I
    const-string v4, "AttachmentEnable"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2057
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2063
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2103
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2136
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    const/4 v10, 0x0

    .line 2074
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2078
    .local v7, "userId":I
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 2079
    .local v2, "columns":[Ljava/lang/String;
    const-string v8, "AccountId"

    aput-object v8, v2, v10

    .line 2080
    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    .line 2082
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2083
    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2085
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 2087
    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_53

    .line 2088
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 2089
    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_2d

    .line 2092
    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2093
    .local v0, "accId":J
    invoke-direct {p0, v10, v0, v1, v7}, sendReleaseSMIMECertificate(IJI)V

    goto :goto_2d

    .line 2098
    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_53
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "onPreAdminRemoval() : "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2109
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2110
    .local v7, "userId":I
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 2114
    .local v2, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "AccountId"

    aput-object v9, v2, v8

    .line 2115
    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    .line 2117
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2118
    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2120
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 2122
    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_7b

    .line 2123
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 2124
    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_55

    .line 2127
    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2128
    .local v0, "accId":J
    invoke-direct {p0, p1, v0, v1, v7}, sendReleaseSMIMECertificate(IJI)V

    goto :goto_55

    .line 2132
    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7b
    return-void
.end method

.method public removePendingAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 1663
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1664
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1665
    .local v3, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 1666
    .local v10, "userID":I
    const-string v12, "ExchangeAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removePendingAccount() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1670
    .local v8, "token":J
    :try_start_2b
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

    invoke-static {v3, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1672
    .local v7, "send":Landroid/content/Intent;
    const-string/jumbo v12, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1673
    const-string/jumbo v12, "service"

    const-string/jumbo v13, "eas"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string/jumbo v12, "server_name"

    move-object/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    const-string/jumbo v12, "user_name"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    const-string/jumbo v12, "domain"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1678
    iget-object v12, p0, mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v14, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v12, v7, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_73} :catch_ec
    .catchall {:try_start_2b .. :try_end_73} :catchall_10d

    .line 1682
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    .end local v7    # "send":Landroid/content/Intent;
    :goto_76
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1685
    .local v11, "userId":I
    if-nez v11, :cond_ac

    .line 1686
    new-instance v6, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1687
    .local v6, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    .local v2, "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1691
    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1693
    :try_start_9c
    const-string v12, "ExchangeAccount"

    const-string/jumbo v13, "removePendingAccount"

    invoke-virtual {v6, v12, v13, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 1694
    const-string v12, "ExchangeAccountPolicy"

    const-string/jumbo v13, "removePendingAccount calling gearPolicyManager  "

    invoke-static {v12, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ac} :catch_112

    .line 1699
    .end local v2    # "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_ac
    :goto_ac
    const-string v12, "ExchangeAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removePendingAccount() : emailAddress = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", easUser = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", easDomain = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", serverAddress = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    return-void

    .line 1679
    .end local v11    # "userId":I
    :catch_ec
    move-exception v5

    .line 1680
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_ed
    const-string v12, "ExchangeAccountPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_108
    .catchall {:try_start_ed .. :try_end_108} :catchall_10d

    .line 1682
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_76

    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_10d
    move-exception v12

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 1695
    .restart local v2    # "accountInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "userId":I
    :catch_112
    move-exception v4

    .line 1696
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ac
.end method

.method public sendAccountsChangedBroadcast(Landroid/app/enterprise/ContextInfo;)V
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1500
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1501
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1502
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1503
    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1504
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1506
    .local v6, "token":J
    :try_start_10
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1508
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1509
    .local v4, "msg":Landroid/os/Message;
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 1510
    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 1511
    iget-boolean v8, p0, mRestartExtendDelay:Z

    if-nez v8, :cond_51

    .line 1512
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "sendAccountsChangedBroadcast()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_61

    .line 1519
    :goto_33
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1521
    if-nez v5, :cond_50

    .line 1522
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1524
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3f
    const-string v8, "ExchangeAccount"

    const-string/jumbo v9, "sendAccountsChangedBroadcast"

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1525
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "sendAccountsChangedBroadcast calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_66

    .line 1530
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_50
    :goto_50
    return-void

    .line 1515
    :cond_51
    :try_start_51
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_61

    goto :goto_33

    .line 1519
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_61
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1526
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "msg":Landroid/os/Message;
    :catch_66
    move-exception v2

    .line 1527
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public setAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 515
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 516
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAcceptAllCertificates() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 518
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 519
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_46

    .line 520
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_45
    :goto_45
    return v6

    .line 523
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_46
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 524
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_45

    .line 527
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_4f
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 530
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_71

    .line 531
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 535
    :cond_71
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 536
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 538
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "trust_all"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_45

    const/4 v6, 0x1

    goto :goto_45
.end method

.method public setAccountBaseParameters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "accId"    # J

    .prologue
    .line 639
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 641
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setAccountBaseParameters() : deprecated "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 2632
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2633
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2634
    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2635
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 2636
    .local v0, "callID":J
    if-nez p2, :cond_1a

    move-wide v0, v6

    .line 2646
    .end local v0    # "callID":J
    :goto_19
    return-wide v0

    .line 2639
    .restart local v0    # "callID":J
    :cond_1a
    :try_start_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2640
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_39

    .line 2645
    const-string v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setAccountCertificatePassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2641
    .end local v2    # "caller":Ljava/lang/String;
    :catch_39
    move-exception v4

    .line 2642
    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "setAccountCertificatePassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    .line 2643
    goto :goto_19
.end method

.method public setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 2610
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2611
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, " setAccountEmailPassword calls from Profile return default value"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v6

    .line 2628
    :goto_12
    return-wide v0

    .line 2614
    :cond_13
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2615
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2616
    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2617
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 2618
    .local v0, "callID":J
    if-nez p2, :cond_2b

    move-wide v0, v6

    .line 2619
    goto :goto_12

    .line 2621
    :cond_2b
    :try_start_2b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "E#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2622
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_4a

    .line 2627
    const-string v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setAccountEmailPassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2623
    .end local v2    # "caller":Ljava/lang/String;
    :catch_4a
    move-exception v4

    .line 2624
    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "setAccountEmailPassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    .line 2625
    goto :goto_12
.end method

.method public setAccountName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 1018
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1019
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAccountName() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/4 v12, 0x0

    .line 1022
    .local v12, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1024
    if-nez p2, :cond_30

    .line 1025
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setAccountName() : accountName is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1054
    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_2f
    return v13

    .line 1028
    .end local v13    # "ret":I
    .restart local v12    # "ret":Z
    :cond_30
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 1029
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 1030
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_61

    .line 1031
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAccountName_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1032
    .restart local v13    # "ret":I
    goto :goto_2f

    .line 1035
    .end local v13    # "ret":I
    :cond_61
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 1036
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .line 1053
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_6f
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAccountName() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accountName ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 1054
    .restart local v13    # "ret":I
    goto :goto_2f

    .line 1040
    .end local v13    # "ret":I
    :cond_a2
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1043
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_ce

    .line 1044
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAccountName() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1045
    .restart local v13    # "ret":I
    goto/16 :goto_2f

    .line 1047
    .end local v13    # "ret":I
    :cond_ce
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 1049
    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string v11, "account_name"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_e7

    const/4 v12, 0x1

    :goto_e6
    goto :goto_6f

    :cond_e7
    const/4 v12, 0x0

    goto :goto_e6
.end method

.method public setAlwaysVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 552
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 553
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 555
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 556
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_46

    .line 557
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_45
    :goto_45
    return v6

    .line 560
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_46
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 561
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_45

    .line 565
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_4f
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 568
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_71

    .line 569
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 573
    :cond_71
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 575
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "vibrate"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_45

    const/4 v6, 0x1

    goto :goto_45
.end method

.method public setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 988
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 989
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAsDefaultAccount() :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/4 v1, 0x0

    .line 991
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 992
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 993
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_47

    .line 994
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1006
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_46
    return v2

    .line 998
    .end local v2    # "ret":I
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v1    # "ret":Z
    :cond_47
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 999
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    .line 1005
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_50
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAsDefaultAccount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1006
    .restart local v2    # "ret":I
    goto :goto_46

    .line 1003
    .end local v2    # "ret":I
    :cond_75
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v1

    goto :goto_50
.end method

.method public setClientAuthCert(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;J)V
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certData"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "accId"    # J

    .prologue
    .line 838
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 839
    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setClientAuthCert() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 842
    .local v4, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 844
    .local v7, "userID":I
    move-wide/from16 v0, p4

    invoke-direct {p0, p1, v0, v1}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v10

    if-nez v10, :cond_49

    .line 845
    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setClientAuthCert() : No exist accId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :goto_48
    return-void

    .line 848
    :cond_49
    if-eqz p2, :cond_53

    if-eqz p3, :cond_53

    const-wide/16 v10, 0x1

    cmp-long v10, p4, v10

    if-gez v10, :cond_6f

    .line 849
    :cond_53
    const-string v10, "ExchangeAccountPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setClientAuthCert() : error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 853
    :cond_6f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 855
    .local v8, "token":J
    const/4 v10, 0x1

    :try_start_74
    iput-boolean v10, p0, mRestartExtendDelay:Z

    .line 856
    iget-object v10, p0, mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    const/4 v6, 0x0

    .line 859
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 860
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v10, "com.samsung.android.email.INSTALL_CERTIFICATE"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_8e
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    .line 867
    .local v2, "accCertID":J
    const-string/jumbo v10, "data"

    move-object/from16 v0, p2

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 868
    const-string v10, "accountid"

    move-wide/from16 v0, p4

    invoke-virtual {v6, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 869
    const-string/jumbo v10, "password_id"

    invoke-virtual {v6, v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 871
    iget-object v10, p0, mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v12, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v10, v6, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b5} :catch_c5
    .catchall {:try_start_74 .. :try_end_b5} :catchall_d3

    .line 875
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .line 863
    .end local v2    # "accCertID":J
    :cond_b9
    :try_start_b9
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v10, "com.android.email.INSTALL_CERTIFICATE"

    invoke-static {v4, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c4} :catch_c5
    .catchall {:try_start_b9 .. :try_end_c4} :catchall_d3

    .restart local v6    # "intent":Landroid/content/Intent;
    goto :goto_8e

    .line 872
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_c5
    move-exception v5

    .line 873
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_c6
    const-string v10, "ExchangeAccountPolicy"

    const-string/jumbo v11, "setClientAuthCert() : failed"

    invoke-static {v10, v11, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_d3

    .line 875
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_48

    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_d3
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public setDataSyncs(Landroid/app/enterprise/ContextInfo;ZZZZJ)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncCalendar"    # Z
    .param p3, "syncContacts"    # Z
    .param p4, "syncTasks"    # Z
    .param p5, "syncNotes"    # Z
    .param p6, "accId"    # J

    .prologue
    .line 1183
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1184
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1185
    .local v5, "containerId":I
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDataSyncs() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const/4 v7, 0x1

    .line 1188
    .local v7, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 1190
    .local v10, "userID":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 1191
    iget-object v11, p0, mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v11, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 1192
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_53

    .line 1193
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setSSL_new() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const/4 v11, 0x0

    .line 1247
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_52
    return v11

    .line 1197
    .restart local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_53
    move/from16 v0, p3

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 1198
    move/from16 v0, p2

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 1199
    move/from16 v0, p4

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 1200
    move/from16 v0, p5

    iput-boolean v0, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 1201
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v11, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v7

    .line 1246
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_69
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDataSyncs() : = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,  syncCalendar = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", syncContacts = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", accid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v7

    .line 1247
    goto :goto_52

    .line 1205
    :cond_a8
    iget-object v11, p0, mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 1208
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_cf

    .line 1209
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p6

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v11, 0x0

    goto :goto_52

    .line 1213
    :cond_cf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1216
    .local v8, "token":J
    :try_start_d3
    new-instance v4, Landroid/accounts/Account;

    iget-object v11, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v12, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    .local v4, "acct":Landroid/accounts/Account;
    const-string v11, "com.android.contacts"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1220
    const-string v11, "com.android.contacts"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1223
    const-string v11, "com.android.calendar"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1225
    const-string v11, "com.android.calendar"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1228
    const-string/jumbo v11, "tasks"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1230
    const-string/jumbo v11, "tasks"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p4

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1233
    const-string/jumbo v11, "note"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v4, v11, v12, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1235
    const-string/jumbo v11, "note"

    invoke-static {v5, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p5

    invoke-static {v4, v11, v0, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_137} :catch_13c
    .catchall {:try_start_d3 .. :try_end_137} :catchall_14b

    .line 1242
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_69

    .line 1238
    .end local v4    # "acct":Landroid/accounts/Account;
    :catch_13c
    move-exception v6

    .line 1239
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_13d
    const-string v11, "ExchangeAccountPolicy"

    const-string/jumbo v12, "setDataSyncs() : "

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_14b

    .line 1240
    const/4 v7, 0x0

    .line 1242
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_69

    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_14b
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 2191
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2192
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEmailNotificationsState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2194
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2195
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 2196
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2197
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2202
    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_41
    return v8

    .line 2200
    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_42
    const-string v7, "AllowNotificationChange"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 2201
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEmailNotificationsState() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , enable  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 2202
    .restart local v8    # "ret":I
    goto :goto_41
.end method

.method public setForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 1858
    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateAlias(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .registers 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "storageName"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 2690
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", alias = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", type = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5c

    .line 2692
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setForceSMIMECertificateAlias() : credential storage name = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_5c
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2698
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_86

    .line 2699
    invoke-direct/range {p0 .. p1}, enforceUCMPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2702
    :cond_86
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v22

    .line 2703
    .local v22, "userID":I
    const/16 v18, 0x0

    .line 2704
    .local v18, "ret":Z
    move-object/from16 v15, p5

    .line 2706
    .local v15, "modifiedAlias":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_f3

    .line 2707
    const/4 v13, 0x0

    .line 2709
    .local v13, "mCredentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :try_start_95
    invoke-direct/range {p0 .. p0}, getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v23

    if-eqz v23, :cond_c2

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, manager:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;->getAvailableCredentialStorages(Landroid/app/enterprise/ContextInfo;)[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    move-result-object v7

    .line 2711
    .local v7, "csList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    move-object v5, v7

    .local v5, "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_ac
    if-ge v10, v12, :cond_c9

    aget-object v6, v5, v10

    .line 2712
    .local v6, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v0, v6, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_bf

    .line 2713
    move-object v13, v6

    .line 2711
    :cond_bf
    add-int/lit8 v10, v10, 0x1

    goto :goto_ac

    .line 2717
    .end local v5    # "arr$":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v6    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v7    # "csList":[Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :cond_c2
    const-string v23, "ExchangeAccountPolicy"

    const-string v24, "UCM service not found!"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_c9} :catch_11d

    .line 2724
    :cond_c9
    :goto_c9
    new-instance v4, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v0, v13, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2725
    .local v4, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v8

    .line 2726
    .local v8, "csUri":Ljava/lang/String;
    move-object v15, v8

    .line 2733
    .end local v4    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v8    # "csUri":Ljava/lang/String;
    .end local v13    # "mCredentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_f3
    const/16 v23, 0x1

    move/from16 v0, p6

    move/from16 v1, v23

    if-eq v0, v1, :cond_13b

    if-eqz p6, :cond_13b

    .line 2734
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setForceSMIMECertificateAlias() : invalid type : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 2769
    .end local v18    # "ret":Z
    .local v19, "ret":I
    :goto_11c
    return v19

    .line 2719
    .end local v19    # "ret":I
    .restart local v13    # "mCredentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    .restart local v18    # "ret":Z
    :catch_11d
    move-exception v9

    .line 2720
    .local v9, "e":Ljava/lang/Exception;
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 2738
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "mCredentialStorage":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_13b
    invoke-direct/range {p0 .. p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v23

    if-nez v23, :cond_161

    .line 2739
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setForceSMIMECertificateAlias() : No exist accId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 2740
    .restart local v19    # "ret":I
    goto :goto_11c

    .line 2743
    .end local v19    # "ret":I
    :cond_161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2745
    .local v20, "token":J
    :try_start_165
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v16

    .line 2746
    .local v16, "resultID":J
    new-instance v11, Landroid/content/Intent;

    const-string v23, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2747
    .local v11, "intent":Landroid/content/Intent;
    const-string v23, "account_id"

    move-object/from16 v0, v23

    move-wide/from16 v1, p2

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2748
    const-string v23, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_NAME"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2749
    const-string v23, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2750
    const-string v23, "certificate_result_id"

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2751
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1a3

    .line 2753
    const-string v23, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE"

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2756
    :cond_1a3
    new-instance v14, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v14, v0, v15, v1, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2757
    .local v14, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "S"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v18

    .line 2759
    if-eqz v18, :cond_1eb

    .line 2760
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v25, "android.permission.sec.SMIME_CERTIFICATE"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_1eb} :catch_21d
    .catchall {:try_start_165 .. :try_end_1eb} :catchall_230

    .line 2766
    :cond_1eb
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2768
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v16    # "resultID":J
    :goto_1ee
    const-string v23, "ExchangeAccountPolicy"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ret = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v18

    .line 2769
    .restart local v19    # "ret":I
    goto/16 :goto_11c

    .line 2762
    .end local v19    # "ret":I
    :catch_21d
    move-exception v9

    .line 2763
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_21e
    const-string v23, "ExchangeAccountPolicy"

    const-string/jumbo v24, "setForceSMIMECertificateAlias() : failed. "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22a
    .catchall {:try_start_21e .. :try_end_22a} :catchall_230

    .line 2764
    const/16 v18, 0x0

    .line 2766
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1ee

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_230
    move-exception v23

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23
.end method

.method public setForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2484
    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2460
    const-string v6, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, setForceSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2163
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2164
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIncomingAttachmentsSize() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2166
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2167
    .local v2, "adminUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2168
    .local v9, "userId":I
    const/4 v0, 0x0

    .line 2169
    .local v0, "ret":Z
    invoke-direct {p0, p1, p3, p4}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_47

    .line 2170
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2179
    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_46
    return v8

    .line 2173
    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_47
    if-gez p2, :cond_53

    .line 2174
    const-string v1, "ExchangeAccountPolicy"

    const-string/jumbo v4, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2175
    .restart local v8    # "ret":I
    goto :goto_46

    .line 2177
    .end local v8    # "ret":I
    :cond_53
    const-string v7, "IncomingAttachmentSize"

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-direct/range {v1 .. v7}, putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    .line 2178
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIncomingAttachmentsSize() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , size  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , accId  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 2179
    .restart local v8    # "ret":I
    goto :goto_46
.end method

.method public setMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2238
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2239
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2241
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2242
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 2244
    .local v17, "userID":I
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .line 2247
    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_56

    .line 2248
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    const/4 v5, 0x0

    .line 2269
    :goto_55
    return v5

    .line 2251
    :cond_56
    const/4 v5, 0x4

    move/from16 v0, p2

    if-lt v0, v5, :cond_60

    const/4 v5, 0x7

    move/from16 v0, p2

    if-le v0, v5, :cond_6c

    :cond_60
    if-eqz p2, :cond_6c

    .line 2253
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    const/4 v5, 0x0

    goto :goto_55

    .line 2256
    :cond_6c
    const-string v11, "MaxCalendarAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 2258
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const/4 v5, 0x0

    goto :goto_55

    .line 2261
    :cond_84
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v16

    .line 2262
    .local v16, "mdmPolicy":I
    iget v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    move/from16 v0, v16

    if-le v5, v0, :cond_d9

    if-eqz v16, :cond_d9

    .line 2264
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    move/from16 v0, v16

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 2266
    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v18, v8

    if-eqz v5, :cond_d6

    const/4 v5, 0x1

    goto :goto_55

    :cond_d6
    const/4 v5, 0x0

    goto/16 :goto_55

    .line 2269
    :cond_d9
    const/4 v5, 0x1

    goto/16 :goto_55
.end method

.method public setMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2280
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2281
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2282
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2283
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 2284
    .local v17, "userID":I
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .line 2287
    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_3b

    .line 2288
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    const/4 v5, 0x0

    .line 2309
    :goto_3a
    return v5

    .line 2291
    :cond_3b
    if-ltz p2, :cond_42

    const/4 v5, 0x5

    move/from16 v0, p2

    if-le v0, v5, :cond_4c

    .line 2293
    :cond_42
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const/4 v5, 0x0

    goto :goto_3a

    .line 2296
    :cond_4c
    const-string v11, "MaxEmailAgeFilter"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 2298
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const/4 v5, 0x0

    goto :goto_3a

    .line 2301
    :cond_64
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v16

    .line 2302
    .local v16, "mdmPolicy":I
    iget v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    move/from16 v0, v16

    if-le v5, v0, :cond_b8

    if-eqz v16, :cond_b8

    .line 2304
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    move/from16 v0, v16

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 2306
    const-wide/16 v18, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v18, v8

    if-eqz v5, :cond_b6

    const/4 v5, 0x1

    goto :goto_3a

    :cond_b6
    const/4 v5, 0x0

    goto :goto_3a

    .line 2309
    :cond_b8
    const/4 v5, 0x1

    goto :goto_3a
.end method

.method public setMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2322
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2323
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2325
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2326
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .line 2327
    .local v24, "userID":I
    const/16 v21, 0x0

    .line 2328
    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .line 2331
    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_59

    .line 2332
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2382
    .end local v21    # "ret":Z
    .local v22, "ret":I
    :goto_58
    return v22

    .line 2335
    .end local v22    # "ret":I
    .restart local v21    # "ret":Z
    :cond_59
    if-gez p2, :cond_66

    .line 2337
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2338
    .restart local v22    # "ret":I
    goto :goto_58

    .line 2340
    .end local v22    # "ret":I
    :cond_66
    const-string v11, "MaxEmailBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 2342
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2343
    .restart local v22    # "ret":I
    goto :goto_58

    .line 2345
    .end local v22    # "ret":I
    :cond_7f
    const/16 v21, 0x1

    .line 2346
    const/16 v17, 0x1

    .line 2349
    .local v17, "isMDMallowed":Z
    :try_start_83
    const-string/jumbo v5, "email_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v19

    .line 2350
    .local v19, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v19, :cond_155

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_99} :catch_159

    move-result v17

    .line 2357
    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v20

    .line 2358
    .local v20, "mdmPolicy":I
    iget-boolean v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-nez v5, :cond_16b

    if-nez v17, :cond_16b

    if-eqz v20, :cond_16b

    .line 2360
    const/16 v18, 0x0

    .line 2361
    .local v18, "isupdate":Z
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_ef

    .line 2362
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .line 2363
    .local v23, "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 2365
    const/16 v18, 0x1

    .line 2367
    .end local v23    # "setValue":I
    :cond_ef
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_130

    .line 2368
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .line 2369
    .restart local v23    # "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 2371
    const/16 v18, 0x1

    .line 2373
    .end local v23    # "setValue":I
    :cond_130
    if-eqz v18, :cond_16b

    .line 2374
    const-wide/16 v26, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v26, v8

    if-eqz v5, :cond_168

    const/16 v21, 0x1

    .line 2375
    :goto_147
    if-nez v21, :cond_16b

    .line 2376
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2377
    .restart local v22    # "ret":I
    goto/16 :goto_58

    .line 2350
    .end local v18    # "isupdate":Z
    .end local v20    # "mdmPolicy":I
    .end local v22    # "ret":I
    .restart local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_155
    const/16 v17, 0x1

    goto/16 :goto_9a

    .line 2353
    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_159
    move-exception v16

    .line 2354
    .local v16, "ex":Landroid/os/RemoteException;
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    move-object/from16 v0, v16

    invoke-static {v5, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2355
    const/16 v17, 0x1

    goto/16 :goto_9a

    .line 2374
    .end local v16    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "isupdate":Z
    .restart local v20    # "mdmPolicy":I
    :cond_168
    const/16 v21, 0x0

    goto :goto_147

    .line 2381
    .end local v18    # "isupdate":Z
    :cond_16b
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailBodyTruncationSize() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2382
    .restart local v22    # "ret":I
    goto/16 :goto_58
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2393
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2394
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2396
    .local v7, "containerId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2397
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v24

    .line 2398
    .local v24, "userID":I
    const/16 v21, 0x0

    .line 2399
    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .line 2402
    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_59

    .line 2403
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2450
    .end local v21    # "ret":Z
    .local v22, "ret":I
    :goto_58
    return v22

    .line 2406
    .end local v22    # "ret":I
    .restart local v21    # "ret":Z
    :cond_59
    if-gez p2, :cond_66

    .line 2408
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2409
    .restart local v22    # "ret":I
    goto :goto_58

    .line 2411
    .end local v22    # "ret":I
    :cond_66
    const-string v11, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v10, p2

    invoke-direct/range {v5 .. v11}, putPolicyState(IIJILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 2413
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2414
    .restart local v22    # "ret":I
    goto :goto_58

    .line 2416
    .end local v22    # "ret":I
    :cond_7f
    const/16 v21, 0x1

    .line 2417
    const/16 v17, 0x1

    .line 2419
    .local v17, "isMDMallowed":Z
    :try_start_83
    const-string/jumbo v5, "email_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v19

    .line 2420
    .local v19, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v19, :cond_155

    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_99} :catch_159

    move-result v17

    .line 2425
    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v20

    .line 2426
    .local v20, "mdmPolicy":I
    iget-boolean v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-eqz v5, :cond_16b

    if-eqz v17, :cond_16b

    if-eqz v20, :cond_16b

    .line 2428
    const/16 v18, 0x0

    .line 2429
    .local v18, "isupdate":Z
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_ef

    .line 2430
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .line 2431
    .local v23, "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 2433
    const/16 v18, 0x1

    .line 2435
    .end local v23    # "setValue":I
    :cond_ef
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v5, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_130

    .line 2436
    iget-object v5, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v23

    .line 2437
    .restart local v23    # "setValue":I
    const-string v5, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 2439
    const/16 v18, 0x1

    .line 2441
    .end local v23    # "setValue":I
    :cond_130
    if-eqz v18, :cond_16b

    .line 2442
    const-wide/16 v26, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v15}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v26, v8

    if-eqz v5, :cond_168

    const/16 v21, 0x1

    .line 2443
    :goto_147
    if-nez v21, :cond_16b

    .line 2444
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : fail to update Email."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2445
    .restart local v22    # "ret":I
    goto/16 :goto_58

    .line 2420
    .end local v18    # "isupdate":Z
    .end local v20    # "mdmPolicy":I
    .end local v22    # "ret":I
    .restart local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_155
    const/16 v17, 0x1

    goto/16 :goto_9a

    .line 2421
    .end local v19    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_159
    move-exception v16

    .line 2422
    .local v16, "ex":Landroid/os/RemoteException;
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : Failed talking with email policy"

    move-object/from16 v0, v16

    invoke-static {v5, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2423
    const/16 v17, 0x1

    goto/16 :goto_9a

    .line 2442
    .end local v16    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "isupdate":Z
    .restart local v20    # "mdmPolicy":I
    :cond_168
    const/16 v21, 0x0

    goto :goto_147

    .line 2449
    .end local v18    # "isupdate":Z
    :cond_16b
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v8, "setMaxEmailHTMLBodyTruncationSize() : success."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v21

    .line 2450
    .restart local v22    # "ret":I
    goto/16 :goto_58
.end method

.method public setPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 691
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 692
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 693
    .local v5, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 694
    .local v12, "userID":I
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassword() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v15, 0x1

    .line 697
    .local v15, "ret":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 698
    if-nez p2, :cond_36

    .line 699
    const-string v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setPassword() : Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/4 v6, 0x0

    .line 733
    :goto_35
    return v6

    .line 703
    :cond_36
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 704
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 705
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_67

    .line 706
    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassword_new() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v6, 0x0

    goto :goto_35

    .line 709
    :cond_67
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 710
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_35

    .line 713
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_76
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v13

    .line 715
    .local v13, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v13, :cond_8e

    .line 716
    const-string v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setPassword() : accountMData is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v6, 0x0

    goto :goto_35

    .line 720
    :cond_8e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 722
    .local v16, "token":J
    :try_start_92
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9f} :catch_a4
    .catchall {:try_start_92 .. :try_end_9f} :catchall_b2

    .line 729
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_a2
    move v6, v15

    .line 733
    goto :goto_35

    .line 724
    :catch_a4
    move-exception v14

    .line 725
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_a5
    const-string v6, "ExchangeAccountPolicy"

    const-string/jumbo v7, "setPassword() : Exception while setPassword"

    invoke-static {v6, v7, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_b2

    .line 726
    const/4 v15, 0x0

    .line 729
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a2

    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_b2
    move-exception v6

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPastDaysToSync(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pastDaysToSync"    # I
    .param p3, "accId"    # J

    .prologue
    .line 888
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 889
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPastDaysToSync() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/4 v12, 0x0

    .line 892
    .local v12, "ret":Z
    const/4 v5, 0x1

    move/from16 v0, p2

    if-gt v5, v0, :cond_2a

    const/4 v5, 0x6

    move/from16 v0, p2

    if-ge v5, v0, :cond_34

    .line 893
    :cond_2a
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 920
    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_33
    return v13

    .line 896
    .end local v13    # "ret":I
    .restart local v12    # "ret":Z
    :cond_34
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 897
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 898
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_65

    .line 899
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPastDaysToSync_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 900
    .restart local v13    # "ret":I
    goto :goto_33

    .line 902
    .end local v13    # "ret":I
    :cond_65
    move/from16 v0, p2

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .line 919
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_73
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPastDaysToSync() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , pastDaysToSync = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 920
    .restart local v13    # "ret":I
    goto :goto_33

    .line 905
    .end local v13    # "ret":I
    :cond_a6
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 908
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_d2

    .line 909
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPastDaysToSync() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 910
    .restart local v13    # "ret":I
    goto/16 :goto_33

    .line 913
    .end local v13    # "ret":I
    :cond_d2
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 916
    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string/jumbo v11, "period_email"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_ec

    const/4 v12, 0x1

    :goto_eb
    goto :goto_73

    :cond_ec
    const/4 v12, 0x0

    goto :goto_eb
.end method

.method public setProtocolVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 744
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 747
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setProtocolVersion() : deprecated "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public setReleaseSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1866
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2492
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2468
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, setReleaseSMIMECertificateInernal(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1726
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1727
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireEncryptedSMIMEMessages () : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1729
    .local v3, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1730
    .local v2, "adminUid":I
    const/4 v0, 0x0

    .line 1731
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1732
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 1738
    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_42
    return v8

    .line 1735
    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_43
    const-string v7, "ReqEncryptSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 1737
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireEncryptedSMIMEMessages () : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 1738
    .restart local v8    # "ret":I
    goto :goto_42
.end method

.method public setRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1703
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1704
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireSignedSMIMEMessages() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1706
    .local v2, "adminUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1707
    .local v3, "containerId":I
    const/4 v0, 0x0

    .line 1708
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2, p3}, isValidEASAccountId(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1709
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 1715
    .end local v0    # "ret":Z
    .local v8, "ret":I
    :goto_42
    return v8

    .line 1712
    .end local v8    # "ret":I
    .restart local v0    # "ret":Z
    :cond_43
    const-string v7, "ReqSigSmime"

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    .line 1713
    const-string v1, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireSignedSMIMEMessages() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  accId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 1715
    .restart local v8    # "ret":I
    goto :goto_42
.end method

.method public setSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 477
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 478
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 480
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 481
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_46

    .line 482
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_45
    :goto_45
    return v6

    .line 485
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_46
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 486
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v6

    goto :goto_45

    .line 489
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_4f
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 492
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_71

    .line 493
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 497
    :cond_71
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 498
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 500
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "use_ssl"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_45

    const/4 v6, 0x1

    goto :goto_45
.end method

.method public setSenderName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 962
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 963
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSenderName() :  deprecated , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 777
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 778
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 781
    .local v12, "containerId":I
    const/4 v13, 0x0

    .line 801
    .local v13, "ret":Z
    if-nez p2, :cond_30

    .line 802
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setSignature() : signature is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v5, 0x0

    .line 826
    :goto_2f
    return v5

    .line 805
    :cond_30
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 807
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_61

    .line 808
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    .line 809
    goto :goto_2f

    .line 811
    :cond_61
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 812
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v5

    goto :goto_2f

    .line 814
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_70
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 817
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_9b

    .line 818
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    .line 819
    goto :goto_2f

    .line 821
    :cond_9b
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 823
    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string/jumbo v11, "signature"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v11}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_e8

    const/4 v13, 0x1

    .line 825
    :goto_b4
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSignature() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , signature = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , accId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v13

    .line 826
    goto/16 :goto_2f

    .line 823
    :cond_e8
    const/4 v13, 0x0

    goto :goto_b4
.end method

.method public setSilentVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 589
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 590
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSilentVibrateOnEmailNotification() : deprecated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .prologue
    .line 934
    invoke-direct {p0, p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 935
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncInterval() : deprecated , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncPeakTimings(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakDays"    # I
    .param p3, "peakStartMinute"    # I
    .param p4, "peakEndMinute"    # I
    .param p5, "accId"    # J

    .prologue
    .line 1069
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncPeakTimings() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1071
    const/4 v12, 0x0

    .line 1073
    .local v12, "ret":Z
    if-ltz p2, :cond_28

    const/16 v5, 0x7f

    move/from16 v0, p2

    if-le v0, v5, :cond_32

    .line 1074
    :cond_28
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setSyncPeakTimings() : peakDays is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1117
    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_31
    return v13

    .line 1077
    .end local v13    # "ret":I
    .restart local v12    # "ret":Z
    :cond_32
    if-ltz p3, :cond_3a

    const/16 v5, 0x5a0

    move/from16 v0, p3

    if-le v0, v5, :cond_44

    .line 1078
    :cond_3a
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setSyncPeakTimings() : peakStartMinute is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1079
    .restart local v13    # "ret":I
    goto :goto_31

    .line 1081
    .end local v13    # "ret":I
    :cond_44
    if-ltz p4, :cond_4c

    const/16 v5, 0x5a0

    move/from16 v0, p4

    if-le v0, v5, :cond_56

    .line 1082
    :cond_4c
    const-string v5, "ExchangeAccountPolicy"

    const-string/jumbo v6, "setSyncPeakTimings() : peakEndMinute is invalid"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1083
    .restart local v13    # "ret":I
    goto :goto_31

    .line 1085
    .end local v13    # "ret":I
    :cond_56
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 1086
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 1087
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_87

    .line 1088
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSSL_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1089
    .restart local v13    # "ret":I
    goto :goto_31

    .line 1092
    .end local v13    # "ret":I
    :cond_87
    move/from16 v0, p2

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 1093
    move/from16 v0, p3

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 1094
    move/from16 v0, p4

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 1095
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .line 1116
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_9d
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncPeakTimings() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " , peakDays ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mPeakStartMinute = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", peakEndMinute = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 1117
    .restart local v13    # "ret":I
    goto/16 :goto_31

    .line 1101
    .end local v13    # "ret":I
    :cond_e9
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1104
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_115

    .line 1105
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncPeakTimings() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1106
    .restart local v13    # "ret":I
    goto/16 :goto_31

    .line 1108
    .end local v13    # "ret":I
    :cond_115
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 1109
    move/from16 v0, p3

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 1110
    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 1111
    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string/jumbo v11, "peak_days"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v11}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_138

    const/4 v12, 0x1

    :goto_136
    goto/16 :goto_9d

    :cond_138
    const/4 v12, 0x0

    goto :goto_136
.end method

.method public setSyncSchedules(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakSyncSchedule"    # I
    .param p3, "offPeakSyncSchedule"    # I
    .param p4, "roamingSyncSchedule"    # I
    .param p5, "accId"    # J

    .prologue
    .line 1134
    invoke-direct/range {p0 .. p1}, enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1135
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncSchedules() :  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const/4 v12, 0x0

    .line 1138
    .local v12, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1139
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 1140
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v4, :cond_51

    .line 1141
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncSchedules_new() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1167
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v12    # "ret":Z
    .local v13, "ret":I
    :goto_50
    return v13

    .line 1145
    .end local v13    # "ret":I
    .restart local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v12    # "ret":Z
    :cond_51
    move/from16 v0, p2

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 1146
    move/from16 v0, p3

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 1147
    move/from16 v0, p4

    iput v0, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 1148
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v12

    .line 1166
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_67
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncSchedules() : = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ,  peakSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", offPeakSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", roamingSyncSchedule = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", accid = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 1167
    .restart local v13    # "ret":I
    goto :goto_50

    .line 1152
    .end local v13    # "ret":I
    :cond_b2
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1155
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_de

    .line 1156
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSyncSchedules() : No exist accId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 1157
    .restart local v13    # "ret":I
    goto/16 :goto_50

    .line 1160
    .end local v13    # "ret":I
    :cond_de
    move/from16 v0, p2

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 1161
    move/from16 v0, p3

    iput v0, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 1162
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_105

    const/4 v5, 0x1

    :goto_ec
    iput v5, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 1164
    const-wide/16 v14, -0x1

    const/4 v10, 0x0

    const-string/jumbo v11, "peak"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v11}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v14, v8

    if-eqz v5, :cond_107

    const/4 v12, 0x1

    :goto_103
    goto/16 :goto_67

    .line 1162
    :cond_105
    const/4 v5, 0x0

    goto :goto_ec

    .line 1164
    :cond_107
    const/4 v12, 0x0

    goto :goto_103
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 2069
    return-void
.end method
