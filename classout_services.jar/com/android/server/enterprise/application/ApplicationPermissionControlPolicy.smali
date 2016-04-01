.class public Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
.super Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;
.source "ApplicationPermissionControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ALLPACKAGES:Ljava/lang/String; = "*"

.field private static final PKGNAME_PERMISSION_ALLIST:Ljava/lang/String; = "Alllist"

.field private static final PKGNAME_PERMISSION_BLACKLIST:Ljava/lang/String; = "Blacklist"

.field private static final PKGNAME_PERMISSION_WHITELIST:Ljava/lang/String; = "Whitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPermissionControlPolicy"

.field private static mAppPermissionControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, mAppPermissionControl:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;-><init>()V

    .line 93
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    .line 96
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 98
    return-void
.end method

.method private declared-synchronized clearBWList(ILjava/lang/String;)V
    .registers 29
    .param p1, "adminUid"    # I
    .param p2, "listType"    # Ljava/lang/String;

    .prologue
    .line 576
    monitor-enter p0

    if-lez p1, :cond_f

    :try_start_3
    sget-object v23, mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v23, :cond_f

    sget-object v23, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c7

    move-result v23

    if-eqz v23, :cond_11

    .line 707
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 579
    :cond_11
    :try_start_11
    sget-object v23, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 583
    sget-object v23, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 584
    .local v17, "singleAdminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-eqz v17, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_f

    .line 587
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 588
    .local v9, "eRevokeOrRollbackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 589
    .local v18, "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_138

    .line 590
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 591
    .local v12, "perm":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string v24, "Blacklist"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 593
    .local v5, "currentBLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string v24, "Whitelist"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 595
    .local v6, "currentWLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 597
    .local v15, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v23, "Blacklist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_83

    const-string v23, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d3

    .line 601
    :cond_83
    if-eqz v5, :cond_3e

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3e

    .line 604
    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_ca

    .line 605
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 642
    :cond_9b
    :goto_9b
    invoke-interface {v9, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_3e

    .line 644
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Set;

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->clear()V
    :try_end_c5
    .catchall {:try_start_11 .. :try_end_c5} :catchall_c7

    goto/16 :goto_3e

    .line 576
    .end local v5    # "currentBLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "currentWLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "eRevokeOrRollbackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "singleAdminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v18    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_c7
    move-exception v23

    monitor-exit p0

    throw v23

    .line 607
    .restart local v5    # "currentBLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "currentWLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "eRevokeOrRollbackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "singleAdminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v18    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ca
    :try_start_ca
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .restart local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9b

    .line 612
    :cond_d3
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3e

    .line 615
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_e6

    .line 616
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto/16 :goto_3e

    .line 620
    :cond_e6
    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10a

    .line 621
    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_101

    .line 622
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_9b

    .line 624
    :cond_101
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .restart local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9b

    .line 628
    :cond_10a
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .restart local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11e

    .line 630
    invoke-interface {v15, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9b

    .line 632
    :cond_11e
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 633
    .local v19, "strItr1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_122
    :goto_122
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9b

    .line 634
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 635
    .local v14, "pkgName":Ljava/lang/String;
    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_122

    .line 636
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 647
    .end local v5    # "currentBLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "currentWLPkgNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "perm":Ljava/lang/String;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "strItr1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_138
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_157

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_PERMISSIONCONTROL"

    const-string v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_f

    .line 653
    :cond_157
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 654
    .restart local v19    # "strItr1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1cd

    .line 655
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 656
    .local v13, "perm1":Ljava/lang/String;
    sget-object v23, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 657
    .local v22, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_175
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_15f

    .line 658
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 659
    .local v21, "uid":Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_175

    .line 661
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v13}, getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 662
    .local v8, "eBLPkgOneAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_175

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_175

    .line 664
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1a3
    :goto_1a3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_175

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 665
    .local v16, "pkgname":Ljava/lang/String;
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a3

    .line 666
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1a3

    .line 672
    .end local v8    # "eBLPkgOneAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "perm1":Ljava/lang/String;
    .end local v16    # "pkgname":Ljava/lang/String;
    .end local v21    # "uid":Ljava/lang/Integer;
    .end local v22    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1cd
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1ec

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_PERMISSIONCONTROL"

    const-string v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_f

    .line 677
    :cond_1ec
    const/16 v20, 0x0

    .line 679
    .local v20, "uPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 680
    .local v11, "perStrItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1f6
    :goto_1f6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_253

    .line 681
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_202
    .catchall {:try_start_ca .. :try_end_202} :catchall_c7

    .line 683
    .restart local v12    # "perm":Ljava/lang/String;
    :try_start_202
    const-string v23, "Whitelist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_236

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-interface {v0, v12, v1, v2}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_225
    .catch Landroid/os/RemoteException; {:try_start_202 .. :try_end_225} :catch_24f
    .catchall {:try_start_202 .. :try_end_225} :catchall_c7

    move-result-object v20

    .line 694
    :goto_226
    if-eqz v20, :cond_1f6

    :try_start_228
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1f6

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, killApplications(Ljava/util/List;)V
    :try_end_235
    .catchall {:try_start_228 .. :try_end_235} :catchall_c7

    goto :goto_1f6

    .line 687
    :cond_236
    :try_start_236
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-interface {v0, v12, v1, v2}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_24d
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_24d} :catch_24f
    .catchall {:try_start_236 .. :try_end_24d} :catchall_c7

    move-result-object v20

    goto :goto_226

    .line 690
    :catch_24f
    move-exception v7

    .line 691
    .local v7, "e":Landroid/os/RemoteException;
    const/16 v20, 0x0

    goto :goto_226

    .line 699
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v12    # "perm":Ljava/lang/String;
    :cond_253
    :try_start_253
    const-string v23, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26a

    .line 701
    sget-object v23, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 703
    :cond_26a
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_PERMISSIONCONTROL"

    const-string v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_281
    .catchall {:try_start_253 .. :try_end_281} :catchall_c7

    goto/16 :goto_f
