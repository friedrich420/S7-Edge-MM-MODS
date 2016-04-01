.class Lcom/android/server/enterprise/application/ApplicationPolicy$2;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .prologue
    .line 570
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 573
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v14, v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileRuntimePermissionGroups(Landroid/content/Context;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v14, v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 576
    .local v12, "userManager":Landroid/os/UserManager;
    if-eqz v12, :cond_141

    .line 577
    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 578
    .local v13, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v13, :cond_141

    .line 579
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_141

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 580
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v14

    if-eqz v14, :cond_7a

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v14

    if-nez v14, :cond_7a

    .line 581
    const-string v14, "ApplicationPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Shouldnt reconcile for Managed profile "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_24

    .line 621
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userManager":Landroid/os/UserManager;
    .end local v13    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_59
    move-exception v4

    .line 622
    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "ApplicationPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception systemReady "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_79
    return-void

    .line 584
    .restart local v11    # "user":Landroid/content/pm/UserInfo;
    .restart local v12    # "userManager":Landroid/os/UserManager;
    .restart local v13    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7a
    :try_start_7a
    const-string v14, "ApplicationPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "reapply permissions for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    const/16 v15, 0x64

    if-ge v14, v15, :cond_104

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v14, v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->applyRuntimePermissionsForAllApplications(II)Z

    .line 589
    const/4 v14, 0x2

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "packageName"

    aput-object v15, v10, v14

    .line 594
    .local v10, "returnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v14

    const-string v15, "ApplicationRuntimePermissions"

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 598
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_24

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_24

    .line 599
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_dd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 600
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v14, "adminUid"

    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 601
    .local v1, "adminUid":I
    const-string/jumbo v14, "packageName"

    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v15, v11, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(ILjava/lang/String;)Z
    invoke-static {v14, v15, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$200(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;)Z

    goto :goto_dd

    .line 607
    .end local v1    # "adminUid":I
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "returnColumns":[Ljava/lang/String;
    :cond_104
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v14, v14, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v9

    .line 609
    .local v9, "pkginfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v9, :cond_24

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_24

    .line 610
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_123
    :goto_123
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 611
    .local v8, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_123

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v15, v11, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateRuntimePermissions(ILjava/lang/String;)Z
    invoke-static/range {v14 .. v16}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$200(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;)Z

    goto :goto_123

    .line 620
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v9    # "pkginfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v13    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_141
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_148} :catch_59

    goto/16 :goto_79
.end method
