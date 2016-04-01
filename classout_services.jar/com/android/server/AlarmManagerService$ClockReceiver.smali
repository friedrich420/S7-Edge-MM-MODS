.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field tickCount:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 6

    .prologue
    .line 3322
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3320
    const-wide/16 v2, 0x0

    iput-wide v2, p0, tickCount:J

    .line 3323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3324
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3325
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3326
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3327
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x1

    .line 3331
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3335
    invoke-virtual {p0}, scheduleTimeTickEvent()V

    .line 3337
    iget-wide v2, p0, tickCount:J

    add-long v4, v2, v6

    iput-wide v4, p0, tickCount:J

    const-wide/16 v4, 0xa

    rem-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_53

    .line 3338
    const-string v3, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "___SyncScheduler (v3) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "ACTIVATED___"

    :goto_33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 3340
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doGarbageCollection(J)V

    .line 3354
    :cond_53
    :goto_53
    return-void

    .line 3338
    :cond_54
    const-string v2, "DEACTIVATED___"

    goto :goto_33

    .line 3344
    :cond_57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 3349
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 3350
    .local v1, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 3351
    .local v0, "gmtOffset":I
    iget-object v2, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v3, 0xea60

    div-int v3, v0, v3

    neg-int v3, v3

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;JI)I

    .line 3352
    invoke-virtual {p0}, scheduleDateChangedEvent()V

    goto :goto_53
.end method

.method public scheduleDateChangedEvent()V
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 3372
    .local v13, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3373
    const/16 v0, 0xa

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3374
    const/16 v0, 0xc

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3375
    const/16 v0, 0xd

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3376
    const/16 v0, 0xe

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3377
    const/4 v0, 0x5

    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3379
    const/4 v10, 0x0

    .line 3380
    .local v10, "workSource":Landroid/os/WorkSource;
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v6, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v6, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    move-wide v6, v4

    move v9, v1

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 3382
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .registers 23

    .prologue
    .line 3357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3358
    .local v16, "currentTime":J
    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    div-long v4, v16, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long v18, v2, v4

    .line 3362
    .local v18, "nextTime":J
    sub-long v20, v18, v16

    .line 3364
    .local v20, "tickEventDelay":J
    const/4 v12, 0x0

    .line 3365
    .local v12, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v4, v4, v20

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 3368
    return-void
.end method
