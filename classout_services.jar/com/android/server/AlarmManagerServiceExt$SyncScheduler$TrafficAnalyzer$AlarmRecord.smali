.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmRecord"
.end annotation


# instance fields
.field public NfgCount:I

.field public UMCount:I

.field public alarmHashCode:I

.field public fgCount:I

.field public hitCount:I

.field public intervalCalculated:J

.field public intervalRequested:J

.field public intervalTraffic:J

.field public intervalTrigger:J

.field public isExact:Z

.field public isMonitorON:Z

.field public isRunPass:Z

.field public isScnON:Z

.field public isUIalarm:Z

.field public isWhite:Z

.field public lastTrafficTime:J

.field public lastTriggerTime:J

.field public missCount:I

.field public missCountAfterHit:I

.field public missCountEvenlyDistributed:Z

.field public piHashCode:I

.field public pid:I

.field public pkgName:Ljava/lang/String;

.field public resetCount:I

.field public targetWhen:J

.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

.field public triggerCount:I

.field public txbytes0time:J

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3001
    iput-object p1, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3002
    const/4 v0, 0x0

    iput-object v0, p0, pkgName:Ljava/lang/String;

    .line 3003
    iput v2, p0, NfgCount:I

    iput v2, p0, UMCount:I

    iput v2, p0, fgCount:I

    iput v2, p0, triggerCount:I

    iput v2, p0, resetCount:I

    iput v2, p0, missCountAfterHit:I

    iput v2, p0, missCount:I

    iput v2, p0, hitCount:I

    iput v2, p0, alarmHashCode:I

    iput v2, p0, piHashCode:I

    iput v2, p0, pid:I

    iput v2, p0, uid:I

    .line 3005
    const-wide/16 v0, -0x1

    iput-wide v0, p0, intervalTraffic:J

    iput-wide v0, p0, intervalTrigger:J

    iput-wide v0, p0, intervalRequested:J

    iput-wide v0, p0, intervalCalculated:J

    iput-wide v0, p0, targetWhen:J

    .line 3006
    const-wide/16 v0, 0x0

    iput-wide v0, p0, txbytes0time:J

    iput-wide v0, p0, lastTrafficTime:J

    iput-wide v0, p0, lastTriggerTime:J

    .line 3007
    iput-boolean v2, p0, isWhite:Z

    iput-boolean v2, p0, isScnON:Z

    iput-boolean v2, p0, isUIalarm:Z

    iput-boolean v2, p0, isRunPass:Z

    iput-boolean v2, p0, isMonitorON:Z

    iput-boolean v2, p0, missCountEvenlyDistributed:Z

    iput-boolean v2, p0, isExact:Z

    .line 3008
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V
    .registers 5
    .param p2, "old"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 3010
    iput-object p1, p0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3011
    iget-object v0, p2, pkgName:Ljava/lang/String;

    iput-object v0, p0, pkgName:Ljava/lang/String;

    .line 3012
    iget v0, p2, uid:I

    iput v0, p0, uid:I

    .line 3013
    iget v0, p2, pid:I

    iput v0, p0, pid:I

    .line 3014
    iget v0, p2, piHashCode:I

    iput v0, p0, piHashCode:I

    .line 3015
    iget v0, p2, alarmHashCode:I

    iput v0, p0, alarmHashCode:I

    .line 3016
    iget v0, p2, hitCount:I

    iput v0, p0, hitCount:I

    .line 3017
    iget v0, p2, missCount:I

    iput v0, p0, missCount:I

    .line 3018
    iget v0, p2, missCountAfterHit:I

    iput v0, p0, missCountAfterHit:I

    .line 3019
    iget-boolean v0, p2, isExact:Z

    iput-boolean v0, p0, isExact:Z

    .line 3020
    iget-boolean v0, p2, missCountEvenlyDistributed:Z

    iput-boolean v0, p0, missCountEvenlyDistributed:Z

    .line 3021
    iget-boolean v0, p2, isMonitorON:Z

    iput-boolean v0, p0, isMonitorON:Z

    .line 3022
    iget-boolean v0, p2, isRunPass:Z

    iput-boolean v0, p0, isRunPass:Z

    .line 3023
    iget-boolean v0, p2, isUIalarm:Z

    iput-boolean v0, p0, isUIalarm:Z

    .line 3024
    iget-boolean v0, p2, isScnON:Z

    iput-boolean v0, p0, isScnON:Z

    .line 3025
    iget-boolean v0, p2, isWhite:Z

    iput-boolean v0, p0, isWhite:Z

    .line 3026
    iget v0, p2, resetCount:I

    iput v0, p0, resetCount:I

    .line 3027
    iget v0, p2, triggerCount:I

    iput v0, p0, triggerCount:I

    .line 3028
    iget v0, p2, fgCount:I

    iput v0, p0, fgCount:I

    .line 3029
    iget-wide v0, p2, targetWhen:J

    iput-wide v0, p0, targetWhen:J

    .line 3030
    iget-wide v0, p2, intervalCalculated:J

    iput-wide v0, p0, intervalCalculated:J

    .line 3031
    iget-wide v0, p2, intervalRequested:J

    iput-wide v0, p0, intervalRequested:J

    .line 3032
    iget-wide v0, p2, intervalTrigger:J

    iput-wide v0, p0, intervalTrigger:J

    .line 3033
    iget-wide v0, p2, intervalTraffic:J

    iput-wide v0, p0, intervalTraffic:J

    .line 3034
    iget-wide v0, p2, lastTriggerTime:J

    iput-wide v0, p0, lastTriggerTime:J

    .line 3035
    iget-wide v0, p2, lastTrafficTime:J

    iput-wide v0, p0, lastTrafficTime:J

    .line 3036
    iget-wide v0, p2, txbytes0time:J

    iput-wide v0, p0, txbytes0time:J

    .line 3037
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 3307
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3308
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ALARM{uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3309
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3310
    const-string v1, ", intATN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, intervalCalculated:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3311
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, intervalTrigger:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3312
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, intervalTraffic:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3313
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, isExact:Z

    if-eqz v1, :cond_df

    const/4 v1, 0x1

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    const-string v1, ", pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3315
    const-string v1, ", alm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, piHashCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3316
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, alarmHashCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    const-string v1, ", cntTHMMRF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, triggerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3318
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, hitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3319
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, missCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3320
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, missCountAfterHit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3321
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, resetCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3322
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, fgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3323
    const-string v1, ", lstTN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, lastTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3324
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, lastTrafficTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3325
    const-string v1, ", tget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, targetWhen:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3326
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3313
    :cond_df
    const/4 v1, 0x0

    goto/16 :goto_4d
.end method

.method public updateTrafficTimeLocked(ZJ)V
    .registers 24
    .param p1, "trafficDetected"    # Z
    .param p2, "trafficTime"    # J

    .prologue
    .line 3043
    if-eqz p1, :cond_278

    .line 3047
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 3053
    move-object/from16 v0, p0

    iget-boolean v0, v0, isRunPass:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8b

    .line 3057
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    if-nez v16, :cond_5b

    .line 3058
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, NfgCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, fgCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, UMCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, triggerCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 3060
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    .line 3279
    :cond_5a
    :goto_5a
    return-void

    .line 3066
    :cond_5b
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_83

    .line 3067
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3068
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    goto :goto_5a

    .line 3075
    :cond_83
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    .line 3082
    :cond_8b
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_221

    .line 3084
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19d

    .line 3086
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 3087
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 3118
    :cond_c9
    :goto_c9
    move-object/from16 v0, p0

    iget-wide v0, v0, lastTrafficTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_137

    .line 3119
    move-object/from16 v0, p0

    iget-wide v0, v0, lastTrafficTime:J

    move-wide/from16 v16, v0

    sub-long v16, p2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, intervalTraffic:J

    .line 3121
    move-object/from16 v0, p0

    iget-wide v0, v0, intervalTraffic:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x325aa0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_274

    const-wide/32 v4, 0xea60

    .line 3123
    .local v4, "NET_TOLERANCE":J
    :goto_f7
    move-object/from16 v0, p0

    iget-wide v0, v0, intervalTraffic:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    long-to-double v0, v4

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    mul-long v16, v16, v4

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, intervalTraffic:J

    .line 3125
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v16

    if-eqz v16, :cond_137

    .line 3126
    const-string v16, "AlarmManagerEXT"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[TM] NetInterval="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, intervalTraffic:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    .end local v4    # "NET_TOLERANCE":J
    :cond_137
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, lastTrafficTime:J

    .line 3265
    :cond_13d
    :goto_13d
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-result-object v16

    if-eqz v16, :cond_5a5

    .line 3266
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5a5

    .line 3270
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3271
    .local v12, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_17d
    :goto_17d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5a5

    .line 3272
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3273
    .local v15, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v0, v15, alarmHashCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, alarmHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17d

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_17d

    .line 3090
    .end local v12    # "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_19d
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d5

    .line 3092
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 3093
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    goto/16 :goto_c9

    .line 3096
    :cond_1d5
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_c9

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c9

    .line 3098
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 3099
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    goto/16 :goto_c9

    .line 3108
    :cond_221
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_24b

    .line 3109
    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_271

    const/16 v16, 0x1

    :goto_245
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, missCountEvenlyDistributed:Z

    .line 3113
    :cond_24b
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c9

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c9

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    goto/16 :goto_c9

    .line 3109
    :cond_271
    const/16 v16, 0x0

    goto :goto_245

    .line 3121
    :cond_274
    const-wide/16 v4, 0x4e20

    goto/16 :goto_f7

    .line 3135
    :cond_278
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mDataConnectionIsConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13d

    .line 3141
    move-object/from16 v0, p0

    iget-boolean v0, v0, isRunPass:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2b2

    .line 3142
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5a

    .line 3143
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5a

    .line 3145
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    .line 3151
    :cond_2b2
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    if-nez v16, :cond_2d0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2d0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 3155
    :cond_2d0
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2fa

    .line 3156
    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_45b

    const/16 v16, 0x1

    :goto_2f4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, missCountEvenlyDistributed:Z

    .line 3162
    :cond_2fa
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_57f

    .line 3163
    const/4 v7, 0x0

    .line 3166
    .local v7, "cnt":I
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    if-eqz v16, :cond_36d

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_36d

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_34d

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_36d

    :cond_34d
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_57f

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    if-nez v16, :cond_57f

    .line 3178
    :cond_36d
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4e9

    .line 3179
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isWhite:Z

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, piHashCode:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/AlarmManagerService;->findAlarmLocked(I)Z

    move-result v8

    .line 3187
    .local v8, "exists":Z
    if-nez v8, :cond_40a

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3189
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_3b3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_40a

    .line 3190
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 3191
    .local v6, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->hashCode()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, piHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3b3

    .line 3193
    const-string v16, "AlarmManagerEXT"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[AppSync] Rollback : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/AlarmManagerService;->rollbackAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;ZZ)V

    .line 3203
    .end local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_40a
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 3207
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    if-lez v16, :cond_42e

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    .line 3209
    :cond_42e
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3210
    .local v10, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_43c
    :goto_43c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_45f

    .line 3211
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3212
    .restart local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v0, v15, alarmHashCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, alarmHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_43c

    add-int/lit8 v7, v7, 0x1

    goto :goto_43c

    .line 3156
    .end local v7    # "cnt":I
    .end local v8    # "exists":Z
    .end local v10    # "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_45b
    const/16 v16, 0x0

    goto/16 :goto_2f4

    .line 3214
    .restart local v7    # "cnt":I
    .restart local v8    # "exists":Z
    .restart local v10    # "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_45f
    if-nez v7, :cond_4e9

    .line 3215
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3216
    .local v11, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_475
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_49d

    .line 3218
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3219
    .local v14, "pStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_475

    move-object/from16 v0, p0

    iget-object v0, v0, pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_475

    goto/16 :goto_5a

    .line 3223
    .end local v14    # "pStr":Ljava/lang/String;
    :cond_49d
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1388

    cmp-long v16, v16, v18

    if-gez v16, :cond_4c7

    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3224
    :cond_4c7
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v16

    if-eqz v16, :cond_4e9

    const-string v16, "AlarmManagerEXT"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[AppSync] moved to Ignore list: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    .end local v8    # "exists":Z
    .end local v10    # "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v11    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 3232
    .local v13, "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_4f7
    :goto_4f7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_537

    .line 3233
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3234
    .restart local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v0, v15, alarmHashCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, alarmHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4f7

    .line 3235
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v16

    if-eqz v16, :cond_533

    const-string v16, "AlarmManagerEXT"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[AppSync] removed from Whitelist: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_533
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_4f7

    .line 3239
    .end local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_537
    move-object/from16 v0, p0

    iget-object v0, v0, this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3240
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_54b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5a

    .line 3241
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 3242
    .restart local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->hashCode()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, piHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_54b

    .line 3244
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 3245
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 3246
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto/16 :goto_5a

    .line 3257
    .end local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v7    # "cnt":I
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v13    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_57f
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 3261
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    if-lez v16, :cond_13d

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    goto/16 :goto_13d

    .line 3278
    :cond_5a5
    if-eqz p1, :cond_5a

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    goto/16 :goto_5a
.end method

