.class public Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
.super Lcom/android/server/AlarmManagerService$Alarm;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmExt"
.end annotation


# instance fields
.field public isExact:Z

.field public isIntervalChanged:Z

.field public isPassedAlarm:Z

.field public isWhitelist:Z

.field public keyId:I

.field public lastTriggerWhen:J

.field public repeatIntervalOriginal:J

.field public repeatIntervalWindow:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 22
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 218
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v18, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 222
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    move-object/from16 v0, p0

    iput v2, v0, pid:I

    .line 223
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v0, p0

    iput v2, v0, uid:I

    .line 225
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move-object/from16 v0, p0

    iput v2, v0, count:I

    .line 232
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p0

    iput-wide v2, v0, repeatIntervalOriginal:J

    .line 233
    move-object/from16 v0, p0

    iget-wide v2, v0, repeatIntervalOriginal:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a2

    move-object/from16 v0, p0

    iget-wide v2, v0, repeatInterval:J

    :goto_65
    move-object/from16 v0, p0

    iput-wide v2, v0, repeatIntervalWindow:J

    .line 235
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, lastTriggerWhen:J

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, isWhitelist:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, isIntervalChanged:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, isPassedAlarm:Z

    .line 237
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_b4

    const/4 v2, 0x1

    :goto_89
    move-object/from16 v0, p0

    iput-boolean v2, v0, isExact:Z

    .line 239
    :try_start_8d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, keyId:I
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_a1} :catch_b6

    .line 243
    :goto_a1
    return-void

    .line 233
    :cond_a2
    move-object/from16 v0, p0

    iget-wide v2, v0, repeatInterval:J

    move-object/from16 v0, p0

    iget-wide v4, v0, maxWhenElapsed:J

    move-object/from16 v0, p0

    iget-wide v6, v0, whenElapsed:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v2

    goto :goto_65

    .line 237
    :cond_b4
    const/4 v2, 0x0

    goto :goto_89

    .line 240
    :catch_b6
    move-exception v19

    .line 241
    .local v19, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a1
.end method
