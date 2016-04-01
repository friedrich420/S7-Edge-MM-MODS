.class public Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preCallingUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;-><init>()V

    .line 68
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, preCallingUid:I

    .line 70
    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 124
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 126
    return-void
.end method

.method private enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 110
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 111
    .local v1, "containerId":I
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    const-string v4, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 113
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 114
    .local v0, "callingUid":I
    iget v3, p0, preCallingUid:I

    if-eq v3, v0, :cond_3f

    .line 115
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 117
    iput v0, p0, preCallingUid:I

    .line 118
    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling UID changed :    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  callingUid   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3f
    return-object p1
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;
    .registers 9
    .param p1, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 1328
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1330
    .local v0, "acc":Landroid/app/enterprise/Account;
    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v2, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1331
    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1332
    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1333
    const-string v2, "0"

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1334
    iput v1, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1335
    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1336
    iput-wide v4, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1337
    iput-wide v4, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1338
    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v2, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1339
    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1340
    iput-object v3, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1341
    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1342
    iput-object v3, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1343
    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1344
    iput-object v3, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1345
    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1346
    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1347
    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-nez v2, :cond_45

    const/4 v1, 0x1

    :cond_45
    iput-boolean v1, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1349
    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1350
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v6, v1, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1351
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1352
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1353
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1354
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1355
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v2, v1, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1356
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v2, v1, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1357
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v2, v1, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1358
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1359
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1360
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1361
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v4, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1363
    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1364
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v6, v1, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1365
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1366
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1367
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1368
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1369
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v2, v1, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1370
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v2, v1, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1371
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v2, v1, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1372
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1373
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1374
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1375
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v4, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1377
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 97
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 100
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 557
    if-eqz p1, :cond_1d

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 559
    const-string/jumbo v0, "pop3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "imap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 560
    const/4 p1, 0x0

    .line 563
    :cond_1d
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-object p1
.end method

.method private getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 887
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 889
    if-eqz p1, :cond_14

    .line 890
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 891
    const-string/jumbo v0, "smtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 892
    const/4 p1, 0x0

    .line 895
    :cond_14
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getValidOutgoingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-object p1
.end method

