.class Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 285
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver onReceive() : action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->handleAlarmsTimeout()V
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$500(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V

    .line 293
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z
    invoke-static {v1, v6}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1002(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 299
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1102(Lcom/sec/android/cover/ledcover/NfcLedCoverController;J)J

    .line 300
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1000(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsAlarmActive:Z
    invoke-static {v1, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1002(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 305
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mAlarmStartTime:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1102(Lcom/sec/android/cover/ledcover/NfcLedCoverController;J)J

    .line 306
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    goto :goto_0

    .line 308
    :cond_3
    const-string v1, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-virtual {v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z
    invoke-static {v1, v6}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1202(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 313
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1302(Lcom/sec/android/cover/ledcover/NfcLedCoverController;J)J

    .line 314
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    goto :goto_0

    .line 316
    :cond_4
    const-string v1, "com.sec.android.app.clockpackage.timer.TIMER_STOPPED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z
    invoke-static {v1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1200(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mIsTimerActive:Z
    invoke-static {v1, v5}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1202(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Z)Z

    .line 319
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mTimerStartTime:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1302(Lcom/sec/android/cover/ledcover/NfcLedCoverController;J)J

    .line 320
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v1, v4}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    goto :goto_0

    .line 322
    :cond_5
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->processCallEvent(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1400(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Landroid/content/Intent;)V

    goto :goto_0

    .line 324
    :cond_6
    const-string v1, "com.sec.android.phone.action.ACTION_CALL_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 325
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->processCallTimeInformation(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1500(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 326
    :cond_7
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$3;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->processHeadsetPlugInformation(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1600(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
