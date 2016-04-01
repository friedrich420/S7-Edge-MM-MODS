.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_NTP_PARAMETERS_MDM:I = 0x4

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastNtpFetchTime:J

.field private mMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mNtpSetByMDM:Z

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private mPollingIntervalMs:J

.field private mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mTime:Landroid/util/TrustedTime;

.field private mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, POLL_REQUEST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide v4, p0, mNitzTimeSetTime:J

    .line 74
    iput-wide v4, p0, mNitzZoneSetTime:J

    .line 85
    iput-wide v4, p0, mLastNtpFetchTime:J

    .line 103
    iput-boolean v3, p0, mNtpSetByMDM:Z

    .line 104
    iput-boolean v3, p0, mBootCompleted:Z

    .line 270
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$3;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$4;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$4;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, mMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, mTime:Landroid/util/TrustedTime;

    .line 110
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget v2, POLL_REQUEST:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, mPendingPollIntent:Landroid/app/PendingIntent;

    .line 114
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, mPollingIntervalMs:J

    .line 116
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, mPollingIntervalShorterMs:J

    .line 118
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mTryAgainTimesMax:I

    .line 120
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mTimeErrorThresholdMs:I

    .line 123
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "NetworkTimeUpdateService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 57
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/NetworkTimeUpdateService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, mTryAgainCounter:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/server/NetworkTimeUpdateService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, mBootCompleted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NetworkTimeUpdateService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 57
    iget-boolean v0, p0, mNtpSetByMDM:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, mNtpSetByMDM:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/NetworkTimeUpdateService;)Landroid/util/TrustedTime;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 57
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NetworkTimeUpdateService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 57
    iget v0, p0, mTimeErrorThresholdMs:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/NetworkTimeUpdateService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, mTimeErrorThresholdMs:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/NetworkTimeUpdateService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, mPollingIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, mPollingIntervalShorterMs:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/server/NetworkTimeUpdateService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, mTryAgainTimesMax:I

    return p1
.end method

.method private isAutomaticTimeRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private onPollNetworkTime(I)V
    .registers 4
    .param p1, "event"    # I

    .prologue
    .line 173
    invoke-direct {p0}, isAutomaticTimeRequested()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, mNtpSetByMDM:Z

    if-nez v0, :cond_b

    .line 181
    :goto_a
    return-void

    .line 175
    :cond_b
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 177
    :try_start_10
    invoke-direct {p0, p1}, onPollNetworkTimeUnderWakeLock(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 179
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    :catchall_19
    move-exception v0

    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .registers 16
    .param p1, "event"    # I

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const-wide/16 v10, -0x1

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 187
    .local v4, "refTime":J
    iget-wide v6, p0, mNitzTimeSetTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_22

    iget-wide v6, p0, mNitzTimeSetTime:J

    sub-long v6, v4, v6

    iget-wide v8, p0, mPollingIntervalMs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_22

    iget-boolean v6, p0, mNtpSetByMDM:Z

    if-nez v6, :cond_22

    .line 189
    iget-wide v6, p0, mPollingIntervalMs:J

    invoke-direct {p0, v6, v7}, resetAlarm(J)V

    .line 247
    :cond_21
    :goto_21
    return-void

    .line 192
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, "currentTime":J
    iget-wide v6, p0, mLastNtpFetchTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_3a

    iget-wide v6, p0, mLastNtpFetchTime:J

    iget-wide v8, p0, mPollingIntervalMs:J

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_3a

    const/4 v6, 0x1

    if-eq p1, v6, :cond_3a

    if-ne p1, v13, :cond_88

    .line 201
    :cond_3a
    iget-object v6, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    iget-wide v8, p0, mPollingIntervalMs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_48

    if-ne p1, v13, :cond_4d

    .line 203
    :cond_48
    iget-object v6, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 207
    :cond_4d
    iget-object v6, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v6

    iget-wide v8, p0, mPollingIntervalMs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_8e

    .line 208
    iget-object v6, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v6}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v2

    .line 209
    .local v2, "ntp":J
    iput v12, p0, mTryAgainCounter:I

    .line 212
    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget v8, p0, mTimeErrorThresholdMs:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_74

    iget-wide v6, p0, mLastNtpFetchTime:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_82

    .line 221
    :cond_74
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gez v6, :cond_82

    .line 222
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 227
    :cond_82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, mLastNtpFetchTime:J

    .line 246
    .end local v2    # "ntp":J
    :cond_88
    iget-wide v6, p0, mPollingIntervalMs:J

    invoke-direct {p0, v6, v7}, resetAlarm(J)V

    goto :goto_21

    .line 230
    :cond_8e
    iget v6, p0, mTryAgainCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, mTryAgainCounter:I

    .line 231
    iget v6, p0, mTryAgainTimesMax:I

    if-ltz v6, :cond_9e

    iget v6, p0, mTryAgainCounter:I

    iget v7, p0, mTryAgainTimesMax:I

    if-gt v6, v7, :cond_a5

    .line 232
    :cond_9e
    iget-wide v6, p0, mPollingIntervalShorterMs:J

    invoke-direct {p0, v6, v7}, resetAlarm(J)V

    goto/16 :goto_21

    .line 235
    :cond_a5
    iput v12, p0, mTryAgainCounter:I

    .line 236
    iget-wide v6, p0, mPollingIntervalMs:J

    invoke-direct {p0, v6, v7}, resetAlarm(J)V

    .line 238
    iget-boolean v6, p0, mBootCompleted:Z

    if-eqz v6, :cond_21

    .line 239
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.edm.intent.event.NTP_SERVER_UNREACHABLE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_21
.end method

.method private registerForAlarms()V
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method private registerForConnectivityIntents()V
    .registers 4

    .prologue
    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method private registerForTelephonyIntents()V
    .registers 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method private registerMDMReceiver()V
    .registers 4

    .prologue
    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.edm.intent.action.UPDATE_NTP_PARAMETERS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    return-void
.end method

.method private resetAlarm(J)V
    .registers 10
    .param p1, "interval"    # J

    .prologue
    .line 255
    iget-object v4, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 257
    .local v2, "now":J
    add-long v0, v2, p1

    .line 258
    .local v0, "next":J
    iget-object v4, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 259
    return-void
.end method


# virtual methods
.method public systemRunning()V
    .registers 5

    .prologue
    .line 129
    invoke-direct {p0}, registerForTelephonyIntents()V

    .line 130
    invoke-direct {p0}, registerForAlarms()V

    .line 131
    invoke-direct {p0}, registerForConnectivityIntents()V

    .line 134
    invoke-direct {p0}, registerMDMReceiver()V

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 142
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 144
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 145
    iget-object v1, p0, mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 146
    return-void
.end method
