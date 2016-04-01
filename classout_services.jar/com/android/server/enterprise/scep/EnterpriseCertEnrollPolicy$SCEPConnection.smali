.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCEPConnection"
.end annotation


# instance fields
.field mCepProtocol:Ljava/lang/String;

.field mContainerUid:I

.field private mService:Landroid/os/IBinder;

.field mWithThread:Z

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V
    .registers 7
    .param p2, "containerUid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "withThread"    # Z

    .prologue
    const/4 v1, 0x0

    .line 714
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/4 v0, -0x1

    iput v0, p0, mContainerUid:I

    .line 710
    iput-object v1, p0, mCepProtocol:Ljava/lang/String;

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, mWithThread:Z

    .line 712
    iput-object v1, p0, mService:Landroid/os/IBinder;

    .line 716
    iput-object p3, p0, mCepProtocol:Ljava/lang/String;

    .line 717
    iput p2, p0, mContainerUid:I

    .line 718
    iput-boolean p4, p0, mWithThread:Z

    .line 719
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 11

    .prologue
    .line 778
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "In Binder Died death receipient"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "containerID"

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string/jumbo v6, "protocol"

    iget-object v7, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "EnterpriseCertEnrollPolicy"

    const-string v8, "cepAgentUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 787
    .local v4, "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 789
    .local v3, "id":I
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v7, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, mContainerUid:I

    iget-object v9, p0, mCepProtocol:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v6, v7, v3, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4e} :catch_4f

    goto :goto_33

    .line 799
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_4f
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception in binderDied:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_59
    :goto_59
    return-void

    .line 791
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5a
    :try_start_5a
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mContainerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] and PackageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_59

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_59

    .line 793
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 794
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    iget-object v6, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_bb

    .line 795
    iget-object v6, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_bb
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_59

    .line 797
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_ce} :catch_4f

    goto :goto_59
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, mService:Landroid/os/IBinder;

    .line 725
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 726
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceConnected["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mContainerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and PackageName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] thread["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mWithThread:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_44
    invoke-static {p2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_8a

    move-result-object v0

    .line 729
    .local v0, "cepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    const/4 v2, 0x0

    .line 730
    .local v2, "res":Z
    if-eqz v0, :cond_56

    .line 731
    :try_start_4b
    iget-boolean v3, p0, mWithThread:Z

    if-eqz v3, :cond_5e

    .line 732
    iget-object v3, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_56} :catch_7d
    .catchall {:try_start_4b .. :try_end_56} :catchall_8a

    .line 742
    :cond_56
    :goto_56
    if-eqz v0, :cond_5c

    .line 743
    const/4 v3, 0x0

    :try_start_59
    invoke-interface {p2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_8d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_8a

    .line 747
    :cond_5c
    :goto_5c
    monitor-exit p0

    return-void

    .line 734
    :cond_5e
    :try_start_5e
    iget-object v3, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v0, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 735
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_56

    if-eqz v2, :cond_56

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "offer interface in blocking queue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_7c} :catch_7d
    .catchall {:try_start_5e .. :try_end_7c} :catchall_8a

    goto :goto_56

    .line 738
    :catch_7d
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7e
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_8a

    goto :goto_56

    .line 723
    .end local v0    # "cepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "res":Z
    :catchall_8a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 744
    .restart local v0    # "cepService":Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    .restart local v2    # "res":Z
    :catch_8d
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8e
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception in onServiceDisconneted:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_8a

    goto :goto_5c
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 752
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 753
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "containerID"

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    const-string/jumbo v6, "protocol"

    iget-object v7, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "EnterpriseCertEnrollPolicy"

    const-string v8, "cepAgentUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 759
    .local v3, "mAdminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 761
    .local v2, "id":I
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string v7, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, mContainerUid:I

    iget-object v9, p0, mCepProtocol:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$600(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2a

    .line 763
    .end local v2    # "id":I
    :cond_46
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 764
    .local v5, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 765
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mContainerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] and PackageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_7c
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_c8

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c8

    .line 767
    iget-object v6, p0, mService:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, p0, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 768
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 769
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    iget-object v6, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b5

    .line 770
    iget-object v6, p0, mCepProtocol:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_b5
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_c8

    .line 772
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    :cond_c8
    return-void
.end method
