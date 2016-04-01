.class Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;)V
    .registers 2

    .prologue
    .line 521
    iput-object p1, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 524
    iget-object v2, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 525
    :try_start_a
    iget-object v3, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 526
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "wireless_fast_charging"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_5b

    :goto_25
    # setter for: Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z
    invoke-static {v3, v1}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 527
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessFastCharging Settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p0, this$1:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Z

    move-result v3

    # invokes: Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V
    invoke-static {v1, v3}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;Z)V

    .line 530
    monitor-exit v2

    .line 531
    return-void

    .line 526
    :cond_5b
    const/4 v1, 0x0

    goto :goto_25

    .line 530
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_5d
    move-exception v1

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_a .. :try_end_5f} :catchall_5d

    throw v1
.end method
