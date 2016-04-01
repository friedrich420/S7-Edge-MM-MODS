.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setBatteryState(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$health:I

.field final synthetic val$level:I

.field final synthetic val$plugType:I

.field final synthetic val$status:I

.field final synthetic val$temp:I

.field final synthetic val$volt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V
    .registers 8

    .prologue
    .line 869
    iput-object p1, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, val$plugType:I

    iput p3, p0, val$status:I

    iput p4, p0, val$health:I

    iput p5, p0, val$level:I

    iput p6, p0, val$temp:I

    iput p7, p0, val$volt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 872
    iget-object v0, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 873
    :try_start_5
    iget v0, p0, val$plugType:I

    if-nez v0, :cond_29

    const/4 v7, 0x1

    .line 874
    .local v7, "onBattery":Z
    :goto_a
    iget-object v0, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-ne v0, v7, :cond_2b

    .line 877
    iget-object v0, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, val$status:I

    iget v2, p0, val$health:I

    iget v3, p0, val$plugType:I

    iget v4, p0, val$level:I

    iget v5, p0, val$temp:I

    iget v6, p0, val$volt:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V

    .line 878
    monitor-exit v8

    .line 888
    :goto_28
    return-void

    .line 873
    .end local v7    # "onBattery":Z
    :cond_29
    const/4 v7, 0x0

    goto :goto_a

    .line 880
    .restart local v7    # "onBattery":Z
    :cond_2b
    monitor-exit v8
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_52

    .line 884
    iget-object v0, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v1, "battery-state"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 885
    iget-object v0, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 886
    :try_start_3a
    iget-object v0, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, val$status:I

    iget v2, p0, val$health:I

    iget v3, p0, val$plugType:I

    iget v4, p0, val$level:I

    iget v5, p0, val$temp:I

    iget v6, p0, val$volt:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIII)V

    .line 887
    monitor-exit v8

    goto :goto_28

    :catchall_4f
    move-exception v0

    monitor-exit v8
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_4f

    throw v0

    .line 880
    .end local v7    # "onBattery":Z
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method
