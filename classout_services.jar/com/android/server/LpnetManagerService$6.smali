.class Lcom/android/server/LpnetManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService;)V
    .registers 2

    .prologue
    .line 860
    iput-object p1, p0, this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 864
    .local v6, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIntentReceiver ACTION :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_25
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 866
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # setter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v0, v3}, Lcom/android/server/LpnetManagerService;->access$202(Lcom/android/server/LpnetManagerService;Z)Z

    .line 867
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1500(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$1500(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 868
    :cond_49
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1700(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$1700(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 869
    :cond_60
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1800(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 870
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1900(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1600(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$1900(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1087
    :cond_7f
    :goto_7f
    return-void

    .line 872
    :cond_80
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 873
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # setter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v0, v4}, Lcom/android/server/LpnetManagerService;->access$202(Lcom/android/server/LpnetManagerService;Z)Z

    .line 874
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$1;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$1;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7f

    .line 917
    :cond_9c
    const-string v0, "NETWORK_STAT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 918
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 919
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$2;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$2;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7f

    .line 947
    :cond_bb
    const-string v0, "NETWORK_STAT_LRU"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 948
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 949
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$3;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$3;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7f

    .line 1008
    :cond_da
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e7

    const-string v0, "LpnetManagerService"

    const-string v1, "NETWORK_STAT_LRU :: Missed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_e7
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # setter for: Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z
    invoke-static {v0, v3}, Lcom/android/server/LpnetManagerService;->access$2302(Lcom/android/server/LpnetManagerService;Z)Z

    goto :goto_7f

    .line 1011
    :cond_ed
    const-string v0, "ACTION_TRIGGER_IDLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1012
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 1013
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$4;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$4;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7f

    .line 1020
    :cond_10d
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$5;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$5;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7f

    .line 1028
    :cond_11d
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 1029
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$6;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$6;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7f

    .line 1055
    :cond_135
    const-string v0, "ACTION_TRIGGER_UNUSED_APP_LRU "

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 1056
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-nez v0, :cond_155

    .line 1057
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/LpnetManagerService$6$7;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$6$7;-><init>(Lcom/android/server/LpnetManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7f

    .line 1064
    :cond_155
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_162

    const-string v0, "LpnetManagerService"

    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU :: Missed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_162
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # setter for: Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z
    invoke-static {v0, v3}, Lcom/android/server/LpnetManagerService;->access$2302(Lcom/android/server/LpnetManagerService;Z)Z

    goto/16 :goto_7f

    .line 1067
    :cond_169
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    const-string v0, "LAST_USED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 1069
    :cond_189
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1ab

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power/Date/Time/LAST_USED/reboot/shutdown, Timeshift: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/LpnetManagerService;->timeShift:J
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$5300()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_1ab
    const/4 v7, 0x0

    .line 1071
    .local v7, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;
    invoke-static {v0, v4}, Lcom/android/server/LpnetManagerService;->access$5400(Lcom/android/server/LpnetManagerService;I)Ljava/util/Map;

    move-result-object v7

    .line 1072
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->updateDBForLRU(Ljava/util/Map;)V
    invoke-static {v0, v7}, Lcom/android/server/LpnetManagerService;->access$5500(Lcom/android/server/LpnetManagerService;Ljava/util/Map;)V

    .line 1073
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "LAST_USED"

    iget-object v2, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$4100(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2900(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 1074
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$5000(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1076
    .local v10, "newGlobalCurr":J
    # getter for: Lcom/android/server/LpnetManagerService;->timeShift:J
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$5300()J

    move-result-wide v0

    # getter for: Lcom/android/server/LpnetManagerService;->globalCurr:J
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$5100()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    # setter for: Lcom/android/server/LpnetManagerService;->timeShift:J
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$5302(J)J

    .line 1077
    # setter for: Lcom/android/server/LpnetManagerService;->globalCurr:J
    invoke-static {v10, v11}, Lcom/android/server/LpnetManagerService;->access$5102(J)J

    goto/16 :goto_7f

    .line 1079
    .end local v7    # "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "newGlobalCurr":J
    :cond_1f1
    const-string v0, "com.samsung.android.sm.ACTION_APP_LOCKING_CONTROL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1080
    const-string/jumbo v0, "master_control"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1081
    .local v8, "masterControl":Z
    if-eqz v8, :cond_208

    .line 1082
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    iput-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    goto/16 :goto_7f

    .line 1084
    :cond_208
    iget-object v0, p0, this$0:Lcom/android/server/LpnetManagerService;

    iput-boolean v4, v0, Lcom/android/server/LpnetManagerService;->mAppLockEnabled:Z

    goto/16 :goto_7f
.end method
