.class Lcom/android/server/BatteryService$20;
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
    .line 1801
    iput-object p1, p0, this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1804
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1805
    :try_start_7
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-string v4, "/sys/class/power_supply/battery/fg_asoc"

    # invokes: Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$4100(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v0

    .line 1806
    .local v0, "currentAsoc":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_29

    .line 1807
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ASOC is not supported."

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    const-wide/16 v6, -0x1

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1809
    monitor-exit v3

    .line 1820
    :goto_28
    return-void

    .line 1811
    :cond_29
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;J)J

    .line 1812
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-gez v2, :cond_57

    .line 1813
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x1

    # -= operator for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$2722(Lcom/android/server/BatteryService;J)J

    .line 1814
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1819
    :cond_52
    :goto_52
    monitor-exit v3

    goto :goto_28

    .end local v0    # "currentAsoc":J
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v2

    .line 1815
    .restart local v0    # "currentAsoc":J
    :cond_57
    :try_start_57
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-lez v2, :cond_52

    .line 1816
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x1

    # += operator for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$2714(Lcom/android/server/BatteryService;J)J

    .line 1817
    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_54

    goto :goto_52
.end method
