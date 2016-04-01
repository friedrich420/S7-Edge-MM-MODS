.class Lcom/android/server/am/MARsPolicyManager$7;
.super Ljava/lang/Thread;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 2269
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 2275
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    .line 2277
    .local v2, "initIntervalTime":J
    const-wide/32 v8, 0x2bf20

    .line 2278
    .local v8, "updateIntervalTime":J
    const-wide/32 v6, 0x927c0

    .line 2280
    .local v6, "sleepTime":J
    :try_start_9
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$600(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 2281
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)V

    .line 2285
    :cond_26
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_45

    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 2286
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged()V
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$900(Lcom/android/server/am/MARsPolicyManager;)V

    .line 2287
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z
    invoke-static {v1, v10}, Lcom/android/server/am/MARsPolicyManager;->access$802(Lcom/android/server/am/MARsPolicyManager;Z)Z

    .line 2290
    :cond_45
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1000(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1000(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_66

    .line 2291
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_aa

    .line 2292
    const-wide/32 v6, 0xea60

    .line 2299
    :cond_66
    :goto_66
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_8a

    :cond_78
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1200(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_99

    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1200(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_99

    .line 2301
    :cond_8a
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b4

    .line 2302
    const-wide/32 v6, 0xea60

    .line 2309
    :cond_99
    :goto_99
    const-wide/32 v10, 0xea60

    cmp-long v1, v6, v10

    if-nez v1, :cond_bd

    .line 2310
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a3} :catch_a5

    goto/16 :goto_0

    .line 2326
    :catch_a5
    move-exception v0

    .line 2327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2329
    return-void

    .line 2294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_aa
    :try_start_aa
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lcom/android/server/am/MARsPolicyManager;->access$500(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2295
    const-wide/32 v6, 0x927c0

    goto :goto_66

    .line 2304
    :cond_b4
    iget-object v1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1300(Lcom/android/server/am/MARsPolicyManager;)V

    .line 2305
    const-wide/32 v6, 0x927c0

    goto :goto_99

    .line 2314
    :cond_bd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2316
    .local v4, "lSleepBegin":J
    :cond_c1
    const-wide/32 v10, 0x2bf20

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 2319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    cmp-long v1, v10, v6

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_d3} :catch_a5

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-gez v1, :cond_c1

    goto/16 :goto_0
.end method
