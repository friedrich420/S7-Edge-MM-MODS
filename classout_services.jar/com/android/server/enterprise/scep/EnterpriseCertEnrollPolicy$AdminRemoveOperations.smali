.class Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;
.super Landroid/os/AsyncTask;
.source "EnterpriseCertEnrollPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdminRemoveOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPriority:I

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)V
    .registers 3

    .prologue
    .line 850
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 851
    const/16 v0, 0xa

    iput v0, p0, mPriority:I

    .line 852
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;I)V
    .registers 6
    .param p2, "priority"    # I

    .prologue
    .line 854
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 857
    const/16 v0, -0x14

    if-lt p2, v0, :cond_2d

    const/16 v0, 0x13

    if-gt p2, v0, :cond_2d

    .end local p2    # "priority":I
    :goto_d
    iput p2, p0, mPriority:I

    .line 859
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void

    .line 857
    .restart local p2    # "priority":I
    :cond_2d
    const/4 p2, 0x0

    goto :goto_d
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$1;

    .prologue
    .line 848
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 848
    check-cast p1, [[Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([[Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 20
    .param p1, "params"    # [[Ljava/lang/Integer;

    .prologue
    .line 864
    move-object/from16 v0, p0

    iget v1, v0, mPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 865
    const/4 v1, 0x0

    aget-object v16, p1, v1

    .line 866
    .local v16, "uidArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 867
    .local v15, "uid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 868
    .local v5, "appId":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 869
    .local v3, "userId":I
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 870
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Caller onPreAdminRemoval uid: "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Caller onPreAdminRemoval appId: "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Caller onPreAdminRemoval userId: "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_73
    const/4 v1, 0x2

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "cepAgentUid"

    aput-object v6, v12, v1

    const/4 v1, 0x1

    const-string v6, "containerID"

    aput-object v6, v12, v1

    .line 875
    .local v12, "sColumns":[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v1

    .line 876
    .local v14, "sValues":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "protocol"

    aput-object v6, v13, v1

    .line 877
    .local v13, "sReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    const-string v6, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v1, v6, v12, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 878
    .local v7, "contValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_135

    .line 879
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v6, "protocol"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "protocol":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 881
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found entries for this Caller Package -->  UID= "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " | AppId = "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " | Container= "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " | protocol="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_102
    const/4 v2, 0x0

    .line 883
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11f

    .line 884
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 887
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    :cond_11f
    :try_start_11f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$800(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/util/HashMap;ILjava/lang/String;IZ)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_127} :catch_12a

    .line 878
    :goto_127
    add-int/lit8 v10, v10, 0x1

    goto :goto_a9

    .line 889
    :catch_12a
    move-exception v9

    .line 890
    .local v9, "e1":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Exception in handlePreAdminRemoval:"

    invoke-static {v1, v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_127

    .line 893
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;>;"
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v9    # "e1":Ljava/lang/Exception;
    :cond_135
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a5

    .line 894
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 896
    .local v8, "cvWhere":Landroid/content/ContentValues;
    new-instance v8, Landroid/content/ContentValues;

    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 897
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    const-string v1, "cepAgentUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v1, "containerID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$500(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    const-string v6, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v1, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v11

    .line 903
    .local v11, "res":I
    # getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Result of handlePreAdminRemoval delete DB data -->  UID= "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " | AppId = "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " | Container= "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " | res="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v11    # "res":I
    :cond_1a5
    const/4 v1, 0x0

    return-object v1
.end method
