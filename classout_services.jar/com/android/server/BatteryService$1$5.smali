.class Lcom/android/server/BatteryService$1$5;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$1;

.field final synthetic val$wirelessPowerSharingEnable:Z


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$1;Z)V
    .registers 3

    .prologue
    .line 407
    iput-object p1, p0, this$1:Lcom/android/server/BatteryService$1;

    iput-boolean p2, p0, val$wirelessPowerSharingEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 410
    iget-object v0, p0, this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, val$wirelessPowerSharingEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharing(Z)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 411
    iget-object v0, p0, this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, val$wirelessPowerSharingEnable:Z

    # invokes: Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;Z)V

    .line 412
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to set Wireless Power sharing as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, val$wirelessPowerSharingEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_32
    return-void

    .line 414
    :cond_33
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fail to set Wireless Power sharing"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method
