.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
.super Landroid/os/Handler;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerHandler"
.end annotation


# static fields
.field public static final MSG_ACTION_PACKAGE_ADDED:I = 0x6

.field public static final MSG_ACTION_PACKAGE_REMOVED:I = 0x7

.field public static final MSG_KLMS_LICENSE_UPDATE:I = 0x2

.field public static final MSG_REMOVE_ORPHANED_CONTAINERS:I = 0x4

.field public static final MSG_START_MIGRATION_WIZARD:I = 0x5

.field public static final MSG_START_SETUP_WIZARD:I = 0x1

.field public static final MSG_UPDATE_CONTAINER_CREATION_STATUS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .prologue
    .line 827
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 828
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 829
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 832
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_554

    .line 1041
    :cond_7
    :goto_7
    return-void

    .line 835
    :pswitch_8
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v9, "ContainerHandler.MSG_START_SETUP_WIZARD is called ..."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/sec/knox/container/ContainerCreationParams;

    .line 839
    .local v30, "params":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual/range {v30 .. v30}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v41

    .line 841
    .local v41, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v26, 0x0

    .line 842
    .local v26, "intent":Landroid/content/Intent;
    move-object/from16 v0, v41

    instance-of v2, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    if-nez v2, :cond_84

    .line 843
    new-instance v26, Landroid/content/Intent;

    .end local v26    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.start.SETUP_WIZARD"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v26    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    :goto_35
    const-string/jumbo v2, "creation_params"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 851
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v2

    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 852
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createContainer: intent from User:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with requestid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_7e} :catch_7f

    goto :goto_7

    .line 853
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v30    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v41    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_7f
    move-exception v21

    .line 854
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 846
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v30    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .restart local v41    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_84
    :try_start_84
    new-instance v26, Landroid/content/Intent;

    .end local v26    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.install.BBC_CONTAINER"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .restart local v26    # "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.bbc.bbcagent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_94} :catch_7f

    goto :goto_35

    .line 860
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v30    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v41    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :pswitch_95
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/Integer;

    .line 861
    .local v30, "params":[Ljava/lang/Integer;
    const/4 v2, 0x0

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 862
    .local v5, "requestId":I
    const/4 v2, 0x1

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 863
    .local v4, "containerId":I
    const/4 v2, 0x2

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 864
    .local v7, "adminUid":I
    const/4 v2, 0x3

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 865
    .local v6, "creatorUid":I
    const/4 v2, 0x4

    aget-object v2, v30, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 866
    .local v8, "specificError":I
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 867
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "creation status: reqId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", containerId -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", adminUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", creatorUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_101
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v35

    .line 870
    .local v35, "pkgNames":[Ljava/lang/String;
    if-eqz v35, :cond_151

    .line 871
    move-object/from16 v16, v35

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_118
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_170

    aget-object v3, v16, v23

    .line 872
    .local v3, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending creation update to package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIIII)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    .line 875
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_14e

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 871
    :cond_14e
    add-int/lit8 v23, v23, 0x1

    goto :goto_118

    .line 881
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v27    # "len$":I
    :cond_151
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIIII)V
    invoke-static/range {v9 .. v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    .line 883
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_170

    .line 884
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    invoke-static/range {v9 .. v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 889
    :cond_170
    if-lez v4, :cond_1fe

    if-ne v7, v6, :cond_1fe

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .line 891
    .local v13, "ownerUid":I
    if-lez v13, :cond_1fe

    if-eq v13, v6, :cond_1fe

    .line 892
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v36

    .line 893
    .local v36, "pkgs":[Ljava/lang/String;
    if-eqz v36, :cond_1f2

    .line 894
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 895
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending creation update to app uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_1b2
    move-object/from16 v16, v36

    .restart local v16    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27    # "len$":I
    const/16 v23, 0x0

    .restart local v23    # "i$":I
    :goto_1bb
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_1fe

    aget-object v3, v16, v23

    .line 897
    .restart local v3    # "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1e3

    .line 898
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending creation update to package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v14, v7

    move v15, v8

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIIII)V
    invoke-static/range {v9 .. v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    .line 896
    add-int/lit8 v23, v23, 0x1

    goto :goto_1bb

    .line 902
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v27    # "len$":I
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    move v14, v7

    move v15, v8

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIIII)V
    invoke-static/range {v9 .. v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIIII)V

    .line 908
    .end local v13    # "ownerUid":I
    .end local v36    # "pkgs":[Ljava/lang/String;
    :cond_1fe
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 909
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "create callback found, updating callback.."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v38, 0x3ea

    .line 911
    .local v38, "retCode":I
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 912
    .local v20, "data":Landroid/os/Bundle;
    if-lez v4, :cond_231

    .line 913
    const/16 v38, 0x3e9

    .line 914
    const-string v2, "containerid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    :goto_220
    :try_start_220
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    move/from16 v0, v38

    move-object/from16 v1, v20

    invoke-interface {v2, v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_22b
    .catch Landroid/os/RemoteException; {:try_start_220 .. :try_end_22b} :catch_251

    .line 928
    :goto_22b
    const/4 v2, 0x0

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1002(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    goto/16 :goto_7

    .line 915
    :cond_231
    const/16 v2, -0x3f9

    if-ne v4, v2, :cond_248

    .line 916
    const/16 v38, 0x3f8

    .line 917
    const-string v2, "containerid"

    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 918
    const-string/jumbo v2, "requestid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_220

    .line 920
    :cond_248
    const-string v2, "containerid"

    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_220

    .line 924
    :catch_251
    move-exception v21

    .line 925
    .local v21, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v21 .. v21}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22b

    .line 934
    .end local v4    # "containerId":I
    .end local v5    # "requestId":I
    .end local v6    # "creatorUid":I
    .end local v7    # "adminUid":I
    .end local v8    # "specificError":I
    .end local v20    # "data":Landroid/os/Bundle;
    .end local v21    # "e":Landroid/os/RemoteException;
    .end local v30    # "params":[Ljava/lang/Integer;
    .end local v35    # "pkgNames":[Ljava/lang/String;
    .end local v38    # "retCode":I
    :pswitch_271
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v9, "MSG_REMOVE_ORPHANED_CONTAINERS received"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v33

    .line 936
    .local v33, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v33, :cond_7

    .line 937
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_28d
    :goto_28d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/PersonaInfo;

    .line 938
    .local v25, "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    .line 941
    .local v24, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v9, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v31

    .line 944
    .local v31, "partial":Z
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    move-object/from16 v0, v25

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .line 945
    .restart local v13    # "ownerUid":I
    if-lez v13, :cond_2c7

    if-eqz v31, :cond_28d

    .line 946
    :cond_2c7
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Orphan container removing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v25

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v10, 0x1

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    invoke-static {v2, v9, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto :goto_28d

    .line 955
    .end local v13    # "ownerUid":I
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "id":I
    .end local v25    # "info":Landroid/content/pm/PersonaInfo;
    .end local v31    # "partial":Z
    .end local v33    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_2f2
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v9, "ContainerHandler.MSG_START_MIGRATION_WIZARD is called ..."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :try_start_2fb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/sec/knox/container/ContainerCreationParams;

    .line 960
    .local v30, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v26, Landroid/content/Intent;

    const-string v2, "com.sec.knox.start.MIGRATION_WIZARD"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .restart local v26    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.containeragent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string/jumbo v2, "creation_params"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 963
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Landroid/content/Context;

    move-result-object v2

    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 964
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createContainer: intent from User:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with requestid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_35c} :catch_35e

    goto/16 :goto_7

    .line 965
    .end local v26    # "intent":Landroid/content/Intent;
    .end local v30    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_35e
    move-exception v21

    .line 966
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 972
    .end local v21    # "e":Ljava/lang/Exception;
    :pswitch_364
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v9, "MSG_KLMS_LICENSE_UPDATE received"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 974
    .local v17, "code":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 975
    .local v18, "container_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v34

    .line 976
    .local v34, "personasList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v34, :cond_526

    .line 977
    const/16 v39, 0x0

    .line 978
    .local v39, "retVal":Z
    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v40

    check-cast v40, Lcom/android/server/pm/PersonaManagerService;

    .line 980
    .local v40, "service":Lcom/android/server/pm/PersonaManagerService;
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v32, v0

    .line 981
    .local v32, "personaIds":[I
    const/16 v28, 0x0

    .line 982
    .local v28, "length":I
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_3a1
    :goto_3a1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4ba

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/PersonaInfo;

    .line 983
    .restart local v25    # "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v2, :cond_3a1

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v25

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v19

    .line 986
    .local v19, "currentState":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v25

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getPreviousState()Landroid/content/pm/PersonaState;

    move-result-object v37

    .line 988
    .local v37, "previousState":Landroid/content/pm/PersonaState;
    move-object/from16 v0, v25

    iget v2, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_499

    .line 989
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persona id matched!! - container_id - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/16 v2, 0x5a

    move/from16 v0, v17

    if-ne v0, v2, :cond_478

    .line 992
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "currentState for persona- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " previousState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v25

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v9, Landroid/content/pm/PersonaNewEvent;->LICENSE_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager$StateManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;

    .line 995
    if-eqz v40, :cond_3a1

    .line 996
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z

    move-result v39

    .line 997
    if-eqz v39, :cond_3a1

    .line 998
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "length":I
    .local v29, "length":I
    move-object/from16 v0, v25

    iget v2, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v2, v32, v28

    move/from16 v28, v29

    .end local v29    # "length":I
    .restart local v28    # "length":I
    goto/16 :goto_3a1

    .line 1004
    :cond_478
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "setting persona state to KLMS_LOCKED"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v25

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v9, Landroid/content/pm/PersonaNewEvent;->LICENSE_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v9}, Landroid/os/PersonaManager$StateManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;

    goto/16 :goto_3a1

    .line 1009
    :cond_499
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persona id unmatched!! - container_id - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a1

    .line 1014
    .end local v19    # "currentState":Landroid/content/pm/PersonaState;
    .end local v25    # "info":Landroid/content/pm/PersonaInfo;
    .end local v37    # "previousState":Landroid/content/pm/PersonaState;
    :cond_4ba
    if-lez v28, :cond_7

    .line 1016
    const/16 v22, 0x0

    .line 1018
    .local v22, "i":I
    const/16 v22, 0x0

    :goto_4c0
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 1019
    :try_start_4c6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    aget v9, v32, v22

    invoke-interface {v2, v9}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 1020
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_4f7

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting contaienr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v32, v22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in background after reboot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f7
    .catch Ljava/lang/Exception; {:try_start_4c6 .. :try_end_4f7} :catch_4fa

    .line 1018
    :cond_4f7
    add-int/lit8 v22, v22, 0x1

    goto :goto_4c0

    .line 1023
    :catch_4fa
    move-exception v21

    .line 1024
    .restart local v21    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to start User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v32, v22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in Background:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1028
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v22    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "length":I
    .end local v32    # "personaIds":[I
    .end local v39    # "retVal":Z
    .end local v40    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_526
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "persona list is null"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1033
    .end local v17    # "code":I
    .end local v18    # "container_id":I
    .end local v34    # "personasList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_532
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->packageInstalledForExternalStorage(Ljava/lang/String;)V
    invoke-static {v9, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1037
    :pswitch_543
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->packageRemovedForExternalStorage(Ljava/lang/String;)V
    invoke-static {v9, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 832
    :pswitch_data_554
    .packed-switch 0x1
        :pswitch_8
        :pswitch_364
        :pswitch_95
        :pswitch_271
        :pswitch_2f2
        :pswitch_532
        :pswitch_543
    .end packed-switch
.end method
