.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 1827
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1832
    .local v4, "action":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1833
    .local v24, "replacing":Z
    const/4 v5, 0x0

    .line 1834
    .local v5, "added":Z
    const/4 v8, 0x0

    .line 1835
    .local v8, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1836
    .local v13, "extras":Landroid/os/Bundle;
    const/16 v22, 0x0

    .line 1837
    .local v22, "pkgList":[Ljava/lang/String;
    const-string v30, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2c

    const-string v30, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2c

    const-string v30, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23c

    .line 1840
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    .line 1841
    .local v29, "uri":Landroid/net/Uri;
    if-nez v29, :cond_33

    .line 1992
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_32
    :goto_32
    return-void

    .line 1844
    .restart local v29    # "uri":Landroid/net/Uri;
    :cond_33
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 1845
    .local v23, "pkgName":Ljava/lang/String;
    if-eqz v23, :cond_45

    .line 1846
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .end local v22    # "pkgList":[Ljava/lang/String;
    const/16 v30, 0x0

    aput-object v23, v22, v30

    .line 1848
    .restart local v22    # "pkgList":[Ljava/lang/String;
    :cond_45
    const-string v30, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1851
    if-eqz v8, :cond_157

    .line 1853
    :try_start_4f
    const-string v30, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1872
    .local v10, "components":[Ljava/lang/String;
    const/16 v27, 0x1

    .line 1873
    .local v27, "tryBind":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_68} :catch_14d

    .line 1874
    :try_start_68
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 1875
    .local v11, "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v11, :cond_127

    .line 1877
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    .line 1878
    .local v25, "svc":Landroid/content/pm/ServiceInfo;
    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    .local v26, "svcName":Landroid/content/ComponentName;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_127

    .line 1881
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 1886
    .local v9, "className":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1887
    .local v17, "isTransport":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_b2
    array-length v0, v10

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_123

    .line 1888
    aget-object v30, v10, v15

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_150

    .line 1890
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    .line 1891
    .local v14, "flatName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    const/16 v17, 0x1

    .line 1899
    .end local v14    # "flatName":Ljava/lang/String;
    :cond_123
    if-nez v17, :cond_127

    .line 1902
    const/16 v27, 0x0

    .line 1906
    .end local v9    # "className":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "isTransport":Z
    .end local v25    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v26    # "svcName":Landroid/content/ComponentName;
    :cond_127
    monitor-exit v31
    :try_end_128
    .catchall {:try_start_68 .. :try_end_128} :catchall_154

    .line 1908
    if-eqz v27, :cond_32

    .line 1912
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1913
    .local v6, "app":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    :try_end_14b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12a .. :try_end_14b} :catch_14d

    goto/16 :goto_32

    .line 1915
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "components":[Ljava/lang/String;
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v27    # "tryBind":Z
    :catch_14d
    move-exception v30

    goto/16 :goto_32

    .line 1887
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "components":[Ljava/lang/String;
    .restart local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v15    # "i":I
    .restart local v17    # "isTransport":Z
    .restart local v25    # "svc":Landroid/content/pm/ServiceInfo;
    .restart local v26    # "svcName":Landroid/content/ComponentName;
    .restart local v27    # "tryBind":Z
    :cond_150
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b2

    .line 1906
    .end local v9    # "className":Ljava/lang/String;
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v15    # "i":I
    .end local v17    # "isTransport":Z
    .end local v25    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v26    # "svcName":Landroid/content/ComponentName;
    :catchall_154
    move-exception v30

    :try_start_155
    monitor-exit v31
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    :try_start_156
    throw v30
    :try_end_157
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_156 .. :try_end_157} :catch_14d

    .line 1924
    .end local v10    # "components":[Ljava/lang/String;
    .end local v27    # "tryBind":Z
    :cond_157
    const-string v30, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1925
    const-string v30, "android.intent.extra.REPLACING"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1934
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_16b
    :goto_16b
    if-eqz v22, :cond_32

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    if-eqz v30, :cond_32

    .line 1938
    const-string v30, "android.intent.extra.UID"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 1939
    .local v28, "uid":I
    if-eqz v5, :cond_2a7

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 1941
    if-eqz v24, :cond_19c

    .line 1944
    :try_start_18d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1946
    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 1947
    monitor-exit v31
    :try_end_1aa
    .catchall {:try_start_18d .. :try_end_1aa} :catchall_26a

    .line 1949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1950
    .local v20, "now":J
    move-object/from16 v7, v22

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1b5
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_29a

    aget-object v19, v7, v16

    .line 1952
    .local v19, "packageName":Ljava/lang/String;
    :try_start_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1953
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_201

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_201

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 1960
    :cond_201
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_20e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bd .. :try_end_20e} :catch_27c

    .line 1961
    :try_start_20e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 1962
    .restart local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v11, :cond_26d

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1970
    :goto_237
    monitor-exit v31
    :try_end_238
    .catchall {:try_start_20e .. :try_end_238} :catchall_279

    .line 1950
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :goto_238
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1b5

    .line 1926
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "now":J
    .end local v28    # "uid":I
    :cond_23c
    const-string v30, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_253

    .line 1927
    const/4 v5, 0x1

    .line 1928
    const-string v30, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_16b

    .line 1929
    :cond_253
    const-string v30, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16b

    .line 1930
    const/4 v5, 0x0

    .line 1931
    const-string v30, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_16b

    .line 1947
    .restart local v28    # "uid":I
    :catchall_26a
    move-exception v30

    :try_start_26b
    monitor-exit v31
    :try_end_26c
    .catchall {:try_start_26b .. :try_end_26c} :catchall_26a

    throw v30

    .line 1968
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "now":J
    :cond_26d
    :try_start_26d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V

    goto :goto_237

    .line 1970
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_279
    move-exception v30

    monitor-exit v31
    :try_end_27b
    .catchall {:try_start_26d .. :try_end_27b} :catchall_279

    :try_start_27b
    throw v30
    :try_end_27c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27b .. :try_end_27c} :catch_27c

    .line 1972
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :catch_27c
    move-exception v12

    .line 1975
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Can\'t resolve new app "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_238

    .line 1982
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_29a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    const-string v31, "@pm@"

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 1984
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "now":J
    :cond_2a7
    if-nez v24, :cond_32

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 1988
    :try_start_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1989
    monitor-exit v31

    goto/16 :goto_32

    :catchall_2c8
    move-exception v30

    monitor-exit v31
    :try_end_2ca
    .catchall {:try_start_2b6 .. :try_end_2ca} :catchall_2c8

    throw v30
.end method
