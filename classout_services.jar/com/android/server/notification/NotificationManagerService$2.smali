.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 800
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 804
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 906
    :cond_6
    :goto_6
    return-void

    .line 808
    :cond_7
    const/16 v25, 0x0

    .line 809
    .local v25, "queryRestart":Z
    const/16 v23, 0x0

    .line 810
    .local v23, "queryRemove":Z
    const/16 v20, 0x0

    .line 811
    .local v20, "packageChanged":Z
    const/4 v14, 0x1

    .line 813
    .local v14, "cancelNotifications":Z
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3e

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3e

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3e

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 819
    :cond_3e
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 821
    .local v15, "changeUserId":I
    const/16 v21, 0x0

    .line 822
    .local v21, "pkgList":[Ljava/lang/String;
    if-eqz v23, :cond_d3

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d3

    const/16 v24, 0x1

    .line 824
    .local v24, "queryReplace":Z
    :goto_58
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_80

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " queryReplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_80
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 826
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 866
    .end local v15    # "changeUserId":I
    :goto_90
    const/4 v9, -0x1

    .line 867
    .local v9, "userHandle":I
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 868
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 872
    :cond_a2
    if-eqz v21, :cond_120

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_120

    .line 873
    move-object/from16 v13, v21

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_b0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_120

    aget-object v5, v13, v18

    .line 874
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v14, :cond_d0

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$900()I

    move-result v3

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1000()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v25, :cond_11e

    const/4 v8, 0x1

    :goto_cb
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 873
    :cond_d0
    add-int/lit8 v18, v18, 0x1

    goto :goto_b0

    .line 822
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v9    # "userHandle":I
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v24    # "queryReplace":Z
    .restart local v15    # "changeUserId":I
    :cond_d3
    const/16 v24, 0x0

    goto :goto_58

    .line 827
    .restart local v24    # "queryReplace":Z
    :cond_d6
    if-eqz v25, :cond_e1

    .line 828
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    goto :goto_90

    .line 830
    :cond_e1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 831
    .local v26, "uri":Landroid/net/Uri;
    if-eqz v26, :cond_6

    .line 834
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 835
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 838
    if-eqz v20, :cond_104

    .line 841
    :try_start_ef
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 842
    .local v22, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v15, v2, :cond_10d

    .end local v15    # "changeUserId":I
    :goto_f6
    move-object/from16 v0, v22

    invoke-interface {v0, v5, v15}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ef .. :try_end_fb} :catch_10f
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_fb} :catch_14f

    move-result v17

    .line 845
    .local v17, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_103

    if-nez v17, :cond_104

    .line 847
    :cond_103
    const/4 v14, 0x0

    .line 859
    .end local v17    # "enabled":I
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    :cond_104
    :goto_104
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .end local v21    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v21, v2

    .restart local v21    # "pkgList":[Ljava/lang/String;
    goto :goto_90

    .line 842
    .restart local v15    # "changeUserId":I
    .restart local v22    # "pm":Landroid/content/pm/IPackageManager;
    :cond_10d
    const/4 v15, 0x0

    goto :goto_f6

    .line 849
    .end local v15    # "changeUserId":I
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    :catch_10f
    move-exception v16

    .line 852
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_104

    .line 853
    const-string v2, "NotificationService"

    const-string v3, "Exception trying to look up app enabled setting"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_104

    .line 897
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .end local v26    # "uri":Landroid/net/Uri;
    .restart local v9    # "userHandle":I
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    :cond_11e
    const/4 v8, 0x0

    goto :goto_cb

    .line 902
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_120
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 855
    .end local v9    # "userHandle":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v26    # "uri":Landroid/net/Uri;
    :catch_14f
    move-exception v2

    goto :goto_104
.end method