.end method

.method private declared-synchronized createAdminMap(ILjava/lang/String;)V
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1006
    monitor-enter p0

    :try_start_1
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 1008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1009
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 1011
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_1b
    monitor-exit p0

    return-void

    .line 1006
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 722
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_PERMISSION_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p4, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .local v2, "ePkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1136
    .local v4, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v4, :cond_1a

    .line 1201
    .end local p3    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_19
    return-object p3

    .line 1140
    .restart local p3    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    const-string v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    move-object p3, v2

    .line 1142
    goto :goto_19

    .line 1145
    :cond_2c
    const-string v9, "*"

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 1146
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1148
    invoke-direct {p0, p2}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1149
    if-nez v2, :cond_47

    .line 1150
    const-string v9, "ApplicationPermissionControlPolicy"

    const-string/jumbo v10, "getEffectiveAllPackages: returns null"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const/4 p3, 0x0

    goto :goto_19

    .line 1155
    :cond_47
    const-string v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1156
    .local v6, "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_53
    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 1157
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1158
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 1159
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_53

    .line 1162
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6d
    const-string v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    move-object p3, v2

    .line 1164
    goto :goto_19

    .line 1166
    :cond_7f
    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1170
    :cond_82
    if-eqz v2, :cond_8a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8c

    :cond_8a
    move-object p3, v2

    .line 1171
    goto :goto_19

    .line 1174
    :cond_8c
    const-string v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1175
    .restart local v6    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_98
    :goto_98
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 1176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1177
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 1178
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_98

    .line 1181
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_b2
    if-eqz p4, :cond_b7

    :cond_b4
    move-object p3, v2

    .line 1201
    goto/16 :goto_19

    .line 1184
    :cond_b7
    sget-object v9, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1185
    .local v8, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_c1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 1186
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1189
    .local v7, "uid":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_c1

    .line 1191
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9, p2}, getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1192
    .local v1, "eBLPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_c1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c1

    .line 1194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_e7
    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1195
    .local v0, "eBLPkgName":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e7

    .line 1196
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_e7
.end method

.method private getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .registers 19
    .param p1, "callingUid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p4, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v4, "ePkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1255
    .local v6, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v6, :cond_1c

    .line 1329
    :cond_1b
    :goto_1b
    return-object v4

    .line 1261
    :cond_1c
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 1264
    const-string v12, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7f

    .line 1266
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    .line 1267
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1268
    .local v1, "allPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1273
    .end local v1    # "allPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4d
    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1274
    .local v9, "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_59
    :goto_59
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a4

    .line 1275
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1276
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 1277
    invoke-interface {v4, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_59

    .line 1270
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v9    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_73
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4d

    .line 1281
    :cond_7f
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f8

    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f8

    .line 1284
    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1301
    :cond_a4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 1304
    if-eqz p4, :cond_1b

    .line 1312
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1313
    .local v11, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1314
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1317
    .local v10, "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, p1, :cond_b6

    .line 1319
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v0}, getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1320
    .local v3, "eBLPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_b6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b6

    .line 1322
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_de
    :goto_de
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1323
    .local v2, "eBLPkgName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_de

    .line 1324
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_de

    .line 1289
    .end local v2    # "eBLPkgName":Ljava/lang/String;
    .end local v3    # "eBLPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "uid":Ljava/lang/Integer;
    .end local v11    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_f8
    const-string v12, "Whitelist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10d

    .line 1290
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto/16 :goto_1b

    .line 1293
    :cond_10d
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_111
    :goto_111
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1294
    .local v8, "pkgName":Ljava/lang/String;
    const-string v12, "Blacklist"

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    .line 1295
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_111
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 710
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 711
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 714
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v1, "eAllPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 768
    .local v0, "adminUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 770
    .local v5, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 771
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_1b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_1b

    .line 774
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1b

    .line 777
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_57

    .line 778
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 779
    const-string v6, "ApplicationPermissionControlPolicy"

    const-string v7, "Can\'t apply policy to EDM Admin: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 784
    :cond_57
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_58
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1b

    .line 785
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 786
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 784
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 793
    .end local v3    # "n":I
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_70
    return-object v1
.end method

