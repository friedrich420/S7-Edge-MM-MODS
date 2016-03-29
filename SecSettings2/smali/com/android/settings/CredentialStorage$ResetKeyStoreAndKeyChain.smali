.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings/CredentialStorage$1;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 628
    const/4 v11, 0x1

    .line 630
    .local v11, "success":Z
    :try_start_0
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    invoke-direct {v3, v14}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 631
    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const-string v15, "knox_ccm_policy"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v15

    # setter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v14, v15}, Lcom/android/settings/CredentialStorage;->access$402(Lcom/android/settings/CredentialStorage;Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 632
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v14}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v14}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v14

    invoke-interface {v14}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "ccmVersion":Ljava/lang/String;
    :goto_0
    const-string v14, "3.0"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v14}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v14

    invoke-interface {v14, v3}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;
    invoke-static {v14}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v14

    invoke-interface {v14, v3}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->keychainMarkedReset(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    .line 637
    if-eqz v11, :cond_3

    .line 638
    const-string v14, "CredentialStorage"

    const-string v15, "Successfully deleted certificates from CCM"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v2    # "ccmVersion":Ljava/lang/String;
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 654
    .local v10, "pi":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/settings/CredentialStorage;->isUserRemoveCertificatesAllowed(I)Z
    invoke-static {v14, v15}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;I)Z

    move-result v7

    .line 657
    .local v7, "isClearAllowedForUser":Z
    if-nez v7, :cond_4

    .line 659
    const-string v14, "CredentialStorage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Clear not allowed for userId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (isUserRemoveCertificatesAllowedAsUser == false)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 632
    .end local v7    # "isClearAllowedForUser":Z
    .end local v10    # "pi":Landroid/content/pm/UserInfo;
    .restart local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 640
    .restart local v2    # "ccmVersion":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "CredentialStorage"

    const-string v15, "Error deleting certificates from CCM"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 644
    .end local v2    # "ccmVersion":Ljava/lang/String;
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :catch_0
    move-exception v4

    .line 645
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v11, 0x0

    .line 646
    const-string v14, "CredentialStorage"

    const-string v15, "Failed at ClientCertificateManager reset API"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 667
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v7    # "isClearAllowedForUser":Z
    .restart local v10    # "pi":Landroid/content/pm/UserInfo;
    :cond_4
    # getter for: Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I
    invoke-static {}, Lcom/android/settings/CredentialStorage;->access$600()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v9, :cond_1

    aget v13, v1, v6

    .line 668
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v14}, Lcom/android/settings/CredentialStorage;->access$700(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v14

    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/security/KeyStore;->clearUid(I)Z

    .line 667
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 675
    .end local v1    # "arr$":[I
    .end local v6    # "i$":I
    .end local v7    # "isClearAllowedForUser":Z
    .end local v9    # "len$":I
    .end local v10    # "pi":Landroid/content/pm/UserInfo;
    .end local v13    # "uid":I
    :cond_5
    :try_start_2
    const-string v14, "com.samsung.ucs.ucsservice"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v12

    .line 676
    .local v12, "ucmeService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-eqz v12, :cond_6

    .line 677
    invoke-interface {v12}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->resetNonMdmCertificates()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 686
    .end local v12    # "ucmeService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :cond_6
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v14}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v8

    .line 688
    .local v8, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    if-eqz v11, :cond_7

    :try_start_4
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v14

    invoke-interface {v14}, Landroid/security/IKeyChainService;->reset()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_5
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v14

    .line 692
    :try_start_5
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    .line 699
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_6
    return-object v14

    .line 679
    :catch_1
    move-exception v4

    .line 680
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 681
    const-string v14, "CredentialStorage"

    const-string v15, "Failed at UCS CredentialManagerService (IUcmService) reset API"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 688
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 689
    :catch_2
    move-exception v4

    .line 690
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v14, 0x0

    :try_start_6
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v14

    .line 692
    :try_start_7
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 694
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v4

    .line 695
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    .line 696
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_6

    .line 692
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v14

    :try_start_8
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v14
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4

    .line 697
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_4
    move-exception v4

    .line 698
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v14, "CredentialStorage"

    const-string v15, "CredentialStorage is destroyed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 704
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0e0b8a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 712
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0e0b8b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
