.class public Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
.super Ljava/lang/Object;
.source "CaAlarmManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;
    .registers 2

    .prologue
    .line 42
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_13

    .line 43
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    monitor-enter v1

    .line 44
    :try_start_7
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_12

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    .line 47
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 49
    :cond_13
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    return-object v0

    .line 47
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final getCurrentHour()I
    .registers 3

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentMinute()I
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentSecond()I
    .registers 3

    .prologue
    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "localCalendar":Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p1, :cond_8

    .line 62
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 70
    :goto_7
    return-void

    .line 66
    :cond_8
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, mVibrator:Landroid/os/Vibrator;

    goto :goto_7
.end method

.method public final terminateManager()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, mVibrator:Landroid/os/Vibrator;

    .line 81
    return-void
.end method

.method public final vibrateAlarm(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 90
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_b

    .line 91
    const-string/jumbo v0, "mVibrator is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 102
    :goto_a
    return-void

    .line 95
    :cond_b
    if-eqz p1, :cond_1b

    .line 96
    const-string/jumbo v0, "vibrate alarm"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_a

    .line 99
    :cond_1b
    const-string/jumbo v0, "vibrate Cancel"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_a
.end method
