.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field static final BATCH_INTERVAL:J = 0xdbba00L

.field private static final FUZZ_MILLIS:I = 0x927c0

.field private static final JOB_ID:I = 0x5039

.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static sNextScheduled:J

.field private static sScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, sKeyValueJobService:Landroid/content/ComponentName;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, sScheduled:Z

    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, sNextScheduled:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;)V
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 85
    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v2

    .line 86
    :try_start_3
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 87
    .local v0, "js":Landroid/app/job/JobScheduler;
    const/16 v1, 0x5039

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 88
    const-wide/16 v4, 0x0

    sput-wide v4, sNextScheduled:J

    .line 89
    const/4 v1, 0x0

    sput-boolean v1, sScheduled:Z

    .line 90
    monitor-exit v2

    .line 91
    return-void

    .line 90
    .end local v0    # "js":Landroid/app/job/JobScheduler;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static nextScheduled()J
    .registers 4

    .prologue
    .line 94
    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v1

    .line 95
    :try_start_3
    sget-wide v2, sNextScheduled:J

    monitor-exit v1

    return-wide v2

    .line 96
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, schedule(Landroid/content/Context;J)V

    .line 58
    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .registers 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "delay"    # J

    .prologue
    .line 61
    const-class v3, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v3

    .line 62
    :try_start_3
    sget-boolean v2, sScheduled:Z

    if-nez v2, :cond_7c

    .line 63
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_1f

    .line 64
    const-wide/32 v4, 0xdbba00

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v6, 0x927c0

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v6, v2

    add-long p1, v4, v6

    .line 67
    :cond_1f
    const-string v2, "KeyValueBackupJob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling k/v pass in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minutes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 71
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x5039

    sget-object v5, sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 76
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    sput-wide v4, sNextScheduled:J

    .line 79
    const/4 v2, 0x1

    sput-boolean v2, sScheduled:Z

    .line 81
    .end local v0    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v1    # "js":Landroid/app/job/JobScheduler;
    :cond_7c
    monitor-exit v3

    .line 82
    return-void

    .line 81
    :catchall_7e
    move-exception v2

    monitor-exit v3
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw v2
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v3, 0x0

    .line 101
    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v2

    .line 102
    const-wide/16 v4, 0x0

    :try_start_6
    sput-wide v4, sNextScheduled:J

    .line 103
    const/4 v1, 0x0

    sput-boolean v1, sScheduled:Z

    .line 104
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_14

    .line 107
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    .line 109
    .local v0, "service":Lcom/android/server/backup/Trampoline;
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->backupNow()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_17

    .line 114
    :goto_13
    return v3

    .line 104
    .end local v0    # "service":Lcom/android/server/backup/Trampoline;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1

    .line 110
    .restart local v0    # "service":Lcom/android/server/backup/Trampoline;
    :catch_17
    move-exception v1

    goto :goto_13
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