.method private getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    .local v1, "eBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1209
    .local v2, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v2, :cond_1c

    move-object v6, v7

    .line 1244
    :goto_1b
    return-object v6

    .line 1212
    :cond_1c
    const-string v6, "Blacklist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1213
    .local v0, "blPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "Whitelist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 1215
    .local v5, "whPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    :cond_34
    move-object v6, v7

    .line 1216
    goto :goto_1b

    .line 1218
    :cond_36
    if-eqz v5, :cond_46

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    const-string v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 1219
    :cond_46
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    .line 1220
    goto :goto_1b

    .line 1222
    :cond_4b
    const-string v6, "*"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    move-object v6, v7

    .line 1223
    goto :goto_1b

    .line 1225
    :cond_55
    const-string v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1226
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1227
    invoke-direct {p0, p2}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1228
    if-nez v1, :cond_73

    .line 1229
    const-string v6, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "getEffectiveBlacklist: returns null"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 1230
    goto :goto_1b

    .line 1233
    :cond_70
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1236
    :cond_73
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_97

    .line 1237
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1238
    .local v4, "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7d
    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1239
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1240
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1241
    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7d

    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_97
    move-object v6, v1

    .line 1244
    goto :goto_1b
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1002
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 900
    monitor-enter p0

    :try_start_2
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v10, :cond_e

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_94

    move-result v10

    if-eqz v10, :cond_10

    .line 941
    :cond_e
    :goto_e
    monitor-exit p0

    return-object v3

    .line 903
    :cond_10
    :try_start_10
    invoke-direct {p0}, getPermissionList()Ljava/util/List;

    move-result-object v4

    .line 904
    .local v4, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 907
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v3, "permBWList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 910
    .local v9, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2b
    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 911
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 912
    .local v8, "uid":Ljava/lang/Integer;
    new-instance v0, Landroid/app/enterprise/AppPermissionControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppPermissionControlInfo;-><init>()V

    .line 913
    .local v0, "appPermContInfo":Landroid/app/enterprise/AppPermissionControlInfo;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    .line 914
    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    if-eqz v10, :cond_2b

    .line 916
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->entries:Ljava/util/List;

    .line 917
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v6, "permissionListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iput-object v6, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    .line 919
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 921
    .local v5, "permission":Ljava/lang/String;
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 923
    .local v7, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_58

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_58

    .line 926
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 927
    .local v1, "bwPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_58

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_58

    .line 930
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_10 .. :try_end_93} :catchall_94

    goto :goto_58

    .line 900
    .end local v0    # "appPermContInfo":Landroid/app/enterprise/AppPermissionControlInfo;
    .end local v1    # "bwPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permBWList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    .end local v4    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "permissionListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "uid":Ljava/lang/Integer;
    .end local v9    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_94
    move-exception v10

    monitor-exit p0

    throw v10

    .line 934
    .restart local v0    # "appPermContInfo":Landroid/app/enterprise/AppPermissionControlInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "permBWList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppPermissionControlInfo;>;"
    .restart local v4    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "permissionListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v8    # "uid":Ljava/lang/Integer;
    .restart local v9    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_97
    :try_start_97
    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2b

    .line 935
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 938
    .end local v0    # "appPermContInfo":Landroid/app/enterprise/AppPermissionControlInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "permissionListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "uid":Ljava/lang/Integer;
    :cond_a3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_94

    move-result v10

    if-eqz v10, :cond_e

    .line 939
    const/4 v3, 0x0

    goto/16 :goto_e
.end method

.method private declared-synchronized getPermissionList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1387
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v1, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1391
    .local v4, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1392
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1393
    .local v3, "uid":Ljava/lang/Integer;
    sget-object v5, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1394
    .local v2, "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1395
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1396
    .local v0, "perm":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 1397
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_42

    goto :goto_2c

    .line 1387
    .end local v0    # "perm":Ljava/lang/String;
    .end local v1    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "strItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "uid":Ljava/lang/Integer;
    .end local v4    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_42
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1401
    .restart local v1    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_45
    monitor-exit p0

    return-object v1
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1463
    if-nez p0, :cond_4

    .line 1467
    :cond_3
    :goto_3
    return-object v1

    .line 1463
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 1464
    :catch_10
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private declared-synchronized handleAdminAdded(I)V
    .registers 16
    .param p1, "adminUid"    # I

    .prologue
    .line 522
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v3, "grantPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v12, :cond_12

    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 525
    :cond_12
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "mAppPermissionControl is null. handleAdminAdded not needed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3e

    .line 571
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 528
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1}, getPackageNameForUid(I)Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_3e

    move-result-object v1

    .line 529
    .local v1, "adminPkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 531
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_21
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1000

    invoke-virtual {v12, v1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_41
    .catchall {:try_start_21 .. :try_end_2c} :catchall_3e

    move-result-object v8

    .line 538
    if-eqz v1, :cond_35

    if-eqz v8, :cond_35

    :try_start_31
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v12, :cond_4e

    .line 539
    :cond_35
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "illegal input found. can\'t do handleAdminAdded operation"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3e

    goto :goto_1a

    .line 522
    .end local v1    # "adminPkgName":Ljava/lang/String;
    .end local v3    # "grantPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_3e
    move-exception v12

    monitor-exit p0

    throw v12

    .line 533
    .restart local v1    # "adminPkgName":Ljava/lang/String;
    .restart local v3    # "grantPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_41
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/Exception;
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "handleAdminAdded failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 542
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4e
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "PermissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 545
    .local v6, "permission":Ljava/lang/String;
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 546
    .local v11, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6e
    :goto_6e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_58

    .line 547
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 548
    .local v10, "uid":Ljava/lang/Integer;
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 550
    .local v7, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_6e

    .line 552
    const-string v12, "Blacklist"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a8

    const-string v12, "Blacklist"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    const-string v13, "*"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 554
    :cond_a8
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 559
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v10    # "uid":Ljava/lang/Integer;
    .end local v11    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_ac
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1a

    .line 560
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v9, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_ca
    .catchall {:try_start_42 .. :try_end_ca} :catchall_3e

    .line 564
    .local v5, "perm":Ljava/lang/String;
    :try_start_ca
    iget-object v12, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v13, 0x1

    invoke-interface {v12, v5, v9, v13}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_d0} :catch_d1
    .catchall {:try_start_ca .. :try_end_d0} :catchall_3e

    goto :goto_be

    .line 565
    :catch_d1
    move-exception v2

    .line 566
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_d2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_3e

    goto :goto_be
