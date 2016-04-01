.class Lcom/android/server/LpnetManagerService$2$1;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$2;

.field final synthetic val$isReInstall:Z

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$varAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$2;Landroid/net/Uri;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 711
    iput-object p1, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iput-object p2, p0, val$uri:Landroid/net/Uri;

    iput-object p3, p0, val$varAction:Ljava/lang/String;

    iput-boolean p4, p0, val$isReInstall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 714
    iget-object v6, p0, val$uri:Landroid/net/Uri;

    if-eqz v6, :cond_1a

    .line 715
    iget-object v6, p0, val$uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_1a

    .line 717
    iget-object v6, p0, val$varAction:Ljava/lang/String;

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 718
    iget-boolean v6, p0, val$isReInstall:Z

    if-nez v6, :cond_1a

    .line 807
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-void

    .line 741
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_1b
    iget-object v6, p0, val$varAction:Ljava/lang/String;

    const-string v7, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 742
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 743
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 744
    :try_start_38
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 745
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v8, "1"

    # invokes: Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v4, v8}, Lcom/android/server/LpnetManagerService;->access$600(Lcom/android/server/LpnetManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_5a
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_85

    const-string v6, "LpnetManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mUserFSPackages : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_85
    monitor-exit v7

    goto :goto_1a

    :catchall_87
    move-exception v6

    monitor-exit v7
    :try_end_89
    .catchall {:try_start_38 .. :try_end_89} :catchall_87

    throw v6

    .line 755
    :cond_8a
    const/4 v3, 0x0

    .line 756
    .local v3, "otherPkgs":Z
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 757
    :try_start_94
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b0

    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    :cond_b0
    const/4 v3, 0x1

    .line 758
    :cond_b1
    monitor-exit v7
    :try_end_b2
    .catchall {:try_start_94 .. :try_end_b2} :catchall_131

    .line 759
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cc

    if-eqz v3, :cond_1a

    .line 760
    :cond_cc
    const/4 v1, 0x0

    .line 762
    .local v1, "appStatus":Z
    :try_start_cd
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 763
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cd .. :try_end_dc} :catch_16b

    .line 767
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_dc
    if-eqz v1, :cond_151

    .line 769
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 774
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z
    invoke-static {v6, v4}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v5

    .line 775
    .local v5, "versionMatch":Z
    if-nez v5, :cond_10b

    .line 777
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 778
    :try_start_ff
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 779
    monitor-exit v7
    :try_end_10b
    .catchall {:try_start_ff .. :try_end_10b} :catchall_134

    .line 782
    :cond_10b
    if-eqz v5, :cond_1a

    .line 783
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z
    invoke-static {v6, v4}, Lcom/android/server/LpnetManagerService;->access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    .line 784
    .local v2, "c2dmPermExists":Z
    if-nez v2, :cond_137

    .line 786
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 787
    :try_start_120
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 788
    monitor-exit v7

    goto/16 :goto_1a

    :catchall_12e
    move-exception v6

    monitor-exit v7
    :try_end_130
    .catchall {:try_start_120 .. :try_end_130} :catchall_12e

    throw v6

    .line 758
    .end local v1    # "appStatus":Z
    .end local v2    # "c2dmPermExists":Z
    .end local v5    # "versionMatch":Z
    :catchall_131
    move-exception v6

    :try_start_132
    monitor-exit v7
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_131

    throw v6

    .line 779
    .restart local v1    # "appStatus":Z
    .restart local v5    # "versionMatch":Z
    :catchall_134
    move-exception v6

    :try_start_135
    monitor-exit v7
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw v6

    .line 791
    .restart local v2    # "c2dmPermExists":Z
    :cond_137
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 792
    :try_start_140
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 793
    monitor-exit v7

    goto/16 :goto_1a

    :catchall_14e
    move-exception v6

    monitor-exit v7
    :try_end_150
    .catchall {:try_start_140 .. :try_end_150} :catchall_14e

    throw v6

    .line 799
    .end local v2    # "c2dmPermExists":Z
    .end local v5    # "versionMatch":Z
    :cond_151
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 800
    :try_start_15a
    iget-object v6, p0, this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v6, v6, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 801
    monitor-exit v7

    goto/16 :goto_1a

    :catchall_168
    move-exception v6

    monitor-exit v7
    :try_end_16a
    .catchall {:try_start_15a .. :try_end_16a} :catchall_168

    throw v6

    .line 764
    :catch_16b
    move-exception v6

    goto/16 :goto_dc
.end method
