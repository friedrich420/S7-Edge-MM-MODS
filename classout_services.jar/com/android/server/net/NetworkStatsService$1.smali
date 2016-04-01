.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 496
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 499
    iget-object v0, p0, val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, mCallingPackage:Ljava/lang/String;

    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .registers 7

    .prologue
    .line 502
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 503
    :try_start_7
    iget-object v0, p0, mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_38

    .line 504
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 505
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    const-string/jumbo v3, "uid"

    iget-object v4, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    # setter for: Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$202(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsRecorder;)Lcom/android/server/net/NetworkStatsRecorder;

    .line 507
    :cond_2c
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 509
    :cond_38
    iget-object v0, p0, mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 510
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .registers 7

    .prologue
    .line 514
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 515
    :try_start_7
    iget-object v0, p0, mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_38

    .line 516
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 517
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    const-string/jumbo v3, "uid_tag"

    iget-object v4, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v4

    const/4 v5, 0x1

    # invokes: Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    # setter for: Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$502(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsRecorder;)Lcom/android/server/net/NetworkStatsRecorder;

    .line 519
    :cond_2c
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 521
    :cond_38
    iget-object v0, p0, mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 522
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 597
    iput-object v0, p0, mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 598
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 534
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 535
    new-instance v8, Landroid/net/NetworkStats;

    sub-long v0, p4, p2

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 536
    .local v8, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 538
    .local v6, "ident":J
    :try_start_13
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_23

    .line 540
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    return-object v8

    .line 540
    :catchall_23
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .registers 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 554
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 573
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 574
    if-nez p4, :cond_17

    .line 575
    invoke-direct {p0}, getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 577
    :goto_16
    return-object v0

    :cond_17
    invoke-direct {p0}, getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_16
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .registers 20
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 585
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 586
    if-nez p4, :cond_1b

    .line 587
    invoke-direct {p0}, getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 589
    :goto_1a
    return-object v0

    :cond_1b
    invoke-direct {p0}, getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_1a
.end method

.method public getRelevantUids()[I
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids()[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 560
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 562
    .local v6, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_22

    .line 563
    invoke-direct {p0}, getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v7

    .line 565
    .local v7, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v6, v7}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 567
    .end local v7    # "tagStats":Landroid/net/NetworkStats;
    :cond_22
    return-object v6
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 548
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
