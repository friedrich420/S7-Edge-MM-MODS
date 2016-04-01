.class public Lcom/android/server/enterprise/otp/CallerVerification;
.super Ljava/lang/Object;
.source "CallerVerification.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "callerSign":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v4

    .line 305
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_4c

    .line 306
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 307
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 308
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result-object v0

    goto :goto_11

    .line 312
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_2f
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerVerification::fetchSignature - NameNotFoundException [Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4c
    return-object v0
.end method

.method public static verifyAdminAccess(Landroid/content/Context;Ljava/lang/String;)I
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v2, "CallerVerification::verifyAdminAccess - Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 76
    const/4 v13, 0x0

    .line 77
    .local v13, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v12, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 80
    .local v12, "containerId":I
    invoke-static/range {p0 .. p0}, verifyProvisionPermission(Landroid/content/Context;)Z

    .line 83
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v16

    .line 84
    .local v16, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    if-nez v16, :cond_4c

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::verifyAdminAccess - OTPToken not found [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 87
    const/16 v13, 0x408

    .line 91
    :cond_4c
    if-nez v13, :cond_5d

    const/16 v2, 0x303

    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 92
    const-string v2, "CallerVerification::verifyAdminAccess - Token is corrupted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 93
    const/16 v13, 0x40d

    .line 97
    :cond_5d
    if-nez v13, :cond_aa

    .line 98
    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "callerSignInfo":Ljava/lang/String;
    if-nez v10, :cond_ab

    .line 100
    const-string v2, "CallerVerification::verifyAdminAccess - Package SignerInfo is NULL"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 101
    const/16 v13, 0x4ff

    .line 113
    :cond_6e
    :goto_6e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 114
    .local v11, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 115
    .local v14, "psToken":J
    if-eqz v13, :cond_a7

    .line 116
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller doesn\'t have permission to access OTP Provision Apis. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 120
    :cond_a7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .end local v10    # "callerSignInfo":Ljava/lang/String;
    .end local v11    # "callerUid":I
    .end local v14    # "psToken":J
    :cond_aa
    return v13

    .line 105
    .restart local v10    # "callerSignInfo":Ljava/lang/String;
    :cond_ab
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12, v9, v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isAdminAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 107
    const/16 v2, 0x40a

    if-ne v13, v2, :cond_bf

    .line 108
    const-string v2, "CallerVerification::verifyAdminAccess - Invalid container id."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_6e

    .line 109
    :cond_bf
    const/16 v2, 0x402

    if-ne v13, v2, :cond_6e

    .line 110
    const-string v2, "CallerVerification::verifyAdminAccess - Package not whitelisted for this tokenId."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_6e
.end method

.method public static verifyCreateAccess(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v3, "CallerVerification::verifyCreateAccess - Enter"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, verifyProvisionPermission(Landroid/content/Context;)Z

    .line 58
    invoke-static {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokenCount()I

    move-result v2

    .line 59
    .local v2, "count":I
    const/16 v3, 0xc

    if-lt v2, v3, :cond_37

    .line 60
    const-string v3, "Maximum token limit per device exceeded. Only 12 tokens per device can be provisioned"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 66
    .local v1, "containerId":I
    const/16 v3, 0x40f

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 68
    const/4 v3, 0x0

    .line 71
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    :goto_36
    return v3

    :cond_37
    const/4 v3, 0x1

    goto :goto_36
.end method

.method public static verifyCryptoAccess(Landroid/content/Context;Ljava/lang/String;ZI)I
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "isHmac"    # Z
    .param p3, "type"    # I

    .prologue
    .line 232
    const-string v2, "CallerVerification::verifyCryptoAccess - Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 233
    const/4 v14, 0x0

    .line 235
    .local v14, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v10, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 237
    .local v10, "containerId":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v11

    .line 238
    .local v11, "dbh":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    const/4 v15, 0x0

    .line 239
    .local v15, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    const-wide/16 v12, 0x0

    .line 242
    .local v12, "psToken":J
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v15

    .line 243
    if-nez v15, :cond_f3

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::verifyCryptoAccess - OTPToken not found [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 246
    const/16 v14, 0x408

    .line 248
    if-eqz v14, :cond_84

    .line 249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 250
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Caller is trying to access OTP TokenId that doesn\'t exist. ["

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    :cond_84
    :goto_84
    if-nez v14, :cond_cd

    .line 263
    move-object/from16 v0, p0

    invoke-static {v0, v8, v10}, fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "callerSignInfo":Ljava/lang/String;
    if-nez v9, :cond_103

    .line 265
    const-string v2, "CallerVerification::verifyCryptoAccess - Package SignerInfo is NULL"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 266
    const/16 v14, 0x4ff

    .line 279
    :cond_95
    :goto_95
    if-eqz v14, :cond_cd

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 281
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Caller doesn\'t have permission to access this OTP Token. ["

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    .end local v9    # "callerSignInfo":Ljava/lang/String;
    :cond_cd
    if-nez v14, :cond_f2

    .line 291
    if-eqz p2, :cond_dd

    const/16 v2, 0x170

    move/from16 v0, p3

    if-eq v2, v0, :cond_dd

    const/16 v2, 0x171

    move/from16 v0, p3

    if-ne v2, v0, :cond_eb

    :cond_dd
    if-nez p2, :cond_f2

    const/16 v2, 0x190

    move/from16 v0, p3

    if-eq v2, v0, :cond_f2

    const/16 v2, 0x191

    move/from16 v0, p3

    if-eq v2, v0, :cond_f2

    .line 293
    :cond_eb
    const-string v2, "CallerVerification::verifyCryptoAccess - input type not supported"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 294
    const/16 v14, 0x40e

    .line 297
    :cond_f2
    return v14

    .line 255
    :cond_f3
    const/16 v2, 0x303

    invoke-virtual {v15}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v3

    if-ne v2, v3, :cond_84

    .line 256
    const-string v2, "CallerVerification::verifyCryptoAccess - Token is corrupted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 257
    const/16 v14, 0x40d

    goto :goto_84

    .line 270
    .restart local v9    # "callerSignInfo":Ljava/lang/String;
    :cond_103
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v10, v8, v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 272
    const/16 v2, 0x40a

    if-ne v14, v2, :cond_113

    .line 273
    const-string v2, "CallerVerification::verifyCryptoAccess - Invalid container id."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_95

    .line 274
    :cond_113
    const/16 v2, 0x402

    if-ne v14, v2, :cond_95

    .line 275
    const-string v2, "CallerVerification::verifyCryptoAccess - Package not whitelisted for this tokenId."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_95
.end method

.method public static verifyGenerateAccess(Landroid/content/Context;Ljava/lang/String;)I
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v2, "CallerVerification::verifyGenerateAccess - Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 128
    const/16 v16, 0x0

    .line 129
    .local v16, "ret":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v12, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 131
    .local v12, "containerId":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v13

    .line 132
    .local v13, "dbh":Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    const/16 v17, 0x0

    .line 133
    .local v17, "token":Lcom/sec/enterprise/knox/otp/common/OTPToken;
    const-wide/16 v14, 0x0

    .line 136
    .local v14, "psToken":J
    invoke-static {}, Lcom/android/server/enterprise/otp/RateCheck;->getInstance()Lcom/android/server/enterprise/otp/RateCheck;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v9, v0}, Lcom/android/server/enterprise/otp/RateCheck;->isCallMalicious(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 137
    const-string v2, "OTPService::verifyGenerateAccess - Malicious activity detected, caller blocked."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 138
    const-string v2, "Please try after sometime"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 141
    .local v11, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 142
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller is trying to generate OTP beyond fair usage limit. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 146
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    const/16 v16, 0x40c

    .line 152
    .end local v11    # "callerUid":I
    :cond_7a
    if-nez v16, :cond_e0

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v17

    .line 154
    if-nez v17, :cond_1aa

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OTPService::verifyGenerateAccess - OTPToken not found [tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 157
    const/16 v16, 0x408

    .line 159
    if-eqz v16, :cond_e0

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 161
    .restart local v11    # "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 162
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller is trying to access OTP TokenId that doesn\'t exist. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 166
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .end local v11    # "callerUid":I
    :cond_e0
    :goto_e0
    if-nez v16, :cond_12d

    .line 177
    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, fetchSignature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "callerSignInfo":Ljava/lang/String;
    if-nez v10, :cond_1bb

    .line 179
    const-string v2, "CallerVerification::verifyGenerateAccess - Package SignerInfo is NULL"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 180
    const/16 v16, 0x4ff

    .line 193
    :cond_f1
    :goto_f1
    if-eqz v16, :cond_12d

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 195
    .restart local v11    # "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 196
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller doesn\'t have permission to access this OTP Token. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 200
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .end local v10    # "callerSignInfo":Ljava/lang/String;
    .end local v11    # "callerUid":I
    :cond_12d
    if-nez v16, :cond_178

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v2

    const/16 v3, 0x301

    if-eq v2, v3, :cond_178

    .line 206
    const-string v2, "CallerVerification::verifyGenerateAccess - Token not active"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 207
    const/16 v16, 0x407

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 210
    .restart local v11    # "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 211
    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caller is trying to access OTP TokenId that doesn\'t exist. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 215
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    .end local v11    # "callerUid":I
    :cond_178
    if-nez v16, :cond_1a9

    .line 220
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getTokenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->checkPolicy(Ljava/lang/String;)I

    move-result v16

    .line 221
    if-eqz v16, :cond_1a9

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallerVerification::verifyGenerateAccess - checkPolicy Failed [ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 224
    const-string v2, "OTP Token Expired"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    :cond_1a9
    return v16

    .line 168
    :cond_1aa
    const/16 v2, 0x303

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/otp/common/OTPToken;->getState()I

    move-result v3

    if-ne v2, v3, :cond_e0

    .line 169
    const-string v2, "CallerVerification::verifyGenerateAccess - Token is corrupted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 170
    const/16 v16, 0x40d

    goto/16 :goto_e0

    .line 184
    .restart local v10    # "callerSignInfo":Ljava/lang/String;
    :cond_1bb
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12, v9, v10}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->isAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 186
    const/16 v2, 0x40a

    move/from16 v0, v16

    if-ne v0, v2, :cond_1ce

    .line 187
    const-string v2, "CallerVerification::verifyGenerateAccess - Invalid container id."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 188
    :cond_1ce
    const/16 v2, 0x402

    move/from16 v0, v16

    if-ne v0, v2, :cond_f1

    .line 189
    const-string v2, "CallerVerification::verifyGenerateAccess - Package not whitelisted for this tokenId."

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_f1
.end method

.method public static verifyProvisionPermission(Landroid/content/Context;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "callerPackage":Ljava/lang/String;
    const-string v1, "android.permission.sec.OTP_PROVISION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1c

    .line 33
    const-string v0, "CallerVerification::verifyCallerPermission - Success"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallerVerification::verifyCallerPermission - Verification Failed [Package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Permission = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.sec.OTP_PROVISION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 41
    .local v8, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 42
    .local v10, "psToken":J
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller doesn\'t have permission to access OTP Provision Apis. ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 45
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission Denial: This api call requires android.permission.sec.OTP_PROVISION"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
