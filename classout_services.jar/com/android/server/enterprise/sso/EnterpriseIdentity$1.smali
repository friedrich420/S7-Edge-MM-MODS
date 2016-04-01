.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;->registerPersonaStateObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 258
    return-void
.end method

.method public onPersonaActive(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 251
    return-void
.end method

.method public onRemovePersona(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 263
    return-void
.end method

.method public onResetPersona(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 268
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 24
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 275
    sget-object v3, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_8c

    sget-object v3, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_8c

    .line 277
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_36

    .line 278
    const-string v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In onStateChange: old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_36
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    if-eqz v3, :cond_8c

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    if-eqz v3, :cond_8c

    .line 282
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_4f

    .line 283
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In onStateChange: authInfoMgr not null and migration needed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_4f
    const/16 v16, 0x0

    .line 286
    .local v16, "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_start_51
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v16

    .line 288
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->updateContainerID(I)V
    invoke-static {v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V
    invoke-static {v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_8d

    .line 295
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In onStateChange: install package in container is failed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v16    # "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :cond_8c
    :goto_8c
    return-void

    .line 298
    .restart local v16    # "packageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :cond_8d
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_98

    .line 299
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In onStateChange: Package install success"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_98
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 302
    .local v1, "service":Lcom/android/server/pm/PersonaManagerService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user/0/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "appDirInOwner":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "appDirInContainer":Ljava/lang/String;
    const/4 v3, 0x0

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersonaManagerService;->copyPackageData(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v17

    .line 312
    .local v17, "status":I
    if-eqz v17, :cond_12b

    .line 313
    const-string v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In onStateChange: EnterprisePartitionManager#copy failed for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for containerId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_11f} :catch_121

    goto/16 :goto_8c

    .line 364
    .end local v1    # "service":Lcom/android/server/pm/PersonaManagerService;
    .end local v2    # "appDirInOwner":Ljava/lang/String;
    .end local v4    # "appDirInContainer":Ljava/lang/String;
    .end local v17    # "status":I
    :catch_121
    move-exception v13

    .line 365
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In onStateChange: RemoteException"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8c

    .line 321
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v1    # "service":Lcom/android/server/pm/PersonaManagerService;
    .restart local v2    # "appDirInOwner":Ljava/lang/String;
    .restart local v4    # "appDirInContainer":Ljava/lang/String;
    .restart local v17    # "status":I
    :cond_12b
    :try_start_12b
    new-instance v15, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$400()Landroid/util/SparseArray;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    iget-object v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {v15, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 324
    .local v15, "newLocationDoc":Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    invoke-static {v3, v5, v15}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$500(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    .line 327
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    if-eqz v3, :cond_195

    .line 328
    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 330
    .local v14, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    .line 333
    .local v11, "adminUid":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$700(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, p1

    invoke-static {v0, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    move/from16 v0, p1

    invoke-direct {v6, v3, v0}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-object v7, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$600(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/os/Bundle;

    move-result-object v9

    move/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendorInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    .line 340
    .end local v11    # "adminUid":I
    .end local v14    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_195
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeFileAndCacheEntry(I)V
    invoke-static {v3, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$800(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isEnterpriseSSOEnrolled(Ljava/lang/String;I)Z
    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$900(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_243

    .line 344
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1d3

    .line 347
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In onStateChange: Failed to clear authenticator app data"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isGenericSSOEnrolled(Ljava/lang/String;I)Z
    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1000(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_243

    .line 352
    const-string v3, "EnterpriseIdentity"

    const-string v5, "In onStateChange: Restoring authenticator config"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget v0, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    move/from16 v18, v0

    .line 354
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v12

    .line 356
    .local v12, "authenticator":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$700(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;

    move-result-object v19

    .line 357
    .local v19, "vendorBundle":Landroid/os/Bundle;
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v5

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 359
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v12    # "authenticator":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v18    # "userId":I
    .end local v19    # "vendorBundle":Landroid/os/Bundle;
    :cond_243
    const/4 v3, 0x0

    # setter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$002(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_12b .. :try_end_247} :catch_121

    goto/16 :goto_8c
.end method
