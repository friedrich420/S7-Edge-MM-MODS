.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 3

    .prologue
    .line 3123
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    .line 3124
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3125
    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 3129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3133
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I
    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;J)I

    move-result v14

    .line 3135
    .local v14, "result":I
    const-string v2, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Expired Alarm result :"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3140
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3142
    .local v4, "nowELAPSED":J
    const/high16 v2, 0x10000

    and-int/2addr v2, v14

    if-eqz v2, :cond_cb

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3148
    :try_start_48
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v12, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 3149
    .local v12, "lastTimeChangeClockTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    add-long v8, v12, v18

    .line 3151
    .local v8, "expectedClockTime":J
    monitor-exit v15
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_161

    .line 3152
    const-wide/16 v18, 0x0

    cmp-long v2, v12, v18

    if-eqz v2, :cond_71

    const-wide/16 v18, 0x1f4

    sub-long v18, v8, v18

    cmp-long v2, v6, v18

    if-ltz v2, :cond_71

    const-wide/16 v18, 0x1f4

    add-long v18, v18, v8

    cmp-long v2, v6, v18

    if-lez v2, :cond_cb

    .line 3159
    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 3160
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 3161
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 3162
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3163
    :try_start_95
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 3164
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 3165
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 3166
    monitor-exit v15
    :try_end_b0
    .catchall {:try_start_95 .. :try_end_b0} :catchall_164

    .line 3167
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3168
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3170
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3174
    or-int/lit8 v14, v14, 0x25

    .line 3178
    .end local v8    # "expectedClockTime":J
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "lastTimeChangeClockTime":J
    :cond_cb
    const/high16 v2, 0x10000

    if-eq v14, v2, :cond_5

    .line 3181
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3202
    :try_start_d6
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v10

    .line 3203
    .local v10, "hasWakeup":Z
    const-string/jumbo v2, "sys.quickboot.enable"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_f6

    .line 3204
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->filtQuickBootAlarms(Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;)V

    .line 3206
    :cond_f6
    if-nez v10, :cond_167

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_167

    .line 3209
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_132

    .line 3210
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 3211
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v18

    const-wide/16 v20, 0x3

    mul-long v18, v18, v20

    const-wide/16 v20, 0x2

    div-long v18, v18, v20

    add-long v18, v18, v4

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3214
    :cond_132
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3215
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move/from16 v18, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 3216
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3217
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)V

    .line 3238
    :goto_15b
    monitor-exit v15
    :try_end_15c
    .catchall {:try_start_d6 .. :try_end_15c} :catchall_1e6

    .line 3240
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_5

    .line 3151
    .end local v10    # "hasWakeup":Z
    :catchall_161
    move-exception v2

    :try_start_162
    monitor-exit v15
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    throw v2

    .line 3166
    .restart local v8    # "expectedClockTime":J
    .restart local v12    # "lastTimeChangeClockTime":J
    :catchall_164
    move-exception v2

    :try_start_165
    monitor-exit v15
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    throw v2

    .line 3223
    .end local v8    # "expectedClockTime":J
    .end local v12    # "lastTimeChangeClockTime":J
    .restart local v10    # "hasWakeup":Z
    :cond_167
    :try_start_167
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3224
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)V

    .line 3225
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1dd

    .line 3226
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3227
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3229
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    move-wide/from16 v18, v0

    sub-long v16, v4, v18

    .line 3230
    .local v16, "thisDelayTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3231
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-wide/from16 v18, v0

    cmp-long v2, v18, v16

    if-gez v2, :cond_1d4

    .line 3232
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3234
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3236
    .end local v16    # "thisDelayTime":J
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    goto/16 :goto_15b

    .line 3238
    .end local v10    # "hasWakeup":Z
    :catchall_1e6
    move-exception v2

    monitor-exit v15
    :try_end_1e8
    .catchall {:try_start_167 .. :try_end_1e8} :catchall_1e6

    throw v2
.end method