.end method

.method private handleAdminRemoval(I)V
    .registers 3
    .param p1, "adminUid"    # I

    .prologue
    .line 517
    const-string v0, "Alllist"

    invoke-direct {p0, p1, v0}, clearBWList(ILjava/lang/String;)V

    .line 519
    return-void
.end method

.method private killApplications(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 732
    .local v0, "aMgr":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 733
    .local v5, "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_16

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_2c

    .line 734
    :cond_16
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "killApplications failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 763
    .end local v0    # "aMgr":Landroid/app/ActivityManager;
    .end local v5    # "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1e
    :goto_1e
    return-void

    .line 737
    :catch_1f
    move-exception v2

    .line 738
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "killApplications failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 743
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "aMgr":Landroid/app/ActivityManager;
    .restart local v5    # "runninAppinfList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 744
    .local v1, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_3a

    .line 745
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string v8, "IActivityManager is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 749
    :cond_3a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 750
    .local v6, "runningApplicationInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 752
    :try_start_52
    const-string v7, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "is going to be killed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v1, v7, v8}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7b} :catch_7c

    goto :goto_3e

    .line 756
    :catch_7c
    move-exception v3

    .line 757
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    const-string v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "killApplicationProcess failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private reinforceApplicationPermissionControl()V
    .registers 15

    .prologue
    .line 1405
    const/4 v6, 0x0

    .line 1406
    .local v6, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "reinforceApplicationPermissionControl"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-direct {p0}, getPermissionList()Ljava/util/List;

    move-result-object v6

    .line 1408
    if-eqz v6, :cond_15

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1442
    :cond_15
    :goto_15
    return-void

    .line 1411
    :cond_16
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1412
    .local v11, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1413
    .local v8, "permissionListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1414
    .local v7, "permission":Ljava/lang/String;
    sget-object v12, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1415
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 1416
    .local v1, "eBLPkgListAllAdmin":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_44
    :goto_44
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_64

    .line 1417
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1418
    .local v10, "uid":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12, v7}, getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1419
    .local v2, "eBLPkgOneAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_44

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_44

    .line 1420
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_44

    .line 1422
    .end local v2    # "eBLPkgOneAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_64
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_29

    .line 1423
    invoke-interface {v8, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 1426
    .end local v1    # "eBLPkgListAllAdmin":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "permission":Ljava/lang/String;
    :cond_6e
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_15

    .line 1430
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1431
    .local v4, "perStrItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9f

    .line 1432
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1433
    .local v5, "perm":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1435
    .local v9, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_93
    iget-object v12, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v13, 0x1

    invoke-interface {v12, v5, v9, v13}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_99} :catch_9a

    goto :goto_7c

    .line 1437
    :catch_9a
    move-exception v0

    .line 1438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7c

    .line 1441
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "perm":Ljava/lang/String;
    .end local v9    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9f
    const-string v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "reinforceApplicationPermissionControl done"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15
.end method

