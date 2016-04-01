.class public Lcom/sec/epdg/EpdgPeriodicDpd;
.super Ljava/lang/Object;
.source "EpdgPeriodicDpd.java"


# static fields
.field private static INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd; = null

.field private static final TAG:Ljava/lang/String; = "[EpdgPeriodicDpd]"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "[EpdgPeriodicDpd]"

    const-string v1, "EpdgPeriodicDpd instance created"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;
    .registers 3

    .prologue
    .line 29
    const-class v1, Lcom/sec/epdg/EpdgPeriodicDpd;

    monitor-enter v1

    :try_start_3
    sget-object v0, INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;

    if-nez v0, :cond_15

    .line 30
    const-string v0, "[EpdgPeriodicDpd]"

    const-string v2, "Creating EpdgPeriodicDpd instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/sec/epdg/EpdgPeriodicDpd;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;

    .line 33
    :cond_15
    sget-object v0, INSTANCE:Lcom/sec/epdg/EpdgPeriodicDpd;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method private getPeriodicDpdPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "apn_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized removePeriodicDpdPendingIntent(Ljava/lang/String;)V
    .registers 7
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 69
    monitor-enter p0

    if-nez p1, :cond_d

    .line 70
    :try_start_3
    const-string v1, "[EpdgPeriodicDpd]"

    const-string/jumbo v2, "removePeriodicDpdPendingIntent: apnName is null, returning"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 76
    :goto_b
    monitor-exit p0

    return-void

    .line 73
    :cond_d
    :try_start_d
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, getPeriodicDpdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 75
    .local v0, "pIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_20

    goto :goto_b

    .line 69
    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startTimerForPeriodicDpd(Ljava/lang/String;I)V
    .registers 11
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "dpdTimer"    # I

    .prologue
    .line 37
    monitor-enter p0

    if-nez p1, :cond_d

    .line 38
    :try_start_3
    const-string v3, "[EpdgPeriodicDpd]"

    const-string/jumbo v4, "startTimerForPeriodicDpd: apnName is null, returning"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_53

    .line 53
    :goto_b
    monitor-exit p0

    return-void

    .line 41
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p2

    add-long v0, v4, v6

    .line 42
    .local v0, "alarmExpTime":J
    const-string v3, "[EpdgPeriodicDpd]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startTimerForPeriodicDpd: apnName is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dpdTimer is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alarmExpTime is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, getPeriodicDpdPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 48
    .local v2, "pIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_4c

    .line 49
    iget-object v3, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 51
    :cond_4c
    iget-object v3, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_52
    .catchall {:try_start_d .. :try_end_52} :catchall_53

    goto :goto_b

    .line 37
    .end local v0    # "alarmExpTime":J
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3
.end method
