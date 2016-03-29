.class Lcom/android/settings/applications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ResetAppsHelper;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 116
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x200

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 119
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 121
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_1
    iget-boolean v9, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_0

    .line 125
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 127
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v14, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 118
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$200(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_2
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$300(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 138
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$400(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v7

    .line 140
    .local v7, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 141
    .local v3, "currentUserId":I
    move-object v2, v7

    .local v2, "arr$":[I
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_3

    aget v8, v2, v5

    .line 143
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, v3, :cond_2

    .line 144
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$400(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v9

    invoke-virtual {v9, v8, v14}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 141
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 148
    .end local v8    # "uid":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings/applications/ResetAppsHelper;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;
    invoke-static {v9}, Lcom/android/settings/applications/ResetAppsHelper;->access$500(Lcom/android/settings/applications/ResetAppsHelper;)Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;->onUpdateAfterResetApps()V

    .line 149
    return-void

    .line 135
    .end local v2    # "arr$":[I
    .end local v3    # "currentUserId":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "restrictedUids":[I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 122
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    goto :goto_1
.end method