.method private declared-synchronized updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .registers 18
    .param p1, "callingUid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p4, "add"    # Z
    .param p5, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, createAdminMap(ILjava/lang/String;)V

    .line 1342
    if-eqz p4, :cond_40

    .line 1343
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_40

    .line 1345
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1346
    .local v11, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    .end local v11    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_40
    const/4 v8, 0x0

    .line 1353
    .local v8, "ePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Blacklist"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1354
    invoke-direct/range {p0 .. p4}, getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 1359
    :goto_4f
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pkgName":Ljava/lang/String;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 1361
    invoke-direct/range {v1 .. v6}, updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1363
    if-eqz p4, :cond_9b

    .line 1364
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1365
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string/jumbo v1, "permission"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    const-string v1, "Object"

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_93

    goto :goto_53

    .line 1340
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "ePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :catchall_93
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1356
    .restart local v8    # "ePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_96
    :try_start_96
    invoke-direct/range {p0 .. p4}, getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    goto :goto_4f

    .line 1372
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_9b
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1373
    .local v9, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const-string/jumbo v1, "permission"

    invoke-virtual {v9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    const-string v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const-string v1, "Object"

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_c2
    .catchall {:try_start_96 .. :try_end_c2} :catchall_93

    goto :goto_53

    .line 1383
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v9    # "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c3
    monitor-exit p0

    return-object v8
.end method

.method private updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "add"    # Z
    .param p5, "listType"    # Ljava/lang/String;

    .prologue
    .line 1016
    if-eqz p4, :cond_58

    .line 1017
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 1019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1020
    .local v0, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .end local v0    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_3c
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_57
    :goto_57
    return-void

    .line 1027
    :cond_58
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 1029
    sget-object v1, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_57
.end method

.method private declared-synchronized validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .registers 19
    .param p1, "callingUid"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p4, "add"    # Z
    .param p5, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    .local p3, "iPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    if-nez v10, :cond_8

    .line 1046
    invoke-virtual {p0}, loadApplicationPermissionControlList()V

    .line 1048
    :cond_8
    if-eqz p3, :cond_10

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3e

    move-result v10

    if-eqz v10, :cond_13

    .line 1049
    :cond_10
    const/4 v7, 0x0

    .line 1127
    :cond_11
    :goto_11
    monitor-exit p0

    return-object v7

    .line 1051
    :cond_13
    :try_start_13
    invoke-static {p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1b

    .line 1052
    const/4 v7, 0x0

    goto :goto_11

    .line 1057
    :cond_1b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v7, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1059
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {v6}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1060
    if-eqz v6, :cond_24

    .line 1061
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3e

    goto :goto_24

    .line 1045
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3e
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1063
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    :try_start_41
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1064
    const/4 v7, 0x0

    goto :goto_11

    .line 1067
    :cond_49
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1068
    .local v2, "adminUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_53
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_3e

    .line 1070
    .restart local v6    # "pkgName":Ljava/lang/String;
    :try_start_5f
    const-string v10, "*"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 1072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1073
    .local v8, "token":J
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1074
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1075
    if-eqz v3, :cond_53

    .line 1076
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_9c

    .line 1077
    const-string v10, "ApplicationPermissionControlPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t apply policy to system app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 1081
    :cond_9c
    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_53

    .line 1082
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 1083
    const-string v10, "ApplicationPermissionControlPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t apply policy to EDM Admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_c8} :catch_cb
    .catchall {:try_start_5f .. :try_end_c8} :catchall_3e

    .line 1084
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 1088
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "token":J
    :catch_cb
    move-exception v4

    .line 1090
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_cc
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_53

    .line 1096
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_d0
    if-nez p4, :cond_163

    .line 1098
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10a

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10a

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_10d

    .line 1101
    :cond_10a
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 1103
    :cond_10d
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_111
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_163

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1104
    .restart local v6    # "pkgName":Ljava/lang/String;
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_111

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string v11, "*"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_111

    .line 1108
    const/4 v7, 0x0

    .line 1109
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 1117
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_163
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    const-string v10, "*"

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1118
    if-eqz p4, :cond_11

    .line 1119
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_11

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_11

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_11

    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string v11, "*"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1124
    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_1d1
    .catchall {:try_start_cc .. :try_end_1d1} :catchall_3e

    goto/16 :goto_11
.end method


# virtual methods
.method public addPackagesToPermissionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 128
    .local v12, "ret":Z
    const/4 v13, 0x0

    .line 129
    .local v13, "uPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 130
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 131
    .local v3, "callingUid":I
    invoke-static/range {p2 .. p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 132
    if-eqz p2, :cond_1a

    const-string v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v2, v12

    .line 197
    :goto_1b
    return v2

    .line 136
    :cond_1c
    const/4 v6, 0x1

    const-string v7, "Blacklist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 139
    .local v5, "pkgNameList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_35

    .line 141
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 142
    goto :goto_1b

    .line 144
    :cond_35
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 146
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x1

    goto :goto_1b

    .line 149
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 151
    .local v14, "token":J
    const/4 v6, 0x1

    const-string v7, "Blacklist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 154
    .local v9, "ePkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_60

    .line 155
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 156
    goto :goto_1b

    .line 158
    :cond_60
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 159
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW returned empty list."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x1

    goto :goto_1b

    .line 165
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v9, v4}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7a} :catch_d4

    move-result-object v13

    .line 170
    :goto_7b
    if-eqz v13, :cond_e3

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e3

    .line 171
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, killApplications(Ljava/util/List;)V

    .line 173
    const-string v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 174
    const/4 v12, 0x1

    .line 180
    :cond_91
    :goto_91
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 181
    .local v16, "userId":I
    if-eqz v12, :cond_b6

    if-nez v16, :cond_b6

    .line 183
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 184
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v11, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    :try_start_af
    const-string v2, "Application"

    const-string v4, "addPackagesToPermissionBlackList"

    invoke-virtual {v10, v2, v4, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_e5

    .line 193
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b6
    :goto_b6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    const-string v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackagesToPermissionBlackList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 197
    goto/16 :goto_1b

    .line 166
    .end local v16    # "userId":I
    :catch_d4
    move-exception v8

    .line 167
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v13, 0x0

    goto :goto_7b

    .line 175
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_d7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_91

    .line 176
    const/4 v12, 0x1

    goto :goto_91

    .line 178
    :cond_e3
    const/4 v12, 0x1

    goto :goto_91

    .line 189
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "userId":I
    :catch_e5
    move-exception v8

    .line 190
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b6
.end method

.method public addPackagesToPermissionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 305
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 306
    .local v13, "ret":Z
    const/16 v16, 0x0

    .line 307
    .local v16, "uPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 308
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 309
    .local v3, "callingUid":I
    invoke-static/range {p2 .. p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 310
    if-eqz p2, :cond_1b

    const-string v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1b
    move v2, v13

    .line 396
    :goto_1c
    return v2

    .line 314
    :cond_1d
    const/4 v6, 0x1

    const-string v7, "Whitelist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 317
    .local v5, "pkgNameList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_36

    .line 319
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 320
    goto :goto_1c

    .line 323
    :cond_36
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 325
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x1

    goto :goto_1c

    .line 329
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 331
    .local v14, "token":J
    const/4 v6, 0x1

    const-string v7, "Whitelist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 334
    .local v9, "ePkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_61

    .line 335
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 336
    goto :goto_1c

    .line 338
    :cond_61
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 339
    const/4 v12, 0x0

    .line 341
    .local v12, "pInfo":Landroid/content/pm/PermissionInfo;
    :try_start_68
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v4}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_84

    move-result-object v12

    .line 347
    :goto_73
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW returned empty list."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-eqz v12, :cond_82

    iget v2, v12, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a3

    .line 349
    :cond_82
    const/4 v2, 0x1

    goto :goto_1c

    .line 342
    :catch_84
    move-exception v8

    .line 343
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    const-string v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get permission info for permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 351
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_a3
    const-string v2, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 361
    .end local v12    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_b5
    :goto_b5
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v9, v4}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_bf} :catch_d0

    move-result-object v16

    .line 366
    :goto_c0
    if-nez v16, :cond_d4

    .line 367
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW null uPkgNameList failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 368
    goto/16 :goto_1c

    .line 354
    .restart local v12    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_cd
    move-object/from16 v9, p3

    goto :goto_b5

    .line 362
    .end local v12    # "pInfo":Landroid/content/pm/PermissionInfo;
    :catch_d0
    move-exception v8

    .line 363
    .restart local v8    # "e":Landroid/os/RemoteException;
    const/16 v16, 0x0

    goto :goto_c0

    .line 371
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_d4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_139

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, killApplications(Ljava/util/List;)V

    .line 374
    const-string v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 375
    const/4 v13, 0x1

    .line 381
    :cond_ea
    :goto_ea
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 382
    .local v17, "userId":I
    if-eqz v13, :cond_10f

    if-nez v17, :cond_10f

    .line 383
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 384
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {v11, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    :try_start_108
    const-string v2, "Application"

    const-string v4, "addPackagesToPermissionWhiteList"

    invoke-virtual {v10, v2, v4, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10f} :catch_13b

    .line 393
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10f
    :goto_10f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    const-string v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackagesToPermissionWhiteList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 396
    goto/16 :goto_1c

    .line 376
    .end local v17    # "userId":I
    :cond_12d
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_ea

    .line 377
    const/4 v13, 0x1

    goto :goto_ea

    .line 379
    :cond_139
    const/4 v13, 0x1

    goto :goto_ea

    .line 389
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "userId":I
    :catch_13b
    move-exception v8

    .line 390
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10f
.end method

.method public clearPackagesFromPermissionBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 286
    const/4 v2, 0x1

    .line 287
    .local v2, "ret":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 289
    .local v4, "token":J
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "Blacklist"

    invoke-direct {p0, v6, v7}, clearBWList(ILjava/lang/String;)V

    .line 291
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 292
    .local v3, "userId":I
    if-eqz v2, :cond_27

    if-nez v3, :cond_27

    .line 293
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1f
    const-string v6, "Application"

    const-string v7, "clearPackagesFromPermissionBlackList"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_2b

    .line 300
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_27
    :goto_27
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    return v2

    .line 296
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2b
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public clearPackagesFromPermissionWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 497
    const/4 v2, 0x1

    .line 498
    .local v2, "ret":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 500
    .local v4, "token":J
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "Whitelist"

    invoke-direct {p0, v6, v7}, clearBWList(ILjava/lang/String;)V

    .line 502
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 503
    .local v3, "userId":I
    if-eqz v2, :cond_27

    if-nez v3, :cond_27

    .line 504
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 506
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1f
    const-string v6, "Application"

    const-string v7, "clearPackagesFromPermissionWhiteList"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_2b

    .line 511
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_27
    :goto_27
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    return v2

    .line 507
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2b
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public getApplicationGrantedPermissions(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1445
    invoke-direct {p0, p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1446
    if-nez p2, :cond_7

    .line 1447
    const/4 v1, 0x0

    .line 1458
    :goto_6
    return-object v1

    .line 1449
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1450
    .local v2, "token":J
    const/4 v1, 0x0

    .line 1452
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_c
    iget-object v4, p0, mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p2}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_16

    move-result-object v1

    .line 1457
    :goto_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 1454
    :catch_16
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getPackagesFromPermissionBlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string/jumbo v1, "getAppPermissionAllBlackLists:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "Blacklist"

    invoke-direct {p0, v0}, getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromPermissionWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    const-string v0, "ApplicationPermissionControlPolicy"

    const-string/jumbo v1, "getPackagesFromPermissionWhiteList:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "Whitelist"

    invoke-direct {p0, v0}, getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPermissionAllowedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "PermissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 806
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v1, "allowedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_f

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_7f

    move-result v8

    if-eqz v8, :cond_12

    :cond_f
    move-object v1, v7

    .line 844
    .end local v1    # "allowedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    :goto_10
    monitor-exit p0

    return-object v1

    .line 812
    .restart local v1    # "allowedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    :try_start_12
    sget-object v8, mAppPermissionControl:Ljava/util/HashMap;

    if-nez v8, :cond_18

    move-object v1, v7

    .line 813
    goto :goto_10

    .line 817
    :cond_18
    sget-object v8, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_22

    move-object v1, v7

    .line 818
    goto :goto_10

    .line 820
    :cond_22
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 822
    .local v3, "permission":Ljava/lang/String;
    sget-object v7, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 823
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 825
    .local v0, "allowed":Z
    :cond_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 826
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 827
    .local v5, "uid":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 828
    sget-object v7, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 830
    .local v4, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_3d

    .line 832
    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_78

    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 837
    :cond_78
    const/4 v0, 0x1

    .line 841
    .end local v4    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "uid":Ljava/lang/Integer;
    :cond_79
    if-eqz v0, :cond_26

    .line 842
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_12 .. :try_end_7e} :catchall_7f

    goto :goto_26

    .line 806
    .end local v0    # "allowed":Z
    .end local v1    # "allowedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permission":Ljava/lang/String;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_7f
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getPermissionBlockedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "PermissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 851
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v1, "blockedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_f

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a5

    move-result v8

    if-eqz v8, :cond_12

    :cond_f
    move-object v1, v7

    .line 893
    .end local v1    # "blockedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    :goto_10
    monitor-exit p0

    return-object v1

    .line 857
    .restart local v1    # "blockedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    :try_start_12
    sget-object v8, mAppPermissionControl:Ljava/util/HashMap;

    if-nez v8, :cond_20

    .line 858
    const-string v8, "ApplicationPermissionControlPolicy"

    const-string/jumbo v9, "mAppPermissionControl is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 859
    goto :goto_10

    .line 863
    :cond_20
    sget-object v8, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2a

    move-object v1, v7

    .line 864
    goto :goto_10

    .line 866
    :cond_2a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 868
    .local v3, "permission":Ljava/lang/String;
    sget-object v7, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 869
    .local v6, "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 871
    .local v0, "allowed":Z
    :cond_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 872
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 873
    .local v5, "uid":Ljava/lang/Integer;
    const/4 v0, 0x1

    .line 874
    sget-object v7, mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 876
    .local v4, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_45

    .line 878
    const-string v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    const-string v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 880
    :cond_80
    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    const-string v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 885
    const/4 v0, 0x0

    .line 890
    .end local v4    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "uid":Ljava/lang/Integer;
    :cond_9f
    if-nez v0, :cond_2e

    .line 891
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_12 .. :try_end_a4} :catchall_a5

    goto :goto_2e

    .line 851
    .end local v0    # "allowed":Z
    .end local v1    # "blockedPermList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permission":Ljava/lang/String;
    .end local v6    # "uidItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_a5
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized loadApplicationPermissionControlList()V
    .registers 13

    .prologue
    .line 946
    monitor-enter p0

    :try_start_1
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9d

    if-eqz v10, :cond_7

    .line 999
    :goto_5
    monitor-exit p0

    return-void

    .line 950
    :cond_7
    :try_start_7
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, mAppPermissionControl:Ljava/util/HashMap;

    .line 952
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v9

    .line 955
    .local v9, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "permission"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "Object"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "ListType"

    aput-object v11, v2, v10

    .line 960
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 962
    .local v8, "storedUid":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 965
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v10, v11, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 967
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_a3

    .line 968
    :goto_4a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 969
    const-string v10, "Object"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 971
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v10, "permission"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, "permission":Ljava/lang/String;
    const-string v10, "ListType"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "bwType":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 976
    .local v6, "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v6, :cond_90

    .line 977
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 978
    .restart local v6    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v10, "Whitelist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v10, "Blacklist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_90
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catchall {:try_start_7 .. :try_end_9c} :catchall_9d

    goto :goto_4a

    .line 946
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v1    # "bwType":Ljava/lang/String;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "permissionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "storedUid":I
    .end local v9    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_9d
    move-exception v10

    monitor-exit p0

    throw v10

    .line 987
    .restart local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "storedUid":I
    .restart local v9    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a0
    :try_start_a0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_a3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2b

    .line 993
    sget-object v10, mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 997
    .end local v0    # "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v8    # "storedUid":I
    :cond_b4
    invoke-direct {p0}, reinforceApplicationPermissionControl()V
    :try_end_b7
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_9d

    goto/16 :goto_5
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, handleAdminAdded(I)V

    .line 124
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, handleAdminRemoval(I)V

    .line 119
    return-void
