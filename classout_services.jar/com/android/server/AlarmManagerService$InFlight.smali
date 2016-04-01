.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Landroid/content/Intent;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InFlight"
.end annotation


# instance fields
.field final mAlarmType:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTag:Ljava/lang/String;

.field final mUid:I

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;JI)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/AlarmManagerService;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "alarmType"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "nowELAPSED"    # J
    .param p8, "uid"    # I

    .prologue
    .line 1017
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1018
    iput-object p2, p0, mPendingIntent:Landroid/app/PendingIntent;

    .line 1019
    iput-object p3, p0, mWorkSource:Landroid/os/WorkSource;

    .line 1020
    iput-object p5, p0, mTag:Ljava/lang/String;

    .line 1021
    # invokes: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v1

    iput-object v1, p0, mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1022
    iget-object v1, p0, mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v2, p0, mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1023
    .local v0, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v0, :cond_2f

    .line 1024
    new-instance v0, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v2, p0, mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    .line 1025
    .restart local v0    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v1, p0, mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    iget-object v2, p0, mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_2f
    iput-wide p6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    .line 1028
    iput-object v0, p0, mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1029
    iput p4, p0, mAlarmType:I

    .line 1030
    iput p8, p0, mUid:I

    .line 1031
    return-void
.end method
