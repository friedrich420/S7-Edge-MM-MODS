.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 284
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    .line 285
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 286
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    if-eqz p1, :cond_14

    .line 290
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 291
    .local v33, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 292
    .local v13, "configData":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 293
    .local v11, "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2ee

    .line 453
    .end local v11    # "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    .end local v13    # "configData":Landroid/os/Bundle;
    .end local v33    # "userId":I
    :cond_14
    :goto_14
    :pswitch_14
    return-void

    .line 296
    .restart local v11    # "callback":Landroid/app/enterprise/sso/IGenericSSOCallback;
    .restart local v13    # "configData":Landroid/os/Bundle;
    .restart local v33    # "userId":I
    :pswitch_15
    :try_start_15
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v11, v0

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v33

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    invoke-static {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v30

    .line 299
    .local v30, "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v11, :cond_14

    .line 300
    if-eqz v30, :cond_43

    .line 301
    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V

    .line 302
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Getting a token successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_37} :catch_38

    goto :goto_14

    .line 309
    .end local v30    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :catch_38
    move-exception v16

    .line 310
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 305
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v30    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :cond_43
    const/4 v2, -0x1

    :try_start_44
    invoke-interface {v11, v2}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    .line 306
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Failed to get a token"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_38

    goto :goto_14

    .line 315
    .end local v30    # "tokenInfo":Landroid/app/enterprise/sso/TokenInfo;
    :pswitch_4f
    :try_start_4f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v11, v0

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v33

    invoke-virtual {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v34

    .line 318
    .local v34, "userInfo":Landroid/app/enterprise/sso/UserInfo;
    if-eqz v11, :cond_14

    .line 319
    if-eqz v34, :cond_76

    .line 320
    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Landroid/app/enterprise/sso/IGenericSSOCallback;->userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6a} :catch_6b

    goto :goto_14

    .line 324
    .end local v34    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :catch_6b
    move-exception v16

    .line 325
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 322
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v34    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :cond_76
    const/4 v2, -0x1

    :try_start_77
    invoke-interface {v11, v2}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_6b

    goto :goto_14

    .line 329
    .end local v34    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :pswitch_7b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/enterprise/sso/GenericSSOConfig;

    .line 330
    .local v12, "config":Landroid/app/enterprise/sso/GenericSSOConfig;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 331
    .local v8, "adminUid":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 334
    .local v7, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 335
    .local v22, "identity":J
    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 337
    .local v10, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v10, :cond_c8

    .line 338
    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 340
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_bd

    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In handleMessage: Installing application in container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_bd
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$100()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    .line 343
    :cond_c8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    const/16 v26, -0x1

    .line 346
    .local v26, "ret":I
    const/16 v21, 0x0

    .line 347
    .local v21, "isConfiguredByFile":Z
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v8, v7}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 348
    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v2

    if-eqz v2, :cond_133

    .line 349
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_e5

    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Calling configureSSOByFile2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_e5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Landroid/app/enterprise/ContextInfo;[BI)I
    invoke-static {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v26

    .line 351
    const/16 v21, 0x1

    .line 358
    :goto_f3
    if-gez v26, :cond_fc

    .line 359
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Enrollment is failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_fc
    if-nez v21, :cond_14

    if-nez v26, :cond_14

    .line 361
    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 362
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_111

    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: getWhiteListPackages is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_111
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I

    move-result v26

    .line 364
    if-gez v26, :cond_14

    .line 365
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Add whitelist failed. Unenrolling."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    goto/16 :goto_14

    .line 353
    :cond_133
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_13e

    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Calling enrollSSOVendor2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_13e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$300(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v26

    goto :goto_f3

    .line 374
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v7    # "containerId":I
    .end local v8    # "adminUid":I
    .end local v10    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v12    # "config":Landroid/app/enterprise/sso/GenericSSOConfig;
    .end local v21    # "isConfiguredByFile":Z
    .end local v22    # "identity":J
    .end local v26    # "ret":I
    :pswitch_153
    const/16 v18, 0x0

    .line 375
    .local v18, "enrolledVendorExist":Z
    :try_start_155
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v35, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/UserManager;

    .line 377
    .local v31, "um":Landroid/os/UserManager;
    if-eqz v31, :cond_174

    .line 378
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v35

    .line 380
    :cond_174
    if-eqz v35, :cond_1c6

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c6

    .line 381
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_180
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    .line 382
    .local v34, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v34

    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    .line 383
    .local v15, "currentUserHandle":I
    move/from16 v0, v33

    if-eq v15, v0, :cond_180

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v2, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v14

    .line 387
    .local v14, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    const/16 v17, 0x0

    .line 388
    .local v17, "enrolledVendor":Lorg/w3c/dom/Node;
    const/16 v24, 0x0

    .line 389
    .local v24, "mdmUidNode":Lorg/w3c/dom/Node;
    if-eqz v14, :cond_180

    .line 390
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 391
    if-eqz v17, :cond_180

    .line 392
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1c4

    .line 393
    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In handleMessage: Enrolled vendor exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1c4
    const/16 v18, 0x1

    .line 401
    .end local v14    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v15    # "currentUserHandle":I
    .end local v17    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "mdmUidNode":Lorg/w3c/dom/Node;
    .end local v34    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1c6
    if-nez v18, :cond_14

    .line 402
    const/16 v19, 0x0

    .line 403
    .local v19, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 404
    .local v28, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    .line 405
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "timakeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 406
    const-string v9, "GenericSSOService"

    .line 407
    .local v9, "alias":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 408
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 409
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: SecretKey is deleted from TIMAKeystore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v9    # "alias":Ljava/lang/String;
    :cond_200
    :goto_200
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_203
    .catch Ljava/lang/SecurityException; {:try_start_155 .. :try_end_203} :catch_205
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_155 .. :try_end_203} :catch_24c
    .catch Ljava/security/KeyStoreException; {:try_start_155 .. :try_end_203} :catch_258
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_203} :catch_264
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_203} :catch_270

    goto/16 :goto_14

    .line 426
    .end local v19    # "file":Ljava/io/File;
    .end local v28    # "token":J
    .end local v31    # "um":Landroid/os/UserManager;
    .end local v35    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_205
    move-exception v16

    .line 427
    .local v16, "e":Ljava/lang/SecurityException;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: SecurityException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 411
    .end local v16    # "e":Ljava/lang/SecurityException;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v28    # "token":J
    .restart local v31    # "um":Landroid/os/UserManager;
    .restart local v35    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_211
    :try_start_211
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "androidkeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 413
    const-string v9, "KnoxSSOKey"

    .line 414
    .restart local v9    # "alias":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_200

    .line 415
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 417
    new-instance v19, Ljava/io/File;

    .end local v19    # "file":Ljava/io/File;
    const-string v2, "/data/system/KnoxSSO_SCKF"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .restart local v19    # "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 420
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_200

    .line 421
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24b
    .catch Ljava/lang/SecurityException; {:try_start_211 .. :try_end_24b} :catch_205
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_211 .. :try_end_24b} :catch_24c
    .catch Ljava/security/KeyStoreException; {:try_start_211 .. :try_end_24b} :catch_258
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_24b} :catch_264
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_24b} :catch_270

    goto :goto_200

    .line 428
    .end local v9    # "alias":Ljava/lang/String;
    .end local v19    # "file":Ljava/io/File;
    .end local v28    # "token":J
    .end local v31    # "um":Landroid/os/UserManager;
    .end local v35    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_24c
    move-exception v16

    .line 429
    .local v16, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: NoSuchAlgorithmException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 430
    .end local v16    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_258
    move-exception v16

    .line 431
    .local v16, "e":Ljava/security/KeyStoreException;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: KeyStoreException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 432
    .end local v16    # "e":Ljava/security/KeyStoreException;
    :catch_264
    move-exception v16

    .line 433
    .local v16, "e":Ljava/io/IOException;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: IOException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 434
    .end local v16    # "e":Ljava/io/IOException;
    :catch_270
    move-exception v16

    .line 435
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: Exception"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 439
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "enrolledVendorExist":Z
    :pswitch_27c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 440
    .local v27, "setValue":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 441
    .local v32, "unenrolledPackageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$100()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v25

    .line 442
    .local v25, "packageName":Ljava/lang/String;
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2c4

    .line 443
    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setunenroll:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_2c4
    if-eqz v25, :cond_14

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v27

    move/from16 v1, v33

    invoke-static {v2, v4, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_14

    .line 293
    nop

    :pswitch_data_2ee
    .packed-switch 0x2
        :pswitch_15
        :pswitch_4f
        :pswitch_14
        :pswitch_7b
        :pswitch_153
        :pswitch_27c
    .end packed-switch
.end method
