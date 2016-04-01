.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 1115
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x69

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1118
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_214

    .line 1295
    :goto_a
    :sswitch_a
    return-void

    .line 1120
    :sswitch_b
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$100(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_a

    .line 1123
    :sswitch_11
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_a

    .line 1126
    :sswitch_17
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_a

    .line 1129
    :sswitch_21
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_a

    .line 1132
    :sswitch_2b
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V
    invoke-static {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$300(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto :goto_a

    .line 1135
    :sswitch_31
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_a

    .line 1139
    :sswitch_37
    const-string v1, "WindowManager"

    const-string v2, "Waiting for Shared Device keyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1141
    const-string v1, "WindowManager"

    const-string/jumbo v2, "keyguard shown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1143
    const-string v1, "WindowManager"

    const-string v2, "SIM lock identify API delay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1145
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1146
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 1147
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    goto :goto_a

    .line 1150
    :cond_78
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 1151
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 1152
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 1154
    :cond_8d
    const-string v1, "WindowManager"

    const-string/jumbo v2, "keyguard not shown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1156
    const-string v1, "WindowManager"

    const-string v2, "SIM lock identify"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardOwner()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1159
    :cond_ab
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 1161
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp()V

    goto/16 :goto_a

    .line 1166
    :sswitch_be
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_c9

    const-string v1, "WindowManager"

    const-string v2, "Setting mKeyguardDrawComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_c9
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$500()I

    move-result v2

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$600(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_a

    .line 1170
    :sswitch_d4
    const-string v1, "WindowManager"

    const-string v2, "!@Boot: Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$500()I

    move-result v2

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$600(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_a

    .line 1174
    :sswitch_e6
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_f1

    const-string v1, "WindowManager"

    const-string v2, "Setting mWindowManagerDrawComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_f1
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$500()I

    move-result v2

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$700(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto/16 :goto_a

    .line 1178
    :sswitch_fc
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_a

    .line 1181
    :sswitch_103
    iget-object v4, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_10f

    move v1, v2

    :goto_10a
    invoke-virtual {v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    goto/16 :goto_a

    :cond_10f
    move v1, v3

    goto :goto_10a

    .line 1184
    :sswitch_111
    iget-object v4, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_12b

    :goto_11f
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V
    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$900(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 1185
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1000(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_a

    :cond_12b
    move v2, v3

    .line 1184
    goto :goto_11f

    .line 1189
    :sswitch_12d
    iget-object v4, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_147

    :goto_13b
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->endCallPress(JZI)V
    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1100(Lcom/android/server/policy/PhoneWindowManager;JZI)V

    .line 1190
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->finishEndCallKeyPress()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_a

    :cond_147
    move v2, v3

    .line 1189
    goto :goto_13b

    .line 1194
    :sswitch_149
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1300(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_a

    .line 1197
    :sswitch_150
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_15b

    :goto_156
    # invokes: Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$1400(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto/16 :goto_a

    :cond_15b
    move v2, v3

    goto :goto_156

    .line 1206
    :sswitch_15d
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->notifyToSSRM(Z)V
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;Z)V

    goto/16 :goto_a

    .line 1211
    :sswitch_168
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->enableToolBox()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_a

    .line 1214
    :sswitch_16f
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->disableToolBox()V
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_a

    .line 1220
    :sswitch_176
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateSideKeyPanelState(Z)V

    goto/16 :goto_a

    .line 1226
    :sswitch_181
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateSideKeyPanelState(Z)V

    goto/16 :goto_a

    .line 1232
    :sswitch_18c
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateBottomKeyPanelState(ZZ)V

    goto/16 :goto_a

    .line 1238
    :sswitch_197
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateBottomKeyPanelState(ZZ)V

    goto/16 :goto_a

    .line 1244
    :sswitch_1a2
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->showBottomKeyPanel(Z)V

    goto/16 :goto_a

    .line 1250
    :sswitch_1ad
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->showBottomKeyPanel(Z)V

    goto/16 :goto_a

    .line 1257
    :sswitch_1b8
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto/16 :goto_a

    .line 1263
    :sswitch_1cb
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto/16 :goto_a

    .line 1269
    :sswitch_1d6
    const-string v1, "WindowManager"

    const-string v2, "MSG_REQUEST_TRAVERSAL_BY_PWM"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto/16 :goto_a

    .line 1277
    :sswitch_1e6
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "multiwindow_facade"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1278
    .local v0, "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v0, :cond_201

    .line 1279
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v1, :cond_20d

    .line 1280
    const-string/jumbo v1, "mobile_keyboard"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V

    .line 1288
    :cond_201
    :goto_201
    :try_start_201
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->updateDisplay()V
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_201 .. :try_end_208} :catch_20a

    goto/16 :goto_a

    .line 1289
    :catch_20a
    move-exception v1

    goto/16 :goto_a

    .line 1282
    :cond_20d
    const-string/jumbo v1, "mobile_keyboard"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V

    goto :goto_201

    .line 1118
    :sswitch_data_214
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_11
        0x3 -> :sswitch_17
        0x4 -> :sswitch_21
        0x5 -> :sswitch_be
        0x6 -> :sswitch_d4
        0x7 -> :sswitch_e6
        0x9 -> :sswitch_2b
        0xa -> :sswitch_31
        0xb -> :sswitch_fc
        0xc -> :sswitch_103
        0xd -> :sswitch_111
        0xe -> :sswitch_149
        0xf -> :sswitch_150
        0x10 -> :sswitch_a
        0x11 -> :sswitch_15d
        0x12 -> :sswitch_168
        0x13 -> :sswitch_16f
        0x32 -> :sswitch_176
        0x33 -> :sswitch_181
        0x34 -> :sswitch_18c
        0x35 -> :sswitch_197
        0x36 -> :sswitch_1a2
        0x37 -> :sswitch_1ad
        0x38 -> :sswitch_1b8
        0x39 -> :sswitch_1cb
        0x3c -> :sswitch_1d6
        0x3d -> :sswitch_1e6
        0x3e -> :sswitch_12d
        0x69 -> :sswitch_37
    .end sparse-switch
.end method