.method public updateTriggerTimeLocked(IJ)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "triggerTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3282
    iget-wide v2, p0, lastTriggerTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_36

    .line 3286
    iget-wide v2, p0, lastTriggerTime:J

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, intervalTrigger:J

    .line 3290
    iget-wide v2, p0, intervalTrigger:J

    iget-wide v4, p0, intervalCalculated:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    .line 3304
    :goto_1d
    return-void

    .line 3295
    :cond_1e
    iget-wide v2, p0, intervalTrigger:J

    const-wide/32 v4, 0x325aa0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4b

    const-wide/32 v0, 0xea60

    .line 3297
    .local v0, "SYNC_TOLERANCE_VALUE":J
    :goto_2a
    iget-wide v2, p0, intervalTrigger:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    mul-long/2addr v2, v0

    iput-wide v2, p0, intervalTrigger:J

    .line 3300
    .end local v0    # "SYNC_TOLERANCE_VALUE":J
    :cond_36
    iput-wide p2, p0, lastTriggerTime:J

    .line 3302
    iget-wide v2, p0, intervalRequested:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_47

    iget-wide v2, p0, targetWhen:J

    int-to-long v4, p1

    iget-wide v6, p0, intervalRequested:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, targetWhen:J

    .line 3303
    :cond_47
    const/4 v2, 0x0

    iput v2, p0, resetCount:I

    goto :goto_1d

    .line 3295
    :cond_4b
    const-wide/16 v0, 0x2710

    goto :goto_2a
.end method
