.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;
.super Landroid/os/Handler;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 146
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOff()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOn()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 164
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryLow()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerConnectionUpdate(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto :goto_0

    .line 172
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleLocaleChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 176
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleConfigurationChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 180
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    goto :goto_0

    .line 184
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDisasterViewUpdate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerSavingModeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 192
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleInsertSPen(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto :goto_0

    .line 196
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleChangeCoverBackground()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 200
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgShowed()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 204
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgHided()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 208
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleVolumeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    .line 212
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleUserSwitched(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V

    goto/16 :goto_0

    .line 216
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    .line 220
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleEmergencyStateChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$1900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 224
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleContentChanged(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 228
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDateFormatChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 232
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupFestivalDay(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupCommonDay()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 240
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleHomeCityChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 244
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleThemeFontUpdate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverDelayedTimout(I)V
    invoke-static {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$2900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;I)V

    goto/16 :goto_0

    .line 264
    :pswitch_1d
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleOpenThemeUpdate(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_0

    :goto_1
    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverAppCovered(Z)V
    invoke-static {v2, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 272
    :pswitch_1f
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleServiceStateChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    .line 276
    :pswitch_20
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleSendAppOpen(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 279
    :pswitch_21
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_2
    # invokes: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleShortcutDrag(Z)V
    invoke-static {v2, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 146
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
        :pswitch_17
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