.method private updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z
    .param p6, "updateField"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 246
    .local v6, "token":J
    const-wide/16 v2, -0x1

    .line 248
    .local v2, "id":J
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1e

    :try_start_9
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 250
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v8, "updateAccount() : Error :: Failed during update"

    invoke-static {v1, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_31
    .catchall {:try_start_9 .. :try_end_19} :catchall_3e

    .line 260
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v4, v2

    .line 262
    .end local v2    # "id":J
    .local v4, "id":J
    :goto_1d
    return-wide v4

    .line 253
    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    iput-boolean v1, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 255
    if-eqz p5, :cond_2f

    const/4 v1, 0x1

    :goto_24
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_31
    .catchall {:try_start_1f .. :try_end_29} :catchall_3e

    move-result-wide v2

    .line 260
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2d
    move-wide v4, v2

    .line 262
    .end local v2    # "id":J
    .restart local v4    # "id":J
    goto :goto_1d

    .line 255
    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_2f
    const/4 v1, 0x0

    goto :goto_24

    .line 257
    :catch_31
    move-exception v0

    .line 258
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_32
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v8, "updateAccount() : failed. "

    invoke-static {v1, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3e

    .line 260
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_3e
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method


# virtual methods
.method public addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .registers 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "inComingProtocol"    # Ljava/lang/String;
    .param p4, "inComingServerAddress"    # Ljava/lang/String;
    .param p5, "inComingServerPort"    # I
    .param p6, "inComingServerLogin"    # Ljava/lang/String;
    .param p7, "inComingServerPassword"    # Ljava/lang/String;
    .param p8, "outGoingProtocol"    # Ljava/lang/String;
    .param p9, "outGoingServerAddress"    # Ljava/lang/String;
    .param p10, "outGoingServerPort"    # I
    .param p11, "outGoingServerLogin"    # Ljava/lang/String;
    .param p12, "outGoingServerPassword"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v0, "EmailAccountPolicy"

    const-string v1, "addNewAccount() EX"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "Send from SamsungMobile"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v20}, addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .registers 44
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "inComingProtocol"    # Ljava/lang/String;
    .param p4, "inComingServerAddress"    # Ljava/lang/String;
    .param p5, "inComingServerPort"    # I
    .param p6, "inComingServerLogin"    # Ljava/lang/String;
    .param p7, "inComingServerPassword"    # Ljava/lang/String;
    .param p8, "outGoingProtocol"    # Ljava/lang/String;
    .param p9, "outGoingServerAddress"    # Ljava/lang/String;
    .param p10, "outGoingServerPort"    # I
    .param p11, "outGoingServerLogin"    # Ljava/lang/String;
    .param p12, "outGoingServerPassword"    # Ljava/lang/String;
    .param p13, "sendSSL"    # Z
    .param p14, "sendTLS"    # Z
    .param p15, "sendAllCert"    # Z
    .param p16, "recvSSL"    # Z
    .param p17, "recvTLS"    # Z
    .param p18, "recvAllCert"    # Z
    .param p19, "signature"    # Ljava/lang/String;
    .param p20, "isNotify"    # Z

    .prologue
    .line 148
    invoke-direct/range {p0 .. p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 149
    const-string v4, "EmailAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v22

    .line 151
    .local v22, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 152
    .local v11, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 154
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 157
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 158
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 159
    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p12

    .line 160
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 162
    if-eqz p2, :cond_5d

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    if-eqz p4, :cond_5d

    if-eqz p9, :cond_5d

    if-eqz p3, :cond_5d

    if-eqz p8, :cond_5d

    const/4 v4, 0x1

    move/from16 v0, p5

    if-gt v4, v0, :cond_5d

    const/4 v4, 0x1

    move/from16 v0, p10

    if-gt v4, v0, :cond_5d

    if-eqz p11, :cond_5d

    if-nez p6, :cond_67

    .line 167
    :cond_5d
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-wide/16 v4, -0x1

    .line 240
    :goto_66
    return-wide v4

    .line 171
    :cond_67
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_89

    .line 173
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-wide/16 v4, -0x1

    goto :goto_66

    .line 177
    :cond_89
    const-string/jumbo v19, "none"

    .line 178
    .local v19, "sendSecurityStr":Ljava/lang/String;
    const-string/jumbo v18, "none"

    .line 180
    .local v18, "recvSecurityStr":Ljava/lang/String;
    if-eqz p13, :cond_98

    if-nez p14, :cond_98

    if-nez p15, :cond_98

    .line 181
    const-string/jumbo v19, "ssl"

    .line 183
    :cond_98
    if-nez p13, :cond_a1

    if-eqz p14, :cond_a1

    if-nez p15, :cond_a1

    .line 184
    const-string/jumbo v19, "tls"

    .line 186
    :cond_a1
    if-eqz p13, :cond_aa

    if-nez p14, :cond_aa

    if-eqz p15, :cond_aa

    .line 187
    const-string/jumbo v19, "ssl+trustallcerts"

    .line 189
    :cond_aa
    if-nez p13, :cond_b3

    if-eqz p14, :cond_b3

    if-eqz p15, :cond_b3

    .line 190
    const-string/jumbo v19, "tls+trustallcerts"

    .line 192
    :cond_b3
    if-eqz p16, :cond_bc

    if-nez p17, :cond_bc

    if-nez p18, :cond_bc

    .line 193
    const-string/jumbo v18, "ssl"

    .line 195
    :cond_bc
    if-nez p16, :cond_c5

    if-eqz p17, :cond_c5

    if-nez p18, :cond_c5

    .line 196
    const-string/jumbo v18, "tls"

    .line 198
    :cond_c5
    if-eqz p16, :cond_ce

    if-nez p17, :cond_ce

    if-eqz p18, :cond_ce

    .line 199
    const-string/jumbo v18, "ssl+trustallcerts"

    .line 201
    :cond_ce
    if-nez p16, :cond_d7

    if-eqz p17, :cond_d7

    if-eqz p18, :cond_d7

    .line 202
    const-string/jumbo v18, "tls+trustallcerts"

    .line 204
    :cond_d7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 206
    .local v20, "token":J
    :try_start_db
    const-string v4, "EmailAccountPolicy"

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

    .line 207
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v14

    .line 211
    .local v14, "accOutgoingID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .line 213
    .local v12, "accIncomingID":J
    const-string v4, "account_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string/jumbo v4, "user_passwd_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const-string/jumbo v4, "outgoing_user_passwd_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    const-string/jumbo v4, "service"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v4, "outgoing_service"

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v4, "receive_host"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v4, "receive_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v4, "receive_port"

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string/jumbo v4, "send_host"

    move-object/from16 v0, v17

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v4, "send_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v4, "send_port"

    move-object/from16 v0, v17

    move/from16 v1, p10

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string/jumbo v4, "sender_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v4, "outgoing_sender_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p11

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v4, "signature"

    move-object/from16 v0, v17

    move-object/from16 v1, p19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v4, "notify"

    move-object/from16 v0, v17

    move/from16 v1, p20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 231
    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " addNewAccount_ex() : sent intent to Email app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_1e5} :catch_20d
    .catchall {:try_start_db .. :try_end_1e5} :catchall_21b

    .line 236
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    .end local v12    # "accIncomingID":J
    .end local v14    # "accOutgoingID":J
    .end local v17    # "intent":Landroid/content/Intent;
    :goto_1e8
    const-string v4, "EmailAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email + recvSecurityStr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-wide/16 v4, 0x0

    goto/16 :goto_66

    .line 232
    :catch_20d
    move-exception v16

    .line 233
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_20e
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount_ex() : "

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_217
    .catchall {:try_start_20e .. :try_end_217} :catchall_21b

    .line 236
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e8

    .end local v16    # "ex":Ljava/lang/Exception;
    :catchall_21b
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public addNewAccount_new(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/EmailAccount;)J
    .registers 37
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/app/enterprise/EmailAccount;

    .prologue
    .line 1470
    invoke-direct/range {p0 .. p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1471
    const-string v4, "EmailAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>\t\taddNewAccount NEW "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v30

    .line 1473
    .local v30, "userID":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1476
    .local v11, "containerId":I
    if-nez p2, :cond_1f

    .line 1478
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW : Error :: Invalid Account."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-wide/16 v4, -0x1

    .line 1570
    :goto_1e
    return-wide v4

    .line 1483
    :cond_1f
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1484
    .local v6, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1485
    .local v7, "inComingServerAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1486
    .local v22, "outGoingServerAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1487
    .local v8, "inComingProtocol":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingProtocol:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1488
    .local v21, "outGoingProtocol":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1489
    .local v17, "inComingServerLogin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerLogin:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1490
    .local v23, "outGoingServerLogin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1491
    .local v18, "inComingServerPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1492
    .local v24, "outGoingServerPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerPort:I

    move/from16 v19, v0

    .line 1493
    .local v19, "inComingServerPort":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerPort:I

    move/from16 v25, v0

    .line 1494
    .local v25, "outGoingServerPort":I
    if-eqz v6, :cond_95

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    if-eqz v7, :cond_95

    if-eqz v22, :cond_95

    if-eqz v8, :cond_95

    if-eqz v21, :cond_95

    const/4 v4, 0x1

    move/from16 v0, v19

    if-gt v4, v0, :cond_95

    const/4 v4, 0x1

    move/from16 v0, v25

    if-gt v4, v0, :cond_95

    if-eqz v23, :cond_95

    if-nez v17, :cond_9f

    .line 1499
    :cond_95
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW : Error :: Invalid input parameters."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-wide/16 v4, -0x1

    goto :goto_1e

    .line 1503
    :cond_9f
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-lez v4, :cond_bc

    .line 1505
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW : Error :: Account already exists."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-wide/16 v4, -0x1

    goto/16 :goto_1e

    .line 1509
    :cond_bc
    const-string/jumbo v27, "none"

    .line 1510
    .local v27, "sendSecurityStr":Ljava/lang/String;
    const-string/jumbo v26, "none"

    .line 1512
    .local v26, "recvSecurityStr":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-eqz v4, :cond_d7

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-nez v4, :cond_d7

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_d7

    .line 1513
    const-string/jumbo v27, "ssl"

    .line 1515
    :cond_d7
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-nez v4, :cond_ec

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-eqz v4, :cond_ec

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_ec

    .line 1516
    const-string/jumbo v27, "tls"

    .line 1518
    :cond_ec
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-eqz v4, :cond_101

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-nez v4, :cond_101

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_101

    .line 1519
    const-string/jumbo v27, "ssl+trustallcerts"

    .line 1521
    :cond_101
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseSSL:Z

    if-nez v4, :cond_116

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerUseTLS:Z

    if-eqz v4, :cond_116

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mOutGoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_116

    .line 1522
    const-string/jumbo v27, "tls+trustallcerts"

    .line 1524
    :cond_116
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-eqz v4, :cond_12b

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-nez v4, :cond_12b

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-nez v4, :cond_12b

    .line 1525
    const-string/jumbo v26, "ssl"

    .line 1527
    :cond_12b
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-nez v4, :cond_140

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-eqz v4, :cond_140

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-nez v4, :cond_140

    .line 1528
    const-string/jumbo v26, "tls"

    .line 1530
    :cond_140
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-eqz v4, :cond_155

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-nez v4, :cond_155

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_155

    .line 1531
    const-string/jumbo v26, "ssl+trustallcerts"

    .line 1533
    :cond_155
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseSSL:Z

    if-nez v4, :cond_16a

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerUseTLS:Z

    if-eqz v4, :cond_16a

    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/app/enterprise/EmailAccount;->mInComingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_16a

    .line 1534
    const-string/jumbo v26, "tls+trustallcerts"

    .line 1536
    :cond_16a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1538
    .local v28, "token":J
    :try_start_16e
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.CREATE_EMAILACCOUNT"

    invoke-static {v11, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v14

    .line 1542
    .local v14, "accOutgoingID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .line 1544
    .local v12, "accIncomingID":J
    const-string v4, "account_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1545
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    const-string/jumbo v4, "user_passwd_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1547
    const-string/jumbo v4, "outgoing_user_passwd_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1548
    const-string/jumbo v4, "service"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    const-string/jumbo v4, "outgoing_service"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    const-string/jumbo v4, "receive_host"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    const-string/jumbo v4, "receive_security"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    const-string/jumbo v4, "receive_port"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    const-string/jumbo v4, "send_host"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    const-string/jumbo v4, "send_security"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    const-string/jumbo v4, "send_port"

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1556
    const-string/jumbo v4, "sender_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string/jumbo v4, "outgoing_sender_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    const-string/jumbo v4, "signature"

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/app/enterprise/EmailAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string/jumbo v4, "notify"

    move-object/from16 v0, p2

    iget-boolean v5, v0, Landroid/app/enterprise/EmailAccount;->mIsNotify:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1560
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1562
    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " addNewAccount() NEW : sent intent to Email app : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25a
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_25a} :catch_282
    .catchall {:try_start_16e .. :try_end_25a} :catchall_290

    .line 1566
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    .end local v12    # "accIncomingID":J
    .end local v14    # "accOutgoingID":J
    .end local v20    # "intent":Landroid/content/Intent;
    :goto_25d
    const-string v4, "EmailAccountPolicy"

    const-string v5, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email +  recvSecurityStr "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const-wide/16 v4, 0x0

    goto/16 :goto_1e

    .line 1563
    :catch_282
    move-exception v16

    .line 1564
    .local v16, "ex":Ljava/lang/Exception;
    :try_start_283
    const-string v4, "EmailAccountPolicy"

    const-string v5, "addNewAccount() NEW :  failed. "

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28c
    .catchall {:try_start_283 .. :try_end_28c} :catchall_290

    .line 1566
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25d

    .end local v16    # "ex":Ljava/lang/Exception;
    :catchall_290
    move-exception v4

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public deleteAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1242
    invoke-direct/range {p0 .. p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1243
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1244
    .local v6, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 1245
    .local v14, "userID":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1246
    .local v7, "containerId":I
    const/4 v10, 0x0

    .line 1248
    .local v10, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v15

    if-eqz v15, :cond_e9

    .line 1249
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v15, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v5

    .line 1250
    .local v5, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v5, :cond_44

    .line 1251
    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteAccount_new() : No exist accId : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 1309
    .end local v5    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_43
    return v11

    .line 1254
    .end local v11    # "ret":I
    .restart local v5    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v10    # "ret":Z
    :cond_44
    iget-object v15, v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_73

    .line 1255
    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteAccount_new() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 1256
    .restart local v11    # "ret":I
    goto :goto_43

    .line 1258
    .end local v11    # "ret":I
    :cond_73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1260
    .local v12, "token":J
    :try_start_77
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.internal.DELETE_EMAILACCOUNT"

    invoke-static {v7, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v9, "intent":Landroid/content/Intent;
    const-string v15, "account_id"

    iget-wide v0, v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1263
    const-string/jumbo v15, "user_id"

    iget-object v0, v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    const-string/jumbo v15, "service"

    iget-object v0, v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string/jumbo v15, "receive_host"

    iget-object v0, v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v17, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_cd} :catch_d4
    .catchall {:try_start_77 .. :try_end_cd} :catchall_e4

    .line 1268
    const/4 v10, 0x1

    .line 1273
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_d1
    move v11, v10

    .line 1309
    .restart local v11    # "ret":I
    goto/16 :goto_43

    .line 1269
    .end local v11    # "ret":I
    .restart local v5    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :catch_d4
    move-exception v8

    .line 1270
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_d5
    const-string v15, "EmailAccountPolicy"

    const-string/jumbo v16, "deleteAccount_new() : failed. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_e4

    .line 1271
    const/4 v10, 0x0

    .line 1273
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_e4
    move-exception v15

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    .line 1277
    .end local v5    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v12    # "token":J
    :cond_e9
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .line 1278
    .local v4, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteAccount() : accId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",  userID :  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    if-nez v4, :cond_140

    .line 1281
    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteAccount() : No exist accId : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 1282
    .restart local v11    # "ret":I
    goto/16 :goto_43

    .line 1285
    .end local v11    # "ret":I
    :cond_140
    if-eqz v4, :cond_176

    iget-boolean v15, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v15, :cond_176

    .line 1286
    iget-object v15, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_176

    .line 1287
    const-string v15, "EmailAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v10

    .line 1288
    .restart local v11    # "ret":I
    goto/16 :goto_43

    .line 1291
    .end local v11    # "ret":I
    :cond_176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1293
    .restart local v12    # "token":J
    :try_start_17a
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.internal.DELETE_EMAILACCOUNT"

    invoke-static {v7, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v15, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v9, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1296
    const-string/jumbo v15, "user_id"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    const-string/jumbo v15, "service"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string/jumbo v15, "receive_host"

    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v17, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1cc} :catch_1d2
    .catchall {:try_start_17a .. :try_end_1cc} :catchall_1e3

    .line 1301
    const/4 v10, 0x1

    .line 1306
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d1

    .line 1302
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_1d2
    move-exception v8

    .line 1303
    .restart local v8    # "ex":Ljava/lang/Exception;
    :try_start_1d3
    const-string v15, "EmailAccountPolicy"

    const-string/jumbo v16, "deleteAccount() : failed. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1dd
    .catchall {:try_start_1d3 .. :try_end_1dd} :catchall_1e3

    .line 1304
    const/4 v10, 0x0

    .line 1306
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_1e3
    move-exception v15

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public getAccountDetails(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/Account;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1216
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1217
    const-string v3, "EmailAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountDetails() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1219
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    .line 1220
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v1, :cond_30

    .line 1222
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Landroid/app/enterprise/Account;

    move-result-object v2

    .line 1230
    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_30
    :goto_30
    return-object v2

    .line 1227
    :cond_31
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {p1, p2, p3, v3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1228
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_30

    iget-boolean v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v3, :cond_30

    .line 1229
    invoke-direct {p0, v0}, fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v2

    goto :goto_30
.end method

.method public getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailId"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1204
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1205
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/Account;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1386
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1387
    const-string v11, "EmailAccountPolicy"

    const-string/jumbo v12, "getAllEmailAccounts()"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 1391
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 1392
    .local v2, "accountlist":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v2, :cond_32

    .line 1393
    move-object v3, v2

    .local v3, "arr$":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_22
    if-ge v5, v9, :cond_3a

    aget-object v1, v3, v5

    .line 1394
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v1, :cond_2f

    .line 1395
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1399
    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v3    # "arr$":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    :cond_32
    const-string v11, "EmailAccountPolicy"

    const-string/jumbo v12, "getAllEmailAccounts_new( ): ids is empty "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    .end local v2    # "accountlist":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_3a
    :goto_3a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_88

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_4e
    return-object v11

    .line 1404
    :cond_4f
    :try_start_4f
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {p1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J

    move-result-object v8

    .line 1405
    .local v8, "ids":[J
    if-eqz v8, :cond_75

    .line 1406
    move-object v3, v8

    .local v3, "arr$":[J
    array-length v9, v3

    .restart local v9    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_5a
    if-ge v5, v9, :cond_3a

    aget-wide v6, v3, v5

    .line 1407
    .local v6, "id":J
    iget-object v11, p0, mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {p1, v6, v7, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1409
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_72

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v11, :cond_72

    .line 1410
    invoke-direct {p0, v0}, fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 1414
    .end local v0    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v3    # "arr$":[J
    .end local v5    # "i$":I
    .end local v6    # "id":J
    .end local v9    # "len$":I
    :cond_75
    const-string v11, "EmailAccountPolicy"

    const-string/jumbo v12, "getAllEmailAccounts( ): ids is empty "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_7d} :catch_7e

    goto :goto_3a

    .line 1416
    .end local v8    # "ids":[J
    :catch_7e
    move-exception v4

    .line 1417
    .local v4, "ex":Ljava/lang/Exception;
    const-string v11, "EmailAccountPolicy"

    const-string/jumbo v12, "getAllEmailAccounts() : failed. "

    invoke-static {v11, v12, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 1420
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_88
    const/4 v11, 0x0

    goto :goto_4e
.end method

.method public getSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 1596
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1597
    const-string v5, "EmailAccountPolicy"

    const-string v6, " getSecurityInComingServerPassword calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const/4 v3, 0x0

    .line 1612
    :goto_10
    return-object v3

    .line 1600
    :cond_11
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, p1, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1601
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1602
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1603
    .local v4, "userID":I
    const/4 v3, 0x0

    .line 1605
    .local v3, "password":Ljava/lang/String;
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1606
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1607
    const-string v5, "EmailAccountPolicy"

    const-string/jumbo v6, "getSecurityInComingServerPassword() success"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_42

    goto :goto_10

    .line 1608
    .end local v0    # "caller":Ljava/lang/String;
    :catch_42
    move-exception v2

    .line 1609
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "EmailAccountPolicy"

    const-string/jumbo v6, "getSecurityInComingServerPassword() failed "

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1610
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public getSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 1575
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1576
    const-string v5, "EmailAccountPolicy"

    const-string v6, " getSecurityOutGoingServerPassword calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const/4 v3, 0x0

    .line 1591
    :goto_10
    return-object v3

    .line 1579
    :cond_11
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, p1, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1580
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1581
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1582
    .local v4, "userID":I
    const/4 v3, 0x0

    .line 1584
    .local v3, "password":Ljava/lang/String;
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "O#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1585
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1586
    const-string v5, "EmailAccountPolicy"

    const-string/jumbo v6, "getSecurityOutGoingServerPassword() success"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_42

    goto :goto_10

    .line 1587
    .end local v0    # "caller":Ljava/lang/String;
    :catch_42
    move-exception v2

    .line 1588
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "EmailAccountPolicy"

    const-string/jumbo v6, "getSecurityOutGoingServerPassword() failed"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1589
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1450
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1456
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1467
    return-void
.end method

.method public removePendingAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 1426
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1427
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1428
    .local v0, "adminUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1429
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1430
    .local v6, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1432
    .local v4, "token":J
    :try_start_10
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

    invoke-static {v1, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v3, "send":Landroid/content/Intent;
    const-string/jumbo v7, "user_id"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string/jumbo v7, "service"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    const-string/jumbo v7, "receive_host"

    invoke-virtual {v3, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    iget-object v7, p0, mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_41} :catch_45
    .catchall {:try_start_10 .. :try_end_41} :catchall_52

    .line 1443
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1445
    .end local v3    # "send":Landroid/content/Intent;
    :goto_44
    return-void

    .line 1440
    :catch_45
    move-exception v2

    .line 1441
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_46
    const-string v7, "EmailAccountPolicy"

    const-string/jumbo v8, "removePendingAccount() : failed. "

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_52

    .line 1443
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_52
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public sendAccountsChangedBroadcast(Landroid/app/enterprise/ContextInfo;)V
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1318
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1319
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1320
    .local v0, "adminUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1321
    .local v1, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1322
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1323
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    return-void
.end method

.method public setAccountName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 274
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 275
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 277
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 280
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_2b

    .line 281
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountName() : No exist accId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_2a
    :goto_2a
    return v6

    .line 285
    :cond_2b
    if-nez p2, :cond_36

    .line 286
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setAccountName() : accountName is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 290
    :cond_36
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 292
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountName ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-wide/16 v8, -0x1

    const-string v7, "account_name"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2a

    const/4 v6, 0x1

    goto :goto_2a
.end method

.method public setAlwaysVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 457
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 459
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 460
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 461
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_4c

    .line 462
    const-string v1, "EmailAccountPolicy"

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

    .line 463
    const/4 v1, 0x0

    .line 489
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :goto_4b
    return v1

    .line 465
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_4c
    if-eqz p2, :cond_5b

    .line 466
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 467
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    .line 471
    :goto_54
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    goto :goto_4b

    .line 469
    :cond_5b
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    goto :goto_54

    .line 474
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_5f
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 476
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_82

    .line 477
    const-string v1, "EmailAccountPolicy"

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

    .line 478
    const/4 v1, 0x0

    goto :goto_4b

    .line 481
    :cond_82
    if-eqz p2, :cond_c0

    .line 482
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 488
    :goto_8a
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "vibrate"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_c4

    const/4 v1, 0x1

    goto :goto_4b

    .line 485
    :cond_c0
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_8a

    .line 489
    :cond_c4
    const/4 v1, 0x0

    goto :goto_4b
.end method

.method public setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1182
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1183
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAsDefaultAccount :  userID ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",   accId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1185
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 1186
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_52

    .line 1187
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const/4 v1, 0x0

    .line 1194
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :goto_51
    return v1

    .line 1190
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_52
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    .line 1191
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    goto :goto_51

    .line 1194
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_5c
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v1

    goto :goto_51
.end method

.method public setEmailAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 305
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 335
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setEmailAddress() : deprecated."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setInComingProtocol(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 576
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 577
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingProtocol()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, p2}, getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 581
    if-nez p2, :cond_1c

    .line 582
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingProtocol() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_1b
    :goto_1b
    return v6

    .line 585
    :cond_1c
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 586
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 587
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_44

    .line 588
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingProtocol_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 591
    :cond_44
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 592
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingProtocol returned  protocol : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_1b

    .line 596
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_70
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 599
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_92

    .line 600
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingProtocol() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 604
    :cond_92
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 605
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingProtocol returned  protocol : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "service"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_1b

    const/4 v6, 0x1

    goto/16 :goto_1b
.end method

.method public setInComingServerAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 749
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 750
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerAcceptAllCertificates()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 752
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 753
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_35

    .line 754
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_34
    :goto_34
    return v6

    .line 757
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_35
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    .line 759
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_34

    .line 764
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_57
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 767
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_79

    .line 768
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 772
    :cond_79
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 774
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "send_security"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_34

    const/4 v6, 0x1

    goto :goto_34
.end method

.method public setInComingServerAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 619
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 620
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerAddress()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 624
    if-nez p2, :cond_1d

    .line 625
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_1c
    :goto_1c
    return-wide v4

    .line 628
    :cond_1d
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 629
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 630
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_45

    .line 631
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setInComingServerAddress_new() : No exist accId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 634
    :cond_45
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    .line 636
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-wide v4, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    goto :goto_1c

    .line 640
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_6b
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 643
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_8d

    .line 644
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setInComingServerAddress() : No exist accId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 648
    :cond_8d
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 650
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v6, 0x1

    const-string/jumbo v7, "receive_host"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_1c
.end method

.method public setInComingServerLogin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 788
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 789
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerLogin() : deprecated. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 792
    if-nez p2, :cond_1d

    .line 793
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :goto_1c
    return-wide v4

    .line 797
    :cond_1d
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 800
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_3f

    .line 801
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerLogin() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 804
    :cond_3f
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerLogin deprecated "

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_1c
.end method

.method public setInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 820
    invoke-direct/range {p0 .. p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 821
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 822
    .local v12, "userID":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 823
    .local v5, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 824
    if-nez p2, :cond_1c

    .line 825
    const-string v6, "EmailAccountPolicy"

    const-string/jumbo v7, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v6, 0x0

    .line 849
    :goto_1b
    return v6

    .line 829
    :cond_1c
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 830
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v4

    .line 831
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v4, :cond_4d

    .line 832
    const-string v6, "EmailAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInComingServerPassword_new() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v6, 0x0

    goto :goto_1b

    .line 835
    :cond_4d
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    .line 836
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_1b

    .line 839
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v13

    .line 841
    .local v13, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v13, :cond_87

    .line 842
    const-string v6, "EmailAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInComingServerPassword() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v6, 0x0

    goto :goto_1b

    .line 846
    :cond_87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 847
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V

    .line 848
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    const/4 v6, 0x1

    goto/16 :goto_1b
.end method

.method public setInComingServerPathPrefix(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    .line 862
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 863
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerPathPrefix() : deprecated"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 866
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 869
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_33

    .line 870
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerPathPrefix() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :goto_32
    return v4

    .line 874
    :cond_33
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_32
.end method

.method public setInComingServerPort(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "port"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 663
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 664
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerPort()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    if-gez p2, :cond_18

    .line 667
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerPort() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_17
    :goto_17
    return v6

    .line 671
    :cond_18
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 672
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 673
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_40

    .line 674
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPort_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 677
    :cond_40
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    .line 678
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPort returned  port : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_17

    .line 682
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_62
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 685
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_84

    .line 686
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPort() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 690
    :cond_84
    iput p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 692
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPort returned  port : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "receive_port"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_17

    const/4 v6, 0x1

    goto/16 :goto_17
.end method

.method public setInComingServerSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 708
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 709
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setInComingServerSSL()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 712
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 713
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_35

    .line 714
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerSSL_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_34
    :goto_34
    return v6

    .line 717
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_35
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    .line 719
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_34

    .line 723
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_57
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 726
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_79

    .line 727
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerSSL() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 731
    :cond_79
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 733
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "send_security"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_34

    const/4 v6, 0x1

    goto :goto_34
.end method

.method public setOutGoingProtocol(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    .line 904
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 905
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingProtocol : deprecated."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, p2}, getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 909
    if-nez p2, :cond_1c

    .line 910
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :goto_1b
    return v4

    .line 914
    :cond_1c
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 917
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_3e

    .line 918
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingProtocol() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 922
    :cond_3e
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto :goto_1b
.end method

.method public setOutGoingServerAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 1046
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1047
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1050
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 1051
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_46

    .line 1052
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_45
    :goto_45
    return v6

    .line 1055
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_46
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    .line 1056
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerAcceptAllCertificates returned  port : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_45

    .line 1060
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_68
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 1063
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_8a

    .line 1064
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerAcceptAllCertificates() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 1068
    :cond_8a
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 1070
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerAcceptAllCertificates() returned  acceptAllCertificates : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "send_security"

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

.method public setOutGoingServerAddress(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 929
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 930
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 932
    if-nez p2, :cond_15

    .line 933
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_14
    :goto_14
    return-wide v4

    .line 937
    :cond_15
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 938
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 939
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_3d

    .line 940
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOutGoingServerAddress_new() : No exist accId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 943
    :cond_3d
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    .line 945
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOutGoingServerAddress() returned  serverAddress : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-wide v4, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    goto :goto_14

    .line 949
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_63
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 952
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_85

    .line 953
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOutGoingServerAddress() : No exist accId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 957
    :cond_85
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 958
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerAddress() returned  serverAddress : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v6, 0x1

    const-string/jumbo v7, "send_host"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_14
.end method

.method public setOutGoingServerLogin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)J
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 1085
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1087
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1089
    if-nez p2, :cond_15

    .line 1090
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :goto_14
    return-wide v4

    .line 1094
    :cond_15
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1097
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_37

    .line 1098
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerLogin() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 1102
    :cond_37
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_14
.end method

.method public setOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 1117
    invoke-direct/range {p0 .. p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1118
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 1119
    .local v12, "userID":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1121
    .local v5, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1122
    if-nez p2, :cond_1c

    .line 1123
    const-string v6, "EmailAccountPolicy"

    const-string/jumbo v7, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/4 v6, 0x0

    .line 1145
    :goto_1b
    return v6

    .line 1126
    :cond_1c
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1127
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v4

    .line 1128
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v4, :cond_4d

    .line 1129
    const-string v6, "EmailAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setOutGoingServerPassword_new() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const/4 v6, 0x0

    goto :goto_1b

    .line 1132
    :cond_4d
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    .line 1133
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v6, v0, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_1b

    .line 1136
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v13

    .line 1138
    .local v13, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v13, :cond_87

    .line 1139
    const-string v6, "EmailAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setOutGoingServerPassword() : No exist accId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v6, 0x0

    goto :goto_1b

    .line 1142
    :cond_87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1143
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V

    .line 1144
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    const/4 v6, 0x1

    goto/16 :goto_1b
.end method

.method public setOutGoingServerPathPrefix(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1157
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1158
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingServerPathPrefix() : deprecated. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1161
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1164
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_33

    .line 1165
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerPathPrefix() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :goto_32
    return v4

    .line 1169
    :cond_33
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    goto :goto_32
.end method

.method public setOutGoingServerPort(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "port"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 964
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 966
    if-gez p2, :cond_10

    .line 967
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_f
    :goto_f
    return v6

    .line 970
    :cond_10
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 971
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 972
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_38

    .line 973
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPort_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 976
    :cond_38
    iput p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    .line 977
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPort returned  port : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_f

    .line 981
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_5a
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 984
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_7c

    .line 985
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPort() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 989
    :cond_7c
    iput p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 991
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPort returned  port : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "send_port"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_f

    const/4 v6, 0x1

    goto/16 :goto_f
.end method

.method public setOutGoingServerSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 1006
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1007
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerSSL() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1010
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 1011
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_46

    .line 1012
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerSSL_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_45
    :goto_45
    return v6

    .line 1015
    .restart local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_46
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    .line 1016
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerSSL returned  port : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_45

    .line 1020
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_68
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 1023
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_8a

    .line 1024
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerSSL() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 1028
    :cond_8a
    iput-boolean p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 1030
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerSSL returned  enableSSL : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "send_security"

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

.method public setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 1641
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1642
    const-string v6, "EmailAccountPolicy"

    const-string v7, " setSecurityInComingServerPassword calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    .line 1659
    :goto_12
    return-wide v0

    .line 1645
    :cond_13
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    const-string v7, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v6, p1, v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1646
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1647
    .local v0, "callID":J
    if-nez p2, :cond_2d

    .line 1648
    const-string v6, "EmailAccountPolicy"

    const-string/jumbo v7, "setSecurityInComingServerPassword() : password is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    .line 1649
    goto :goto_12

    .line 1652
    :cond_2d
    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1653
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1654
    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "setSecurityInComingServerPassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_4c
    .catchall {:try_start_2d .. :try_end_4b} :catchall_56

    goto :goto_12

    .line 1655
    .end local v2    # "caller":Ljava/lang/String;
    :catch_4c
    move-exception v3

    .line 1656
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4d
    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "setSecurityInComingServerPassword() failed"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_56

    goto :goto_12

    .line 1659
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_56
    move-exception v4

    goto :goto_12
.end method

.method public setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 1617
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1618
    const-string v6, "EmailAccountPolicy"

    const-string v7, " setSecurityOutGoingServerPassword calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    .line 1635
    :goto_12
    return-wide v0

    .line 1621
    :cond_13
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    const-string v7, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v6, p1, v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1622
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1623
    .local v0, "callID":J
    if-nez p2, :cond_2d

    .line 1624
    const-string v6, "EmailAccountPolicy"

    const-string/jumbo v7, "setSecurityOutGoingServerPassword() : password is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    .line 1625
    goto :goto_12

    .line 1628
    :cond_2d
    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1629
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1630
    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "setSecurityOutGoingServerPassword() success"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_4c
    .catchall {:try_start_2d .. :try_end_4b} :catchall_56

    goto :goto_12

    .line 1631
    .end local v2    # "caller":Ljava/lang/String;
    :catch_4c
    move-exception v3

    .line 1632
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4d
    const-string v4, "EmailAccountPolicy"

    const-string/jumbo v5, "setSecurityOutGoingServerPassword() failed"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_56

    goto :goto_12

    .line 1635
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_56
    move-exception v4

    goto :goto_12
.end method

.method public setSenderName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 372
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 374
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 376
    if-nez p2, :cond_14

    .line 377
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setSenderName() : senderName is null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_13
    :goto_13
    return v6

    .line 381
    :cond_14
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 382
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 383
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_3c

    .line 384
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEmailAddress_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 387
    :cond_3c
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    .line 388
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_13

    .line 390
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_45
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 393
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_67

    .line 394
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSenderName() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 398
    :cond_67
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 400
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSenderName ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "sender_name"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_13

    const/4 v6, 0x1

    goto/16 :goto_13
.end method

.method public setSignature(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v6, 0x0

    .line 414
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 417
    if-nez p2, :cond_10

    .line 418
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setSignature() : signature is null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_f
    :goto_f
    return v6

    .line 422
    :cond_10
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 423
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 424
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_38

    .line 425
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignature_new() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 428
    :cond_38
    iput-object p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    .line 429
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v6

    goto :goto_f

    .line 432
    .end local v0    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_41
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 435
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_63

    .line 436
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignature() : No exist accId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 440
    :cond_63
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 442
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignature ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-wide/16 v8, -0x1

    const-string/jumbo v7, "signature"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v8, v4

    if-eqz v1, :cond_f

    const/4 v6, 0x1

    goto/16 :goto_f
.end method

.method public setSilentVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 505
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 544
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setSilentVibrateOnEmailNotification() : deprecated."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-direct {p0, p1}, enforceEmailAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 350
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 352
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_27

    .line 353
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncInterval() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_26
    return v4

    .line 357
    :cond_27
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 359
    const-string v1, "EmailAccountPolicy"

    const-string/jumbo v2, "setSyncInterval() : deprecated."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1462
    return-void
.end method
