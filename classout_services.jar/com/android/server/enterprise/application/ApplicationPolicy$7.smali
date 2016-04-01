.class Lcom/android/server/enterprise/application/ApplicationPolicy$7;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->reapplyRuntimePermissions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .registers 3

    .prologue
    .line 8878
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 8882
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v8

    iget v9, p0, val$userId:I

    invoke-virtual {v8, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 8883
    const-string v8, "ApplicationPolicy"

    const-string v9, "User removed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8909
    :cond_13
    :goto_13
    return-void

    .line 8888
    :cond_14
    const/4 v3, 0x0

    .line 8889
    .local v3, "defaultPermState":I
    iget-object v8, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v8

    if-eqz v8, :cond_2c

    iget-object v8, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPersonaService()Landroid/os/PersonaManager;
    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/PersonaManager;

    move-result-object v8

    iget v9, p0, val$userId:I

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 8890
    const/4 v3, 0x1

    .line 8892
    :cond_2c
    iget-object v8, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3200(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget v9, p0, val$userId:I

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->applyRuntimePermissionsForAllApplications(II)Z

    .line 8894
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "packageName"

    aput-object v9, v7, v8

    .line 8896
    .local v7, "returnColumns":[Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v8

    const-string v9, "ApplicationRuntimePermissions"

    iget v10, p0, val$userId:I

    invoke-virtual {v8, v9, v7, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 8898
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    .line 8899
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 8900
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8901
    .local v0, "adminUid":I
    const-string/jumbo v8, "packageName"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8903
    .local v6, "packageName":Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(ILjava/lang/String;)Z
    invoke-static {v8, v9, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$200(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_5f

    .line 8906
    .end local v0    # "adminUid":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "defaultPermState":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "returnColumns":[Ljava/lang/String;
    :catch_86
    move-exception v4

    .line 8907
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
