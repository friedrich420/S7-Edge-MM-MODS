.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
.super Landroid/os/AsyncTask;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeKeyStoreOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mKeystoreUid:I

.field private mOperation:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V
    .registers 6
    .param p2, "operation"    # I
    .param p3, "keystoreUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p4, "deleteAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "installCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 654
    iput p2, p0, mOperation:I

    .line 655
    iput p3, p0, mKeystoreUid:I

    .line 656
    iput-object p4, p0, mAliases:Ljava/util/Set;

    .line 657
    iput-object p5, p0, mCerts:Ljava/util/Map;

    .line 658
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/Set;
    .param p5, "x4"    # Ljava/util/Map;
    .param p6, "x5"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;

    .prologue
    .line 646
    invoke-direct/range {p0 .. p5}, <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method private getPemMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "certMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v8, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 708
    .local v4, "entrySetCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 709
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "alias1":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 714
    .local v9, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 715
    .local v3, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "alias2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 717
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 722
    .end local v1    # "alias2":Ljava/lang/String;
    .end local v3    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_61
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_16

    .line 723
    invoke-static {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v10

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    goto :goto_16

    .line 728
    .end local v0    # "alias1":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v9    # "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;>;"
    :cond_72
    return-object v8
.end method

.method private removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 693
    const-string v1, "_#_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 694
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 695
    const-string v1, "_#_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->isInteger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 696
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 699
    .end local p1    # "alias":Ljava/lang/String;
    :cond_1f
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v11, 0x1

    .line 661
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 662
    .local v4, "userId":I
    iget v5, p0, mOperation:I

    packed-switch v5, :pswitch_data_98

    .line 689
    :goto_d
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 664
    :pswitch_12
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # getter for: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 665
    :try_start_19
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # invokes: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z
    invoke-static {v5, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 666
    iget-object v5, p0, mCerts:Ljava/util/Map;

    invoke-direct {p0, v5}, getPemMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 667
    .local v3, "pemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 668
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # getter for: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iget v9, p0, mKeystoreUid:I

    invoke-static {v9, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_2f

    .line 673
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catchall_58
    move-exception v5

    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_19 .. :try_end_5a} :catchall_58

    throw v5

    :cond_5b
    :try_start_5b
    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_58

    goto :goto_d

    .line 676
    :pswitch_5d
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # getter for: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 677
    :try_start_64
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # invokes: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z
    invoke-static {v5, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 678
    iget-object v5, p0, mAliases:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v0}, removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    # getter for: Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;

    move-result-object v5

    iget v7, p0, mKeystoreUid:I

    invoke-static {v7, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v7

    invoke-virtual {v5, v0, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    goto :goto_72

    .line 684
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_92
    move-exception v5

    monitor-exit v6
    :try_end_94
    .catchall {:try_start_64 .. :try_end_94} :catchall_92

    throw v5

    :cond_95
    :try_start_95
    monitor-exit v6
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_92

    goto/16 :goto_d

    .line 662
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_12
        :pswitch_5d
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 646
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
