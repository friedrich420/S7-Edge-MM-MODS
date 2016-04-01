.class final Lcom/android/internal/os/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 146
    iput-object p1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    move-result-object v1

    .line 153
    .local v1, "cb":Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4e

    .line 180
    :cond_b
    :goto_b
    return-void

    .line 155
    :pswitch_c
    iget-object v4, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 156
    :try_start_f
    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 157
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1b

    .line 158
    if-eqz v1, :cond_b

    .line 159
    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    goto :goto_b

    .line 157
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v3

    .line 163
    :pswitch_1e
    if-eqz v1, :cond_b

    .line 164
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    :goto_25
    invoke-interface {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    goto :goto_b

    :cond_29
    const/4 v3, 0x0

    goto :goto_25

    .line 168
    :pswitch_2b
    if-eqz v1, :cond_b

    .line 170
    iget-object v4, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 171
    :try_start_30
    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mCharging:Z

    if-eqz v3, :cond_47

    const-string v0, "android.os.action.CHARGING"

    .line 173
    .local v0, "action":Ljava/lang/String;
    :goto_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_4a

    .line 174
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-interface {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    goto :goto_b

    .line 171
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_47
    :try_start_47
    const-string v0, "android.os.action.DISCHARGING"

    goto :goto_38

    .line 173
    :catchall_4a
    move-exception v3

    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4a

    throw v3

    .line 153
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1e
        :pswitch_2b
    .end packed-switch
.end method
