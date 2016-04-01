.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
.super Landroid/os/AsyncTask;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedStoreOperation"
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
.field private mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mOperation:I

.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V
    .registers 6
    .param p2, "operation"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "installCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 580
    iput p2, p0, mOperation:I

    .line 581
    iput-object p3, p0, mAliases:Ljava/util/List;

    .line 582
    iput-object p4, p0, mCerts:Ljava/util/List;

    .line 583
    iput p5, p0, mUserId:I

    .line 584
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;

    .prologue
    .line 572
    invoke-direct/range {p0 .. p5}, <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 587
    const/4 v6, 0x0

    .line 588
    .local v6, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 591
    .local v8, "token":J
    :try_start_5
    iget-object v7, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # getter for: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;

    move-result-object v7

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, mUserId:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v7, v10}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v4

    .line 593
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    .line 594
    .local v5, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v5, :cond_28

    .line 595
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 596
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_23} :catch_76
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_23} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_23} :catch_10f
    .catchall {:try_start_5 .. :try_end_23} :catchall_13e

    move-result-object v7

    .line 636
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_27
    return-object v7

    .line 600
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_28
    :try_start_28
    iget v7, p0, mOperation:I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2a} :catch_59
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_2a} :catch_a9
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2a} :catch_f1
    .catchall {:try_start_28 .. :try_end_2a} :catchall_139

    packed-switch v7, :pswitch_data_144

    .line 615
    :cond_2d
    const/4 v6, 0x1

    .line 623
    :try_start_2e
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_76
    .catch Ljava/lang/AssertionError; {:try_start_2e .. :try_end_31} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_10f
    .catchall {:try_start_2e .. :try_end_31} :catchall_13e

    .line 636
    :goto_31
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_27

    .line 602
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :pswitch_39
    :try_start_39
    iget-object v7, p0, mCerts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 603
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/security/cert/Certificate;

    const/4 v10, 0x0

    aput-object v1, v7, v10

    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_58} :catch_59
    .catch Ljava/security/cert/CertificateException; {:try_start_39 .. :try_end_58} :catch_a9
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_58} :catch_f1
    .catchall {:try_start_39 .. :try_end_58} :catchall_139

    goto :goto_3f

    .line 616
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_59
    move-exception v2

    .line 617
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5a
    const-string v7, "RollbackRefreshOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrustedStoreOperation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_139

    .line 623
    :try_start_72
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_76
    .catch Ljava/lang/AssertionError; {:try_start_72 .. :try_end_75} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_75} :catch_10f
    .catchall {:try_start_72 .. :try_end_75} :catchall_13e

    goto :goto_31

    .line 625
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_76
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_77
    const-string v7, "RollbackRefreshOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrustedStoreOperation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_13e

    .line 636
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    .line 608
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :pswitch_93
    :try_start_93
    iget-object v7, p0, mAliases:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_99
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v5, v0}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_a8} :catch_59
    .catch Ljava/security/cert/CertificateException; {:try_start_93 .. :try_end_a8} :catch_a9
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_a8} :catch_f1
    .catchall {:try_start_93 .. :try_end_a8} :catchall_139

    goto :goto_99

    .line 618
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_a9
    move-exception v2

    .line 619
    .local v2, "e":Ljava/security/cert/CertificateException;
    :try_start_aa
    const-string v7, "RollbackRefreshOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrustedStoreOperation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_aa .. :try_end_c2} :catchall_139

    .line 623
    :try_start_c2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c5} :catch_76
    .catch Ljava/lang/AssertionError; {:try_start_c2 .. :try_end_c5} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_c5} :catch_10f
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_13e

    goto/16 :goto_31

    .line 627
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_c7
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/AssertionError;
    :try_start_c8
    const-string v7, "RollbackRefreshOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrustedStoreOperation("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_c8 .. :try_end_ec} :catchall_13e

    .line 636
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_34

    .line 620
    .end local v2    # "e":Ljava/lang/AssertionError;
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_f1
    move-exception v2

    .line 621
    .local v2, "e":Ljava/io/IOException;
    :try_start_f2
    const-string v7, "RollbackRefreshOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrustedStoreOperation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_f2 .. :try_end_10a} :catchall_139

    .line 623
    :try_start_10a
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_10d
    .catch Ljava/lang/InterruptedException; {:try_start_10a .. :try_end_10d} :catch_76
    .catch Ljava/lang/AssertionError; {:try_start_10a .. :try_end_10d} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_10d} :catch_10f
    .catchall {:try_start_10a .. :try_end_10d} :catchall_13e

    goto/16 :goto_31

    .line 631
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catch_10f
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_110
    const-string v7, "RollbackRefreshOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrustedStoreOperation("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catchall {:try_start_110 .. :try_end_134} :catchall_13e

    .line 636
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_34

    .line 623
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catchall_139
    move-exception v7

    :try_start_13a
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v7
    :try_end_13e
    .catch Ljava/lang/InterruptedException; {:try_start_13a .. :try_end_13e} :catch_76
    .catch Ljava/lang/AssertionError; {:try_start_13a .. :try_end_13e} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_13a .. :try_end_13e} :catch_10f
    .catchall {:try_start_13a .. :try_end_13e} :catchall_13e

    .line 636
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v5    # "keyChainService":Landroid/security/IKeyChainService;
    :catchall_13e
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 600
    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_39
        :pswitch_93
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 572
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