.end method

.method public removePackagesFromPermissionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 202
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 203
    .local v13, "uPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 204
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 205
    .local v3, "callingUid":I
    const/4 v12, 0x0

    .line 206
    .local v12, "ret":Z
    invoke-static/range {p2 .. p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 207
    if-eqz p2, :cond_1a

    const-string v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    move v2, v12

    .line 276
    :goto_1b
    return v2

    .line 211
    :cond_1c
    const/4 v6, 0x0

    const-string v7, "Blacklist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 214
    .local v5, "pkgNameList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_35

    .line 216
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 217
    goto :goto_1b

    .line 220
    :cond_35
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 222
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x1

    goto :goto_1b

    .line 225
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 228
    .local v14, "token":J
    const/4 v6, 0x0

    const-string v7, "Blacklist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 231
    .local v9, "ePkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_60

    .line 232
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 233
    goto :goto_1b

    .line 236
    :cond_60
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e9

    .line 238
    :try_start_66
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v9, v4}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_7d

    move-result-object v13

    .line 243
    :goto_71
    if-nez v13, :cond_80

    .line 245
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 246
    goto :goto_1b

    .line 239
    :catch_7d
    move-exception v8

    .line 240
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v13, 0x0

    goto :goto_71

    .line 249
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_80
    if-eqz v13, :cond_8d

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8d

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, killApplications(Ljava/util/List;)V

    .line 252
    :cond_8d
    const-string v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 253
    const/4 v12, 0x1

    .line 261
    :cond_96
    :goto_96
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 262
    .local v16, "userId":I
    if-eqz v12, :cond_bc

    if-nez v16, :cond_bc

    .line 263
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 264
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v11, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    :try_start_b4
    const-string v2, "Application"

    const-string/jumbo v4, "removePackagesFromPermissionBlackList"

    invoke-virtual {v10, v2, v4, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bc} :catch_eb

    .line 273
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_bc
    :goto_bc
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    const-string v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromPermissionBlackList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v12

    .line 276
    goto/16 :goto_1b

    .line 254
    .end local v16    # "userId":I
    :cond_db
    if-eqz v13, :cond_96

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_96

    .line 255
    const/4 v12, 0x1

    goto :goto_96

    .line 259
    :cond_e9
    const/4 v12, 0x1

    goto :goto_96

    .line 269
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "userId":I
    :catch_eb
    move-exception v8

    .line 270
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bc
.end method

