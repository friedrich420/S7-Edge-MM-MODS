.class public Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public batch:Lcom/android/server/AlarmManagerService$Batch;

.field public count:I

.field public final flags:I

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public origWhen:J

.field public pid:I

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final tag:Ljava/lang/String;

.field public final type:I

.field public uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public whenOriginal:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V
    .registers 19
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_ws"    # Landroid/os/WorkSource;
    .param p14, "_flags"    # I
    .param p15, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "_uid"    # I

    .prologue
    .line 2801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2802
    iput p1, p0, type:I

    .line 2803
    iput-wide p2, p0, origWhen:J

    .line 2804
    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    if-eqz p1, :cond_f

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3b

    :cond_f
    const/4 v1, 0x1

    :goto_10
    iput-boolean v1, p0, wakeup:Z

    .line 2807
    iput-wide p2, p0, when:J

    .line 2808
    iput-wide p4, p0, whenElapsed:J

    .line 2809
    iput-wide p6, p0, windowLength:J

    .line 2810
    iput-wide p8, p0, maxWhenElapsed:J

    .line 2811
    iput-wide p2, p0, whenOriginal:J

    .line 2812
    iput-wide p10, p0, repeatInterval:J

    .line 2813
    iput-object p12, p0, operation:Landroid/app/PendingIntent;

    .line 2814
    invoke-static {p12, p1}, makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, tag:Ljava/lang/String;

    .line 2815
    iput-object p13, p0, workSource:Landroid/os/WorkSource;

    .line 2816
    move/from16 v0, p14

    iput v0, p0, flags:I

    .line 2817
    move-object/from16 v0, p15

    iput-object v0, p0, alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2818
    move/from16 v0, p16

    iput v0, p0, uid:I

    .line 2819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, pid:I

    .line 2820
    return-void

    .line 2804
    :cond_3b
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;
    .registers 3
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "type"    # I

    .prologue
    .line 2823
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_8

    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    :cond_8
    const-string v0, "*walarm*:"

    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, "*alarm*:"

    goto :goto_a
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    const/4 v0, 0x1

    .line 2848
    iget v1, p0, type:I

    if-eq v1, v0, :cond_e

    iget v1, p0, type:I

    if-eqz v1, :cond_e

    iget v1, p0, type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c2

    .line 2850
    .local v0, "isRtc":Z
    :cond_e
    :goto_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "tag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, type:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2852
    const-string v1, " whenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, whenElapsed:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2854
    if-eqz v0, :cond_c5

    .line 2855
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, when:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2859
    :goto_49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2860
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, windowLength:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2861
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, repeatInterval:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2862
    const-string v1, " count="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, count:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2863
    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    iget-object v1, p0, alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_b3

    .line 2865
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  triggerTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2867
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  showIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2870
    :cond_b3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "operation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2871
    return-void

    .line 2848
    .end local v0    # "isRtc":Z
    :cond_c2
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 2857
    .restart local v0    # "isRtc":Z
    :cond_c5
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, when:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_49
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2830
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    iget v1, p0, type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2834
    const-string v1, " when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    iget-wide v2, p0, when:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2836
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    # getter for: Lcom/android/server/AlarmManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$600()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2838
    iget-object v1, p0, operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2842
    :goto_3b
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2840
    :cond_45
    iget-object v1, p0, operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b
.end method
