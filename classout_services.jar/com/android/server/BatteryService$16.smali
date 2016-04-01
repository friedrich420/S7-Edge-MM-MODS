.class Lcom/android/server/BatteryService$16;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
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
    .line 1671
    iput-object p1, p0, this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1674
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1675
    :try_start_7
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$2702(Lcom/android/server/BatteryService;J)J

    .line 1677
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3000(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$2902(Lcom/android/server/BatteryService;J)J

    .line 1678
    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1679
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v3, p0, this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2900(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v0, v2, v4, v5}, Lcom/android/server/BatteryService;->access$3200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1681
    :cond_3c
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$3302(Lcom/android/server/BatteryService;J)J

    .line 1682
    iget-object v0, p0, this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->access$3502(Lcom/android/server/BatteryService;J)J

    .line 1683
    monitor-exit v1

    .line 1684
    return-void

    .line 1683
    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v0
.end method