.method public removePackagesFromPermissionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 400
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 401
    .local v16, "uPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndAppPermisionControlPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 402
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 403
    .local v3, "callingUid":I
    const/4 v13, 0x0

    .line 405
    .local v13, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 406
    .local v14, "token":J
    invoke-static/range {p2 .. p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 407
    if-eqz p2, :cond_1f

    const-string v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1f
    move v2, v13

    .line 487
    :goto_20
    return v2

    .line 411
    :cond_21
    const/4 v6, 0x0

    const-string v7, "Whitelist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 414
    .local v5, "pkgNameList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_3a

    .line 416
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 417
    goto :goto_20

    .line 420
    :cond_3a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 422
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v2, 0x1

    goto :goto_20

    .line 425
    :cond_4a
    const/4 v6, 0x0

    const-string v7, "Whitelist"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 428
    .local v9, "ePkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_61

    .line 429
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 430
    goto :goto_20

    .line 432
    :cond_61
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 433
    const/4 v12, 0x0

    .line 435
    .local v12, "pInfo":Landroid/content/pm/PermissionInfo;
    :try_start_68
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v4}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_84

    move-result-object v12

    .line 440
    :goto_73
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW returned empty list."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    if-eqz v12, :cond_82

    iget v2, v12, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a3

    .line 442
    :cond_82
    const/4 v2, 0x1

    goto :goto_20

    .line 436
    :catch_84
    move-exception v8

    .line 437
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 438
    const-string v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get permission info for permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 444
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_a3
    const-string v2, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 452
    .end local v12    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_b5
    :goto_b5
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v9, v4}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_bf} :catch_d0

    move-result-object v16

    .line 457
    :goto_c0
    if-nez v16, :cond_d4

    .line 458
    const-string v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW uPkgNameList failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 459
    goto/16 :goto_20

    .line 447
    .restart local v12    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_cd
    move-object/from16 v9, p3

    goto :goto_b5

    .line 453
    .end local v12    # "pInfo":Landroid/content/pm/PermissionInfo;
    :catch_d0
    move-exception v8

    .line 454
    .restart local v8    # "e":Landroid/os/RemoteException;
    const/16 v16, 0x0

    goto :goto_c0

    .line 462
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_d4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13b

    .line 463
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, killApplications(Ljava/util/List;)V

    .line 465
    const-string v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 466
    const/4 v13, 0x1

    .line 472
    :cond_ea
    :goto_ea
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 473
    .local v17, "userId":I
    if-eqz v13, :cond_110

    if-nez v17, :cond_110

    .line 474
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 475
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v11, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    :try_start_108
    const-string v2, "Application"

    const-string/jumbo v4, "removePackagesFromPermissionWhiteList"

    invoke-virtual {v10, v2, v4, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_110} :catch_13d

    .line 484
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_110
    :goto_110
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    const-string v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromPermissionWhiteList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 487
    goto/16 :goto_20

    .line 467
    .end local v17    # "userId":I
    :cond_12f
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_ea

    .line 468
    const/4 v13, 0x1

    goto :goto_ea

    .line 470
    :cond_13b
    const/4 v13, 0x1

    goto :goto_ea

    .line 480
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "userId":I
    :catch_13d
    move-exception v8

    .line 481
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_110
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method
