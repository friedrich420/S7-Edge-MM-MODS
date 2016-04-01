.class Lcom/android/server/accessibility/AccessibilityManagerService$8;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .prologue
    .line 1476
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 1539
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1540
    :try_start_7
    invoke-virtual {p0}, getChangingUserId()I

    move-result v7

    .line 1543
    .local v7, "userId":I
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v9

    if-eq v7, v9, :cond_16

    .line 1544
    const/4 v9, 0x0

    monitor-exit v10

    .line 1567
    :goto_15
    return v9

    .line 1546
    :cond_16
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v8

    .line 1547
    .local v8, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v9, v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1548
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 1549
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1550
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1551
    .local v2, "compPkg":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_35
    if-ge v3, v5, :cond_22

    aget-object v6, v0, v3

    .line 1552
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 1553
    if-nez p4, :cond_47

    .line 1554
    const/4 v9, 0x1

    monitor-exit v10

    goto :goto_15

    .line 1568
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "compPkg":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_44
    move-exception v9

    monitor-exit v10
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v9

    .line 1556
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v2    # "compPkg":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .restart local v5    # "len$":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "userId":I
    .restart local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_47
    :try_start_47
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1557
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v11, "enabled_accessibility_services"

    iget-object v12, v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v9, v11, v12, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 1561
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v9

    if-nez v9, :cond_5f

    .line 1562
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v9, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1551
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 1567
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "compPkg":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_62
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_64
    .catchall {:try_start_47 .. :try_end_64} :catchall_44

    goto :goto_15
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1502
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1503
    :try_start_7
    invoke-virtual {p0}, getChangingUserId()I

    move-result v3

    .line 1506
    .local v3, "userId":I
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v5

    if-eq v3, v5, :cond_15

    .line 1507
    monitor-exit v6

    .line 1534
    :goto_14
    return-void

    .line 1509
    :cond_15
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    .line 1510
    .local v4, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1511
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1512
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1513
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, "compPkg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1515
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1517
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v7, "enabled_accessibility_services"

    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v5, v7, v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 1521
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1522
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v7, "touch_exploration_granted_accessibility_services"

    iget-object v8, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v5, v7, v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 1527
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v5

    if-nez v5, :cond_5e

    .line 1528
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1530
    :cond_5e
    monitor-exit v6

    goto :goto_14

    .line 1533
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "compPkg":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3    # "userId":I
    .end local v4    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_60
    move-exception v5

    monitor-exit v6
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v5

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .restart local v3    # "userId":I
    .restart local v4    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_63
    :try_start_63
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_60

    goto :goto_14
.end method

.method public onSomePackagesChanged()V
    .registers 5

    .prologue
    .line 1479
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1482
    :try_start_7
    invoke-virtual {p0}, getChangingUserId()I

    move-result v1

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-eq v1, v3, :cond_15

    .line 1483
    monitor-exit v2

    .line 1498
    :goto_14
    return-void

    .line 1486
    :cond_15
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1491
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1492
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    if-nez v1, :cond_33

    .line 1493
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1494
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1497
    :cond_33
    monitor-exit v2

    goto :goto_14

    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method
