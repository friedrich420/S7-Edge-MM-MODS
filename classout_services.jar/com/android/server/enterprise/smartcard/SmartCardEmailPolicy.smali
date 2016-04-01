.class public Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;
.source "SmartCardEmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmailAccts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "SmartCardEmailPolicy"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;-><init>()V

    .line 67
    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mEmailAccts:[I

    .line 72
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 74
    return-void
.end method

.method private broadcastIntentAsUser(ZII)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edm.intent.action.smartcard.email.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 571
    .local v2, "token":J
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 572
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    return-void
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 85
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 87
    return-object p1
.end method

.method private getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "cert_type"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 500
    const/4 v3, 0x0

    .line 504
    .local v3, "alias_name":Ljava/lang/String;
    :try_start_1
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 506
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 507
    .local v1, "adminId":Ljava/lang/Long;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "EmailAddress"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v12, "containerID"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v12, "adminUid"

    invoke-virtual {v7, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 512
    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/String;

    .line 513
    .local v5, "columns":[Ljava/lang/String;
    const-string/jumbo v12, "encryptionCertificateAlias"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    .line 514
    const/4 v12, 0x0

    const-string/jumbo v13, "encryptionCertificateAlias"

    aput-object v13, v5, v12

    .line 519
    :cond_47
    :goto_47
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "SmartCardEmailTable"

    invoke-virtual {v12, v13, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 521
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_d

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 522
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 523
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 524
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 525
    .local v6, "cv":Landroid/content/ContentValues;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v6, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    if-eqz v3, :cond_5b

    move-object v4, v3

    .line 536
    .end local v1    # "adminId":Ljava/lang/Long;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "alias_name":Ljava/lang/String;
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v4, "alias_name":Ljava/lang/String;
    :goto_71
    return-object v4

    .line 515
    .end local v4    # "alias_name":Ljava/lang/String;
    .restart local v1    # "adminId":Ljava/lang/Long;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v3    # "alias_name":Ljava/lang/String;
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v7    # "cvWhere":Landroid/content/ContentValues;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_72
    const-string/jumbo v12, "signatureCertificateAlias"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_47

    .line 516
    const/4 v12, 0x0

    const-string/jumbo v13, "signatureCertificateAlias"

    aput-object v13, v5, v12
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_83} :catch_84

    goto :goto_47

    .line 532
    .end local v1    # "adminId":Ljava/lang/Long;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_84
    move-exception v8

    .line 533
    .local v8, "e":Ljava/lang/Exception;
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "getAliasName() failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "e":Ljava/lang/Exception;
    :goto_8d
    move-object v4, v3

    .line 536
    .end local v3    # "alias_name":Ljava/lang/String;
    .restart local v4    # "alias_name":Ljava/lang/String;
    goto :goto_71

    .line 531
    .end local v4    # "alias_name":Ljava/lang/String;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v3    # "alias_name":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_8f
    :try_start_8f
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getAliasName() alias name ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a8} :catch_84

    goto :goto_8d
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 78
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 81
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEmailAcctCountAsUser(IILjava/lang/String;)I
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "userID"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 540
    const/4 v5, 0x0

    .line 543
    .local v5, "retCnt":I
    :try_start_1
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 545
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 546
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "emailAuthEnabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v6, "adminUid"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    if-eqz p3, :cond_3c

    .line 551
    const-string v6, "EmailAddress"

    invoke-virtual {v2, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_3c
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardEmailTable"

    invoke-virtual {v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v5, v6

    .line 554
    goto :goto_b

    .line 555
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_46
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEmailAcctCountAsUser() count ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_60

    .line 560
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_5f
    return v5

    .line 556
    :catch_60
    move-exception v3

    .line 557
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEmailAcctCountAsUser() failed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method private isAuthenticationEnabledAsUser(II)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "cnt":I
    if-lez v0, :cond_9

    .line 214
    const/4 v1, 0x1

    .line 216
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public getSMIMEEncryptionCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_5

    move-object v1, v0

    .line 315
    .end local v0    # "alias_name":Ljava/lang/String;
    .local v1, "alias_name":Ljava/lang/String;
    :goto_4
    return-object v1

    .line 309
    .end local v1    # "alias_name":Ljava/lang/String;
    .restart local v0    # "alias_name":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 310
    .local v3, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 312
    .local v2, "containerId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 313
    const-string/jumbo v4, "encryptionCertificateAlias"

    invoke-direct {p0, v4, v2, v3, p2}, getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 315
    .end local v0    # "alias_name":Ljava/lang/String;
    .restart local v1    # "alias_name":Ljava/lang/String;
    goto :goto_4
.end method

.method public getSMIMESignatureCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_5

    move-object v1, v0

    .line 297
    .end local v0    # "alias_name":Ljava/lang/String;
    .local v1, "alias_name":Ljava/lang/String;
    :goto_4
    return-object v1

    .line 291
    .end local v1    # "alias_name":Ljava/lang/String;
    .restart local v0    # "alias_name":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 292
    .local v3, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 294
    .local v2, "containerId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 295
    const-string/jumbo v4, "signatureCertificateAlias"

    invoke-direct {p0, v4, v2, v3, p2}, getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 297
    .end local v0    # "alias_name":Ljava/lang/String;
    .restart local v1    # "alias_name":Ljava/lang/String;
    goto :goto_4
.end method

.method public isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 185
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isAuthenticationEnabled()"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 204
    .local v1, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "cnt":I
    if-lez v0, :cond_17

    .line 206
    const/4 v2, 0x1

    .line 208
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public isCredentialRequired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 148
    if-nez p2, :cond_4

    .line 177
    :cond_3
    :goto_3
    return v2

    .line 151
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 153
    .local v1, "userId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 173
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v3, v1, p2}, getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "cnt":I
    if-lez v0, :cond_3

    .line 175
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 467
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 472
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, v3}, getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .line 473
    .local v0, "cnt":I
    const/4 v1, 0x0

    .line 474
    .local v1, "enable":Z
    if-nez v0, :cond_13

    .line 478
    :goto_12
    return-void

    .line 477
    :cond_13
    invoke-direct {p0, v1, v4, v2}, broadcastIntentAsUser(ZII)V

    goto :goto_12
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 487
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 496
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 483
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 491
    return-void
.end method

.method public removeSMIMEEncryptionCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 422
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 423
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 424
    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 425
    .local v2, "containerId":I
    const/4 v0, 0x0

    .line 427
    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_f

    .line 460
    :cond_e
    :goto_e
    return v8

    .line 430
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 434
    :try_start_17
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 435
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v6, 0x0

    .line 440
    .local v6, "ret":Z
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 442
    .local v1, "cnt":I
    if-lez v1, :cond_e

    .line 444
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "encryptionCertificateAlias"

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_57

    move-result v6

    .line 448
    if-eqz v6, :cond_e

    .line 449
    const/4 v8, 0x1

    goto :goto_e

    .line 456
    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_57
    move-exception v5

    .line 457
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "removeSMIMEEncryptionCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public removeSMIMESignatureCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 375
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 376
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 377
    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 378
    .local v2, "containerId":I
    const/4 v0, 0x0

    .line 380
    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_f

    .line 413
    :cond_e
    :goto_e
    return v8

    .line 383
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 387
    :try_start_17
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v6, 0x0

    .line 393
    .local v6, "ret":Z
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 395
    .local v1, "cnt":I
    if-lez v1, :cond_e

    .line 397
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "signatureCertificateAlias"

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_57

    move-result v6

    .line 401
    if-eqz v6, :cond_e

    .line 402
    const/4 v8, 0x1

    goto :goto_e

    .line 409
    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_57
    move-exception v5

    .line 410
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "removeSMIMESignatureCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public requireCredentials(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "require"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 94
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 96
    .local v7, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 98
    .local v1, "containerId":I
    if-nez p2, :cond_f

    .line 141
    :cond_e
    :goto_e
    return v8

    .line 101
    :cond_f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 105
    :try_start_17
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v10, "containerID"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v10, "EmailAddress"

    invoke-virtual {v3, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, "ret":Z
    const/4 v10, 0x0

    invoke-direct {p0, v1, v7, v10}, getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v5

    .line 112
    .local v5, "preCnt":I
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardEmailTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 114
    .local v0, "cnt":I
    if-lez v0, :cond_72

    .line 116
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "emailAuthEnabled"

    if-ne p3, v9, :cond_70

    move v10, v9

    :goto_50
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardEmailTable"

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    .line 127
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_5f
    if-eqz v6, :cond_e

    .line 129
    const/4 v10, 0x0

    invoke-direct {p0, v1, v7, v10}, getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .line 130
    if-nez v5, :cond_8a

    if-lez v0, :cond_8a

    .line 131
    const/4 v10, 0x1

    invoke-direct {p0, v10, v1, v7}, broadcastIntentAsUser(ZII)V

    :cond_6e
    :goto_6e
    move v8, v9

    .line 135
    goto :goto_e

    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_70
    move v10, v8

    .line 117
    goto :goto_50

    .line 122
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_72
    const-string/jumbo v11, "emailAuthEnabled"

    if-ne p3, v9, :cond_88

    move v10, v9

    :goto_78
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardEmailTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_5f

    :cond_88
    move v10, v8

    .line 122
    goto :goto_78

    .line 132
    :cond_8a
    if-lez v5, :cond_6e

    if-nez v0, :cond_6e

    .line 133
    const/4 v10, 0x0

    invoke-direct {p0, v10, v1, v7}, broadcastIntentAsUser(ZII)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_92} :catch_93

    goto :goto_6e

    .line 137
    .end local v0    # "cnt":I
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "preCnt":I
    .end local v6    # "ret":Z
    :catch_93
    move-exception v4

    .line 138
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "requireCredentials() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method public setForceSMIMEEncryptionCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 324
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 325
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 326
    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 328
    .local v2, "containerId":I
    if-eqz p2, :cond_f

    if-nez p3, :cond_10

    .line 366
    :cond_f
    :goto_f
    return v8

    .line 331
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 335
    :try_start_18
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v6, 0x0

    .line 341
    .local v6, "ret":Z
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 343
    .local v1, "cnt":I
    if-lez v1, :cond_f

    .line 345
    const-string/jumbo v9, "encryptionCertificateAlias"

    invoke-direct {p0, v9, v2, v7, p2}, getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "alias_name":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 350
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "encryptionCertificateAlias"

    invoke-virtual {v3, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5c} :catch_61

    move-result v6

    .line 354
    if-eqz v6, :cond_f

    .line 355
    const/4 v8, 0x1

    goto :goto_f

    .line 362
    .end local v0    # "alias_name":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_61
    move-exception v5

    .line 363
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "setForceSMIMEEncryptionCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setForceSMIMESignatureCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 237
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 239
    .local v7, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 241
    .local v2, "containerId":I
    if-eqz p2, :cond_f

    if-nez p3, :cond_10

    .line 279
    :cond_f
    :goto_f
    return v8

    .line 244
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 248
    :try_start_18
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v9, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v9, "EmailAddress"

    invoke-virtual {v4, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v6, 0x0

    .line 254
    .local v6, "ret":Z
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 256
    .local v1, "cnt":I
    if-lez v1, :cond_f

    .line 258
    const-string/jumbo v9, "signatureCertificateAlias"

    invoke-direct {p0, v9, v2, v7, p2}, getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "alias_name":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 263
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "signatureCertificateAlias"

    invoke-virtual {v3, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardEmailTable"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5c} :catch_61

    move-result v6

    .line 267
    if-eqz v6, :cond_f

    .line 268
    const/4 v8, 0x1

    goto :goto_f

    .line 275
    .end local v0    # "alias_name":Ljava/lang/String;
    .end local v1    # "cnt":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    :catch_61
    move-exception v5

    .line 276
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "setForceSMIMESignatureCertificate() failed"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method
