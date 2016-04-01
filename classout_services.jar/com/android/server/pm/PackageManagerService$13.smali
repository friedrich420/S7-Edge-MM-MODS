.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[ILandroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V
    .registers 8

    .prologue
    .line 13792
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$action:Ljava/lang/String;

    iput-object p3, p0, val$pkg:Ljava/lang/String;

    iput-object p4, p0, val$userIds:[I

    iput-object p5, p0, val$extras:Landroid/os/Bundle;

    iput-object p6, p0, val$targetPkg:Ljava/lang/String;

    iput-object p7, p0, val$finishedReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 13796
    const/4 v10, 0x0

    .line 13797
    .local v10, "requiredPermissions":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 13798
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_8

    .line 13903
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_7
    :goto_7
    return-void

    .line 13800
    .restart local v2    # "am":Landroid/app/IActivityManager;
    :cond_8
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 13801
    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 13802
    const-string v3, "GATE"

    const-string v5, "<GATE-M> APP_INSTALLED </GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13811
    :cond_21
    :goto_21
    move-object/from16 v0, p0

    iget-object v3, v0, val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_73

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v5, v0, val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_73

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v5, v0, val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v3, :cond_73

    .line 13812
    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 13815
    :cond_67
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    const-string v5, "com.samsung.android.permission.MODIFY_THEME"

    aput-object v5, v21, v3

    .end local v10    # "requiredPermissions":[Ljava/lang/String;
    .local v21, "requiredPermissions":[Ljava/lang/String;
    move-object/from16 v10, v21

    .line 13825
    .end local v21    # "requiredPermissions":[Ljava/lang/String;
    .restart local v10    # "requiredPermissions":[Ljava/lang/String;
    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, val$userIds:[I

    if-nez v3, :cond_11c

    .line 13826
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v22

    .line 13830
    .local v22, "resolvedUserIds":[I
    :goto_7d
    move-object/from16 v17, v22

    .local v17, "arr$":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_86
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_128

    aget v15, v17, v19

    .line 13831
    .local v15, "id":I
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, val$action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_124

    const-string/jumbo v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_a6
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 13833
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_b6

    .line 13834
    move-object/from16 v0, p0

    iget-object v3, v0, val$extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13836
    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, val$targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_c3

    .line 13837
    move-object/from16 v0, p0

    iget-object v3, v0, val$targetPkg:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13840
    :cond_c3
    const-string v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 13841
    .local v24, "uid":I
    if-lez v24, :cond_e1

    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, v15, :cond_e1

    .line 13842
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v24

    .line 13843
    const-string v3, "android.intent.extra.UID"

    move/from16 v0, v24

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13845
    :cond_e1
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13846
    const/high16 v3, 0x4000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13854
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, val$finishedReceiver:Landroid/content/IIntentReceiver;

    if-eqz v13, :cond_126

    const/4 v13, 0x1

    :goto_fd
    const/4 v14, 0x0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 13830
    add-int/lit8 v19, v19, 0x1

    goto :goto_86

    .line 13803
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v17    # "arr$":[I
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .end local v22    # "resolvedUserIds":[I
    .end local v24    # "uid":I
    :cond_104
    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 13804
    const-string v3, "GATE"

    const-string v5, "<GATE-M> APP_UNINSTALLED </GATE-M>"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 13901
    .end local v2    # "am":Landroid/app/IActivityManager;
    :catch_119
    move-exception v3

    goto/16 :goto_7

    .line 13828
    .restart local v2    # "am":Landroid/app/IActivityManager;
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, val$userIds:[I

    move-object/from16 v22, v0

    .restart local v22    # "resolvedUserIds":[I
    goto/16 :goto_7d

    .line 13831
    .restart local v15    # "id":I
    .restart local v17    # "arr$":[I
    .restart local v19    # "i$":I
    .restart local v20    # "len$":I
    :cond_124
    const/4 v3, 0x0

    goto :goto_a6

    .line 13854
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v24    # "uid":I
    :cond_126
    const/4 v13, 0x0

    goto :goto_fd

    .line 13859
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v24    # "uid":I
    :cond_128
    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_140

    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13d} :catch_119

    move-result v3

    if-eqz v3, :cond_189

    .line 13863
    :cond_140
    move-object/from16 v17, v22

    :try_start_142
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_149
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_189

    aget v25, v17, v19

    .line 13864
    .local v25, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, val$pkg:Ljava/lang/String;

    move/from16 v0, v25

    invoke-virtual {v3, v5, v0}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissionsOnInstallation(Ljava/lang/String;I)V

    .line 13865
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->reconcileAdditionalRuntimePermissions(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_169} :catch_16c
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_169} :catch_119

    .line 13863
    add-int/lit8 v19, v19, 0x1

    goto :goto_149

    .line 13867
    .end local v25    # "userId":I
    :catch_16c
    move-exception v18

    .line 13868
    .local v18, "e":Ljava/lang/Exception;
    :try_start_16d
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13876
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_189
    move-object/from16 v0, p0

    iget-object v3, v0, val$action:Ljava/lang/String;

    const-string v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;
    :try_end_197
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_197} :catch_119

    if-eqz v3, :cond_7

    .line 13878
    :try_start_199
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v26

    .line 13879
    .local v26, "users":[I
    if-eqz v26, :cond_7

    .line 13880
    move-object/from16 v17, v26

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_1aa
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget v25, v17, v19

    .line 13881
    .restart local v25    # "userId":I
    const-string v3, "application_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 13884
    .local v16, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v16, :cond_1bf

    .line 13880
    :cond_1bc
    :goto_1bc
    add-int/lit8 v19, v19, 0x1

    goto :goto_1aa

    .line 13887
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v3, v0, val$pkg:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .line 13890
    .local v23, "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_1bc

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1bc

    .line 13891
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, val$pkg:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v3, v5, v0, v6, v1}, Lcom/android/server/pm/PackageManagerService;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1e4} :catch_1e5
    .catch Landroid/os/RemoteException; {:try_start_199 .. :try_end_1e4} :catch_119

    goto :goto_1bc

    .line 13896
    .end local v16    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v23    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "userId":I
    .end local v26    # "users":[I
    :catch_1e5
    move-exception v18

    .line 13897
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_1e6
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granting runtime permissions failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_202
    .catch Landroid/os/RemoteException; {:try_start_1e6 .. :try_end_202} :catch_119

    goto/16 :goto_7
.end method
