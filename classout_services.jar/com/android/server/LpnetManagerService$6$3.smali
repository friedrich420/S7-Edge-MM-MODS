.class Lcom/android/server/LpnetManagerService$6$3;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$6;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$6;)V
    .registers 2

    .prologue
    .line 949
    iput-object p1, p0, this$1:Lcom/android/server/LpnetManagerService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 953
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 955
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_192

    .line 957
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    iget-boolean v2, v2, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v2, :cond_182

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$3700(Lcom/android/server/LpnetManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 959
    .local v15, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v15, :cond_182

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_4b} :catch_157

    .line 961
    :try_start_4b
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4f
    :goto_4f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 962
    .local v19, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v8, 0x0

    .line 963
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x0

    .line 964
    .local v18, "targetPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$1800(Lcom/android/server/LpnetManagerService;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 965
    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v9, "arr$":[Ljava/lang/String;
    array-length v13, v9

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_70
    if-ge v12, v13, :cond_82

    aget-object v14, v9, v12

    .line 966
    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z
    invoke-static {v2, v14}, Lcom/android/server/LpnetManagerService;->access$3800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 967
    move-object/from16 v18, v14

    .line 972
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_82
    if-nez v18, :cond_8a

    .line 973
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_8a
    .catchall {:try_start_4b .. :try_end_8a} :catchall_154

    .line 976
    :cond_8a
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8a .. :try_end_9a} :catch_199
    .catchall {:try_start_8a .. :try_end_9a} :catchall_154

    move-result-object v8

    .line 981
    if-eqz v8, :cond_4f

    .line 983
    :try_start_9d
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4f

    .line 984
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v20

    .line 985
    .local v20, "txbytestime":J
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string v2, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_TX put name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",txbytestime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_fb
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v16

    .line 990
    .local v16, "rxbytestime":J
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_RX put name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",rxbytestime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 996
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "rxbytestime":J
    .end local v18    # "targetPackage":Ljava/lang/String;
    .end local v19    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v20    # "txbytestime":J
    :catchall_154
    move-exception v2

    monitor-exit v3
    :try_end_156
    .catchall {:try_start_9d .. :try_end_156} :catchall_154

    :try_start_156
    throw v2
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_157} :catch_157

    .line 999
    .end local v15    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_157
    move-exception v10

    .line 1000
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in NETWORK_STAT_LRU Cause is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Msg is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_182
    :goto_182
    move-object/from16 v0, p0

    iget-object v2, v0, this$1:Lcom/android/server/LpnetManagerService$6;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$6;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v3, "ACTION_TRIGGER_UNUSED_APP_LRU "

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/LpnetManagerService;->access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 1005
    return-void

    .line 955
    :catchall_192
    move-exception v2

    :try_start_193
    monitor-exit v3
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    throw v2

    .line 965
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v15    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v18    # "targetPackage":Ljava/lang/String;
    .restart local v19    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_195
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_70

    .line 977
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "pkg":Ljava/lang/String;
    :catch_199
    move-exception v10

    .line 979
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_4f

    .line 996
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "targetPackage":Ljava/lang/String;
    .end local v19    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_19c
    :try_start_19c
    monitor-exit v3
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_154

    goto :goto_182
.end method
