.class Lcom/android/server/am/MARsPolicyManager$4;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->handelAlertToastWindowStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2013
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, val$localPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2016
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2017
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v3, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, val$localPackageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    invoke-static {v1, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2018
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_1a

    .line 2019
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2021
    :cond_1a
    monitor-exit v2

    .line 2022
    return-void

    .line 2021
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method
