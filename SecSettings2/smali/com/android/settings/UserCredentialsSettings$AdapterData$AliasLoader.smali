.class Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/UserCredentialsSettings$CertHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mList:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/UserCredentialsSettings$AdapterData;)V
    .locals 2

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 400
    iget-object v0, p1, Lcom/android/settings/UserCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/UserCredentialsSettings;

    # getter for: Lcom/android/settings/UserCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings;->access$1300(Lcom/android/settings/UserCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v0

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 394
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 28
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/UserCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    const/16 v24, 0x0

    .line 418
    .local v24, "progress":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/settings/UserCredentialsSettings$Tab;->getAliases()[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$1800(Lcom/android/settings/UserCredentialsSettings$Tab;)[Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "aksAliases":[Ljava/lang/String;
    array-length v9, v8

    .line 420
    .local v9, "aksAliasesMax":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v12, "certHoldersAll":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v23

    .line 423
    .local v23, "mKeyStore":Landroid/security/KeyStore;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/settings/UserCredentialsSettings$Tab;->getCCMAliases()[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$1900(Lcom/android/settings/UserCredentialsSettings$Tab;)[Ljava/lang/String;

    move-result-object v10

    .line 424
    .local v10, "ccmAliases":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/settings/UserCredentialsSettings$Tab;->getUCMAliases()[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$2000(Lcom/android/settings/UserCredentialsSettings$Tab;)[Ljava/lang/String;

    move-result-object v26

    .line 425
    .local v26, "ucmAliases":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 426
    .local v11, "ccmAliasesMax":I
    const/16 v27, 0x0

    .line 428
    .local v27, "ucmAliasesMax":I
    if-eqz v10, :cond_0

    .line 429
    array-length v11, v10

    .line 431
    :cond_0
    if-eqz v26, :cond_1

    .line 432
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    .line 434
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .local v13, "certHoldersCCM":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v14, "certHoldersUCM":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    const/16 v17, 0x0

    .line 437
    .local v17, "encodedCertificate":[B
    if-eqz v8, :cond_4

    if-lez v9, :cond_4

    .line 438
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v9, :cond_3

    .line 439
    aget-object v5, v8, v18

    .line 440
    .local v5, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$2100(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v2

    if-gez v2, :cond_2

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v17

    .line 445
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 446
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {v3}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1700(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v4}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/UserCredentialsSettings$CertHolder;-><init>(Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/UserCredentialsSettings$1;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    .line 438
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 443
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v3}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v3

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mUid:I
    invoke-static {v3}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$2100(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v17

    goto :goto_1

    .line 449
    .end local v5    # "alias":Ljava/lang/String;
    :cond_3
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    .end local v18    # "j":I
    :cond_4
    if-eqz v10, :cond_a

    if-lez v11, :cond_a

    .line 453
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v11, :cond_9

    .line 455
    :try_start_1
    aget-object v5, v10, v19

    .line 456
    .restart local v5    # "alias":Ljava/lang/String;
    const/4 v6, 0x0

    .line 457
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    const-string v2, "TimaKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v25

    .line 459
    .local v25, "timaKeystore":Ljava/security/KeyStore;
    if-nez v25, :cond_5

    .line 460
    const-string v2, "UserCredentialsSettings"

    const-string v3, "Failed to load TimaKeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 463
    const-string v2, "PKCS11"

    const-string v3, "SECPkcs11"

    invoke-static {v2, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v21

    .line 465
    .local v21, "ks":Ljava/security/KeyStore;
    if-nez v21, :cond_6

    .line 466
    const-string v2, "UserCredentialsSettings"

    const-string v3, "Failed to load SECpkcs11 KeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 470
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 471
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v5, :cond_7

    if-nez v6, :cond_7

    .line 453
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v21    # "ks":Ljava/security/KeyStore;
    .end local v25    # "timaKeystore":Ljava/security/KeyStore;
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 475
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v21    # "ks":Ljava/security/KeyStore;
    .restart local v25    # "timaKeystore":Ljava/security/KeyStore;
    :cond_7
    new-instance v2, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {v3}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1700(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v4}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/UserCredentialsSettings$CertHolder;-><init>(Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/UserCredentialsSettings$1;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 477
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v21    # "ks":Ljava/security/KeyStore;
    .end local v25    # "timaKeystore":Ljava/security/KeyStore;
    :catch_0
    move-exception v16

    .line 478
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 506
    .end local v8    # "aksAliases":[Ljava/lang/String;
    .end local v9    # "aksAliasesMax":I
    .end local v10    # "ccmAliases":[Ljava/lang/String;
    .end local v11    # "ccmAliasesMax":I
    .end local v12    # "certHoldersAll":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    .end local v13    # "certHoldersCCM":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    .end local v14    # "certHoldersUCM":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "encodedCertificate":[B
    .end local v19    # "k":I
    .end local v23    # "mKeyStore":Landroid/security/KeyStore;
    .end local v26    # "ucmAliases":[Ljava/lang/String;
    .end local v27    # "ucmAliasesMax":I
    :catch_1
    move-exception v16

    .line 507
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "UserCredentialsSettings"

    const-string v3, "Remote exception while loading aliases."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_4
    return-object v12

    .line 481
    .restart local v8    # "aksAliases":[Ljava/lang/String;
    .restart local v9    # "aksAliasesMax":I
    .restart local v10    # "ccmAliases":[Ljava/lang/String;
    .restart local v11    # "ccmAliasesMax":I
    .restart local v12    # "certHoldersAll":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    .restart local v13    # "certHoldersCCM":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    .restart local v14    # "certHoldersUCM":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    .restart local v17    # "encodedCertificate":[B
    .restart local v19    # "k":I
    .restart local v23    # "mKeyStore":Landroid/security/KeyStore;
    .restart local v26    # "ucmAliases":[Ljava/lang/String;
    .restart local v27    # "ucmAliasesMax":I
    :cond_9
    :try_start_3
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 482
    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    .end local v19    # "k":I
    :cond_a
    if-eqz v26, :cond_8

    if-lez v27, :cond_8

    .line 486
    const/4 v6, 0x0

    .line 487
    .restart local v6    # "cert":Ljava/security/cert/X509Certificate;
    new-instance v20, Landroid/security/KeyChain;

    invoke-direct/range {v20 .. v20}, Landroid/security/KeyChain;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 488
    .local v20, "keyChain":Landroid/security/KeyChain;
    const/16 v22, 0x0

    .local v22, "l":I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 490
    :try_start_4
    aget-object v5, v26, v22

    .line 491
    .restart local v5    # "alias":Ljava/lang/String;
    # getter for: Lcom/android/settings/UserCredentialsSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v15

    .line 492
    .local v15, "certList":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    aget-object v6, v15, v2

    .line 493
    if-nez v6, :cond_b

    .line 488
    .end local v5    # "alias":Ljava/lang/String;
    .end local v15    # "certList":[Ljava/security/cert/X509Certificate;
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 496
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v15    # "certList":[Ljava/security/cert/X509Certificate;
    :cond_b
    new-instance v2, Lcom/android/settings/UserCredentialsSettings$CertHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {v3}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1700(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v4}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/UserCredentialsSettings$CertHolder;-><init>(Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;Lcom/android/settings/UserCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/UserCredentialsSettings$1;)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 498
    .end local v5    # "alias":Ljava/lang/String;
    .end local v15    # "certList":[Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v16

    .line 499
    .local v16, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 502
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 503
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 394
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/UserCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/UserCredentialsSettings$CertHolder;>;"
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1000(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1700(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 526
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1000(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/UserCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/UserCredentialsSettings;

    # getter for: Lcom/android/settings/UserCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings/UserCredentialsSettings;->access$1300(Lcom/android/settings/UserCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->tv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/UserCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/UserCredentialsSettings;

    # getter for: Lcom/android/settings/UserCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings;->access$1400(Lcom/android/settings/UserCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 406
    .local v0, "content":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mProgress:I
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$1500(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 407
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v1

    # getter for: Lcom/android/settings/UserCredentialsSettings$Tab;->mText:I
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$Tab;->access$1600(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->tv:Landroid/widget/TextView;

    .line 408
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mAdapter:Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;
    invoke-static {v1}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1700(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/UserCredentialsSettings$AdapterData;

    # getter for: Lcom/android/settings/UserCredentialsSettings$AdapterData;->mTab:Lcom/android/settings/UserCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/UserCredentialsSettings$AdapterData;->access$1100(Lcom/android/settings/UserCredentialsSettings$AdapterData;)Lcom/android/settings/UserCredentialsSettings$Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/UserCredentialsSettings$UserCertificateAdapterCommons;->getListViewId(Lcom/android/settings/UserCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    .line 409
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progressAndMax"    # [Ljava/lang/Integer;

    .prologue
    .line 514
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 515
    .local v1, "progress":I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 516
    .local v0, "max":I
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 520
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 394
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
