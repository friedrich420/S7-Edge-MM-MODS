.class Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V
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
    .line 1654
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1658
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v10, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 1659
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, "pkgAction":Ljava/lang/String;
    invoke-virtual {p0}, getSendingUserId()I

    move-result v9

    .line 1663
    .local v9, "userId":I
    if-eqz v5, :cond_7e

    :try_start_10
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7e

    if-eqz v4, :cond_7e

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7e

    .line 1665
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 1666
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1667
    .local v7, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1668
    .local v6, "storedUid":I
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1669
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_3c

    .line 1670
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v11, "applicationUninstallationCount"

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v6, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1674
    .local v2, "extraReplacing":Z
    if-nez v2, :cond_3c

    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 1675
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x2

    const/4 v12, 0x0

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    invoke-static {v10, v5, v6, v11, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_79} :catch_7a

    goto :goto_3c

    .line 1705
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v2    # "extraReplacing":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "storedUid":I
    .end local v7    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_7a
    move-exception v1

    .line 1706
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1708
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7e
    :goto_7e
    return-void

    .line 1681
    :cond_7f
    :try_start_7f
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 1699
    :cond_87
    :goto_87
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7e

    .line 1700
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v11, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v11, v5, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;I)V
    invoke-static {v10, v11, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V

    goto :goto_7e

    .line 1683
    :cond_9b
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 1684
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$100(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1685
    .local v8, "uidList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b1
    :goto_b1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1686
    .restart local v6    # "storedUid":I
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1687
    .restart local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_b1

    .line 1688
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v11, "applicationInstallationCount"

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v6, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v10, "ApplicationPolicy"

    const-string v11, "App install count incremented"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 1694
    .end local v0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v6    # "storedUid":I
    :cond_de
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 1695
    iget-object v10, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V
    invoke-static {v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_eb} :catch_7a

    goto :goto_87
.end method
