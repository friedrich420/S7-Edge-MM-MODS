.class public Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mBatteryHealthy:Z

.field private mCharging:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 136
    return-void
.end method


# virtual methods
.method isOnStablePower()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, mBatteryHealthy:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-virtual {p0, p2}, onReceiveInternal(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 176
    iput-boolean v2, p0, mBatteryHealthy:Z

    .line 198
    :cond_10
    :goto_10
    return-void

    .line 177
    :cond_11
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 182
    iput-boolean v3, p0, mBatteryHealthy:Z

    .line 183
    iget-object v1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$000(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_10

    .line 184
    :cond_21
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 189
    iput-boolean v3, p0, mCharging:Z

    .line 190
    iget-object v1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$000(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_10

    .line 191
    :cond_31
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 195
    iput-boolean v2, p0, mCharging:Z

    .line 196
    iget-object v1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingState()V
    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$000(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_10
.end method

.method public startTracking()V
    .registers 4

    .prologue
    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v2, v2, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const-class v2, Landroid/os/BatteryManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 152
    .local v0, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x1

    :goto_2f
    iput-boolean v2, p0, mBatteryHealthy:Z

    .line 153
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, mCharging:Z

    .line 154
    return-void

    .line 152
    :cond_39
    const/4 v2, 0x0

    goto :goto_2f
.end method
