.class Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLow()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    const/16 v1, 0xb

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    .line 188
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    const/16 v6, 0xc

    .line 222
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRefreshBatteryInfo status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v2

    .line 226
    .local v2, "wirelessCharging":Z
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    .line 227
    .local v1, "isPlugged":Z
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v0

    .line 228
    .local v0, "isFullyCharged":Z
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRefreshBatteryInfo isBatteryCharging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z
    invoke-static {v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$600(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status.isPluggedIn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isBatteryChargingWireless="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z
    invoke-static {v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$700(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status.isWirelssCharged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isBatteryCharged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharged:Z
    invoke-static {v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$800(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status.isFullyCharged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z
    invoke-static {v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$600(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v3

    if-eq v3, v1, :cond_3

    .line 242
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z
    invoke-static {v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$700(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryChargingWireless:Z
    invoke-static {v3, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$702(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 249
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharging:Z
    invoke-static {v3, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$602(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 257
    .end local v0    # "isFullyCharged":Z
    .end local v1    # "isPlugged":Z
    .end local v2    # "wirelessCharging":Z
    :cond_1
    :goto_1
    return-void

    .line 247
    .restart local v0    # "isFullyCharged":Z
    .restart local v1    # "isPlugged":Z
    .restart local v2    # "wirelessCharging":Z
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v3, v6}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharged:Z
    invoke-static {v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$800(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v3

    if-eq v3, v0, :cond_1

    .line 251
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isBatteryCharged:Z
    invoke-static {v3, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$802(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 252
    if-eqz v0, :cond_1

    .line 253
    iget-object v3, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v3, v6}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    goto :goto_1
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 1
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$200(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 173
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 208
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isScreenOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$302(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 211
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->handleAlarmsTimeout()V
    invoke-static {v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$500(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V

    .line 212
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 192
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isScreenOn:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$302(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 194
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    .line 204
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 3

    .prologue
    .line 177
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeChanged, screen on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isScreenOn:Z
    invoke-static {v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$300(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->TIME_TICK:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendClockInformation(Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;)V
    invoke-static {v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$400(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onVolumeChanged()V
    .locals 2

    .prologue
    .line 216
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVolumeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    const/16 v1, 0xa

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v0, v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    .line 218
    return-void
.end method
