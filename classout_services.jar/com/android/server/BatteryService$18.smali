.class Lcom/android/server/BatteryService$18;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .prologue
    .line 1738
    iput-object p1, p0, this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1741
    const-wide/16 v0, 0x0

    .line 1742
    .local v0, "maxTemp":J
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1743
    :try_start_9
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3900(Lcom/android/server/BatteryService;)J

    move-result-wide v0

    .line 1744
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_4c

    .line 1745
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1746
    :try_start_17
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2e

    .line 1747
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$3502(Lcom/android/server/BatteryService;J)J

    .line 1749
    :cond_2e
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_4a

    .line 1750
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$3502(Lcom/android/server/BatteryService;J)J

    .line 1751
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/max_temp"

    iget-object v5, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1753
    :cond_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_4f

    .line 1754
    return-void

    .line 1744
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2

    .line 1753
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method
