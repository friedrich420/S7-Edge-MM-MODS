.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final DATE_CHANGE_EVENT:I = 0x3

.field public static final MINUTE_CHANGE_EVENT:I = 0x2

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .prologue
    .line 3286
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3290
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_4b

    .line 3291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3292
    .local v1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3293
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3294
    .local v4, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3295
    .local v2, "nowELAPSED":J
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    .line 3296
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)V

    .line 3297
    monitor-exit v9
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_37

    .line 3300
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_55

    .line 3301
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3303
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_2f
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_34
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2f .. :try_end_34} :catch_3a

    .line 3300
    :cond_34
    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 3297
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "i":I
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v9
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0

    .line 3304
    .restart local v2    # "nowELAPSED":J
    .restart local v4    # "nowRTC":J
    .restart local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "i":I
    :catch_3a
    move-exception v7

    .line 3305
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v10, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_34

    .line 3308
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    goto :goto_34

    .line 3312
    .end local v1    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v8    # "i":I
    :cond_4b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x4

    if-ne v0, v9, :cond_55

    .line 3313
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)V

    .line 3315
    :cond_55
    return-void
.end method
