.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$Slog;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_LAST_SHUTDOWNLOG:I = 0x5

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static M_STYLE_CONFIRM:Z = false

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final POWER_CONNECTED:I = 0x1

.field private static final POWER_DISCONNECTED:I = 0x0

.field private static final POWER_UNKNOWN:I = 0x2

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_NO_POWER:Ljava/lang/String; = "no power"

.field private static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final RMT_SYNC_PROP:Ljava/lang/String; = "storage.efs_sync.done"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final TTS_SYSTEM_STEAM_WEIGHT:D = 0.1

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WITHOUT_SLEEP:Z = false

.field private static final WITH_SLEEP:Z = true

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    const-string/jumbo v1, "user"

    const-string/jumbo v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, BIN_TYPE_USER:Z

    .line 196
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v2, :cond_65

    move v1, v2

    :goto_19
    sput-boolean v1, BIN_TYPE_PRODUCTSHIP:Z

    .line 200
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, sIsStartedGuard:Ljava/lang/Object;

    .line 201
    sput-boolean v3, sIsStarted:Z

    .line 202
    sput-boolean v3, sIsConfirming:Z

    .line 231
    new-instance v1, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v1}, <init>()V

    sput-object v1, sInstance:Lcom/android/server/power/ShutdownThread;

    .line 233
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 237
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 255
    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "scafe":Ljava/lang/String;
    const-string v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    :goto_59
    sput-boolean v3, M_STYLE_CONFIRM:Z

    .line 259
    sput-boolean v2, coverOpen:Z

    .line 714
    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    sput-object v1, mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void

    .end local v0    # "scafe":Ljava/lang/String;
    :cond_65
    move v1, v3

    .line 196
    goto :goto_19

    .restart local v0    # "scafe":Ljava/lang/String;
    :cond_67
    move v3, v2

    .line 256
    goto :goto_59
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 266
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mActionDoneSync:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mActionDoneSyncMount:Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 1

    .prologue
    .line 1785
    sget-boolean v0, sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .registers 2

    .prologue
    .line 1772
    sget-boolean v0, sIsStarted:Z

    if-eqz v0, :cond_e

    .line 1773
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v0, 0x1

    .line 1780
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static IsStarted()Z
    .registers 1

    .prologue
    .line 1789
    sget-boolean v0, sIsStarted:Z

    return v0
.end method

.method static synthetic access$000()Lcom/samsung/android/cover/CoverManager$StateListener;
    .registers 1

    .prologue
    .line 165
    sget-object v0, mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, coverOpen:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .prologue
    .line 165
    sget-object v0, sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 165
    sput-boolean p0, coverOpen:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 165
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-static {p0}, startShutdownDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0, p1}, textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 165
    iget-object v0, p0, mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, mRebootUpdate:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1900()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/cover/CoverState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 165
    invoke-static {p0}, checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 165
    sget-object v0, mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .prologue
    .line 165
    sget-object v0, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/android/server/power/ShutdownDialog;
    .registers 1

    .prologue
    .line 165
    sget-object v0, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$2300()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic access$2400()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 165
    sget-object v0, mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, mReboot:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    invoke-static {p0, p1}, beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$600()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 165
    sget-object v0, sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, M_STYLE_CONFIRM:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 165
    sget-object v0, sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 165
    sput-boolean p0, sIsConfirming:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 853
    sget-object v6, sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 854
    :try_start_6
    sget-boolean v4, sIsStarted:Z

    if-eqz v4, :cond_13

    .line 855
    const-string v4, "ShutdownThread"

    const-string v5, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    monitor-exit v6

    .line 925
    :goto_12
    return-void

    .line 858
    :cond_13
    const/4 v4, 0x1

    sput-boolean v4, sIsStarted:Z

    .line 859
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_100

    .line 860
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    .line 861
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    .line 862
    const-string v4, "ShutdownThread"

    const-string v6, "!@beginShutdownSequence"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {v5}, setInputKeysDisable(Z)V

    .line 869
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 871
    :cond_3f
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 872
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    if-eqz p1, :cond_4c

    move v3, v5

    .line 874
    .local v3, "powerofftriggered":I
    :cond_4c
    const-string/jumbo v4, "powerofftriggered"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 877
    const-string/jumbo v4, "isShutDownForRCS"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    :cond_64
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "powerofftriggered":I
    :cond_67
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, mContext:Landroid/content/Context;

    .line 884
    sget-object v6, sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v6, mPowerManager:Landroid/os/PowerManager;

    .line 887
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 889
    :try_start_7c
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "ShutdownThread-cpu"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 891
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 892
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_9a
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_9a} :catch_103

    .line 898
    :goto_9a
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 900
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string/jumbo v4, "shutdown"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 904
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 906
    :try_start_b8
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, mPowerManager:Landroid/os/PowerManager;

    const/16 v7, 0x1a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 908
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 909
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_d7
    .catch Ljava/lang/SecurityException; {:try_start_b8 .. :try_end_d7} :catch_110

    .line 916
    :cond_d7
    :goto_d7
    const-string v4, "ShutdownThread"

    const-string v6, "!@normal"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string/jumbo v4, "recovery"

    sget-object v6, mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    new-instance v4, Ljava/io/File;

    const-string v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 919
    sput-boolean v5, mRebootUpdate:Z

    .line 920
    invoke-static {p0}, startRecoveryDialog(Landroid/content/Context;)V

    .line 924
    :goto_fb
    invoke-static {}, startShutdownThread()V

    goto/16 :goto_12

    .line 859
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_100
    move-exception v4

    :try_start_101
    monitor-exit v6
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw v4

    .line 893
    :catch_103
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v4, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 895
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_9a

    .line 910
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_110
    move-exception v1

    .line 911
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v4, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 912
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_d7

    .line 922
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_11d
    invoke-static {p0}, startShutdownDialog(Landroid/content/Context;)V

    goto :goto_fb
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 763
    const-wide/16 v2, 0x12c

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_a

    .line 767
    :goto_6
    invoke-static {p0, v4, v4}, sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 768
    return-void

    .line 764
    :catch_a
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_6
.end method

.method public static canGlobalActionsShow()Z
    .registers 1

    .prologue
    .line 1766
    invoke-static {}, IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    .registers 2
    .param p0, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 379
    if-nez p0, :cond_4

    .line 380
    const/4 v0, 0x1

    .line 383
    :goto_3
    return v0

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 383
    .local v0, "coverState":Z
    goto :goto_3
.end method

.method private static createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;
    .registers 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "bodyText"    # I
    .param p3, "closer"    # Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    .prologue
    const v11, 0x1040009

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 635
    const/4 v4, 0x2

    .line 636
    .local v4, "coverType":I
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 637
    .local v2, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v2, :cond_23

    .line 638
    sget-object v8, mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v8}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 639
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 640
    .local v3, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-static {v3}, checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v8

    sput-boolean v8, coverOpen:Z

    .line 641
    if-eqz v3, :cond_23

    .line 642
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    .line 647
    .end local v3    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_23
    sget-boolean v8, mReboot:Z

    if-eqz v8, :cond_6b

    .line 648
    const v7, 0x10408d0

    .line 653
    .local v7, "positiveTextId":I
    :goto_2a
    sget-boolean v8, coverOpen:Z

    if-nez v8, :cond_30

    if-ne v4, v9, :cond_76

    .line 656
    :cond_30
    sget-boolean v8, coverOpen:Z

    if-nez v8, :cond_6f

    if-ne v4, v9, :cond_6f

    .line 657
    const-string v8, "ShutdownThread"

    const-string v9, "clear type confirm dialog"

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const v8, 0x10304e4

    invoke-direct {v6, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 662
    .local v6, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_45
    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 663
    if-eqz p1, :cond_4d

    .line 664
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 666
    :cond_4d
    new-instance v8, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    new-instance v8, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v8}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    invoke-virtual {v6, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 678
    .local v5, "dlg":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 711
    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_6a
    return-object v5

    .line 650
    .end local v5    # "dlg":Landroid/app/Dialog;
    .end local v7    # "positiveTextId":I
    :cond_6b
    const v7, 0x1040108

    .restart local v7    # "positiveTextId":I
    goto :goto_2a

    .line 660
    :cond_6f
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x5

    invoke-direct {v6, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_45

    .line 681
    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_76
    new-instance v6, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    .local v6, "dlgBuilder":Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    invoke-virtual {v6, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 684
    if-eqz p1, :cond_83

    .line 685
    invoke-virtual {v6, p1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 687
    :cond_83
    new-instance v8, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 694
    invoke-virtual {v6, v11, p3}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    .line 696
    invoke-virtual {v6}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    .line 698
    .local v1, "coverDlg":Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x833

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 700
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_b0

    .line 701
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 703
    :cond_b0
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 705
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x1

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 706
    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 707
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 708
    invoke-virtual {v1, v10}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 709
    move-object v5, v1

    .restart local v5    # "dlg":Landroid/app/Dialog;
    goto :goto_6a
.end method

.method private static createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 394
    .local v3, "longPressBehavior":I
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-boolean v5, mRebootSafeMode:Z

    if-eqz v5, :cond_49

    .line 397
    const v4, 0x1040115

    .line 409
    .local v4, "titleText":I
    :goto_2b
    sget-boolean v5, mRebootSafeMode:Z

    if-eqz v5, :cond_5b

    .line 410
    const v0, 0x1040116

    .line 429
    .local v0, "bodyText":I
    :goto_32
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 431
    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-boolean v5, M_STYLE_CONFIRM:Z

    if-eqz v5, :cond_9e

    sget-boolean v5, mRebootSafeMode:Z

    if-nez v5, :cond_9e

    .line 432
    invoke-static {p0, v4, v0}, createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v2

    .line 436
    .local v2, "dlg":Landroid/app/Dialog;
    :goto_43
    iput-object v2, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 437
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 438
    return-object v2

    .line 398
    .end local v0    # "bodyText":I
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v2    # "dlg":Landroid/app/Dialog;
    .end local v4    # "titleText":I
    :cond_49
    sget-boolean v5, M_STYLE_CONFIRM:Z

    if-eqz v5, :cond_59

    .line 399
    sget-boolean v5, mReboot:Z

    if-eqz v5, :cond_55

    .line 400
    const v4, 0x10408d0

    .restart local v4    # "titleText":I
    goto :goto_2b

    .line 402
    .end local v4    # "titleText":I
    :cond_55
    const v4, 0x104011d

    .restart local v4    # "titleText":I
    goto :goto_2b

    .line 405
    .end local v4    # "titleText":I
    :cond_59
    const/4 v4, 0x0

    .restart local v4    # "titleText":I
    goto :goto_2b

    .line 411
    :cond_5b
    sget-boolean v5, M_STYLE_CONFIRM:Z

    if-eqz v5, :cond_6b

    .line 412
    sget-boolean v5, mReboot:Z

    if-eqz v5, :cond_67

    .line 413
    const v0, 0x10409b8

    .restart local v0    # "bodyText":I
    goto :goto_32

    .line 415
    .end local v0    # "bodyText":I
    :cond_67
    const v0, 0x10409b7

    .restart local v0    # "bodyText":I
    goto :goto_32

    .line 417
    .end local v0    # "bodyText":I
    :cond_6b
    sget-boolean v5, mReboot:Z

    if-eqz v5, :cond_86

    invoke-static {}, isTablet()Z

    move-result v5

    if-nez v5, :cond_86

    const-string/jumbo v5, "vzw"

    invoke-static {}, readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 418
    const v0, 0x1040a55

    .restart local v0    # "bodyText":I
    goto :goto_32

    .line 419
    .end local v0    # "bodyText":I
    :cond_86
    sget-boolean v5, mReboot:Z

    if-eqz v5, :cond_94

    .line 420
    if-ne v3, v8, :cond_90

    const v0, 0x10408d1

    .restart local v0    # "bodyText":I
    :goto_8f
    goto :goto_32

    .end local v0    # "bodyText":I
    :cond_90
    const v0, 0x10408c1

    goto :goto_8f

    .line 424
    :cond_94
    if-ne v3, v8, :cond_9a

    const v0, 0x1040114

    .restart local v0    # "bodyText":I
    :goto_99
    goto :goto_32

    .end local v0    # "bodyText":I
    :cond_9a
    const v0, 0x1040113

    goto :goto_99

    .line 434
    .restart local v0    # "bodyText":I
    .restart local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_9e
    invoke-static {p0, v4, v0, v1}, createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;

    move-result-object v2

    .restart local v2    # "dlg":Landroid/app/Dialog;
    goto :goto_43
.end method

.method private static createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "description"    # I

    .prologue
    .line 442
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    const v2, 0x1030011

    move-object v1, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;ILandroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$1;->init()Landroid/app/Dialog;

    move-result-object v6

    .line 626
    .local v6, "dlg":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 627
    return-object v6
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 14
    .param p0, "deviceShutdownClassName"    # Ljava/lang/String;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1722
    new-instance v4, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1726
    .local v4, "oemClassLoader":Ldalvik/system/PathClassLoader;
    :try_start_d
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_10} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_58

    move-result-object v0

    .line 1729
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_11
    const-string/jumbo v7, "rebootOrShutdown"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1730
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_39} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_39} :catch_4e

    .line 1745
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_39
    return v5

    .line 1731
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3a
    move-exception v2

    .line 1732
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_3b
    const-string v5, "ShutdownThread"

    const-string v7, "!@call method fail rebootOrShutdown"

    invoke-static {v5, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    move v5, v6

    .line 1733
    goto :goto_39

    .line 1734
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_44
    move-exception v2

    .line 1735
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v7, "!@unchecked exception raised"

    invoke-static {v5, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_4c} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_58

    move v5, v6

    .line 1736
    goto :goto_39

    .line 1738
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_4e
    move-exception v1

    .line 1739
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "ShutdownThread"

    const-string v7, "!@can\'t found class"

    invoke-static {v5, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1740
    goto :goto_39

    .line 1741
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_58
    move-exception v1

    .line 1742
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v7, "!@unchecked exception raised"

    invoke-static {v5, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1743
    goto :goto_39
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .registers 12

    .prologue
    const/16 v11, 0x1b0

    const/4 v10, -0x1

    .line 1820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1823
    .local v2, "logFilename":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1827
    .local v1, "logBackupFileName":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v0, "fname":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1830
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2800

    cmp-long v5, v6, v8

    if-lez v5, :cond_77

    .line 1831
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v3, "mBackupfname":Ljava/io/File;
    const-string v5, "ShutdownThread"

    const-string v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1835
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_78

    .line 1837
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    .end local v0    # "fname":Ljava/io/File;
    .end local v3    # "mBackupfname":Ljava/io/File;
    :cond_77
    :goto_77
    return-object v0

    .line 1842
    .restart local v0    # "fname":Ljava/io/File;
    .restart local v3    # "mBackupfname":Ljava/io/File;
    :cond_78
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 1843
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1845
    .local v4, "new_fname":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1846
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1847
    goto :goto_77

    .line 1849
    .end local v4    # "new_fname":Ljava/io/File;
    :cond_a0
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77
.end method

.method private isPoweredPlugged()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1281
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v0, "f":Landroid/content/IntentFilter;
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1283
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "plugged"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1284
    .local v2, "state":I
    if-ne v2, v3, :cond_1b

    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private static isTablet()Z
    .registers 2

    .prologue
    .line 2347
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2348
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2273
    const/16 v1, 0x3a

    .line 2274
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 2276
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2279
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2282
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    if-nez v6, :cond_1a

    .line 2283
    const-string v6, ""

    .line 2286
    :cond_1a
    move-object v2, v7

    .line 2287
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2288
    :cond_1e
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 2289
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 2290
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 2292
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_1e

    .line 2293
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2294
    .local v4, "enabledPackage":Ljava/lang/String;
    if-eqz v5, :cond_1e

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2297
    const/4 v8, 0x1

    .line 2301
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledPackage":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :goto_45
    return v8

    :cond_46
    const/4 v8, 0x0

    goto :goto_45
.end method

.method private static needQcOemShutdown()Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1710
    const-string/jumbo v8, "ro.chipname"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1711
    .local v2, "currentChip":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "8996"

    aput-object v8, v5, v6

    const-string v8, "8084"

    aput-object v8, v5, v7

    const/4 v8, 0x2

    const-string/jumbo v9, "exynos"

    aput-object v9, v5, v8

    .line 1712
    .local v5, "skipList":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1d
    if-ge v3, v4, :cond_2b

    aget-object v1, v0, v3

    .line 1713
    .local v1, "chip":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1717
    .end local v1    # "chip":Ljava/lang/String;
    :goto_27
    return v6

    .line 1712
    .restart local v1    # "chip":Ljava/lang/String;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .end local v1    # "chip":Ljava/lang/String;
    :cond_2b
    move v6, v7

    .line 1717
    goto :goto_27
.end method

.method private static needSyncQcRmtStorage()Z
    .registers 4

    .prologue
    .line 1686
    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "propHwNameValue":Ljava/lang/String;
    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1688
    const-string/jumbo v2, "storage.efs_sync.done"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1689
    .local v1, "status":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1690
    const/4 v2, 0x1

    .line 1693
    .end local v1    # "status":Ljava/lang/String;
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method private static readSalesCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2336
    const-string v0, ""

    .line 2338
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2339
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 2340
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v0

    .line 2343
    :cond_16
    :goto_16
    return-object v0

    .line 2342
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 801
    invoke-static {}, IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 810
    :goto_7
    return-void

    .line 804
    :cond_8
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x1

    sput-boolean v0, mReboot:Z

    .line 806
    sput-boolean v3, mRebootSafeMode:Z

    .line 807
    sput-boolean v3, mRebootUpdate:Z

    .line 808
    sput-object p1, mRebootReason:Ljava/lang/String;

    .line 809
    invoke-static {p0, p2, v3}, shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_7
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1542
    const-string v5, "ShutdownThread"

    const-string v6, "!@call oem shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-string/jumbo v5, "ro.baseband"

    const-string/jumbo v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    .local v0, "baseband":Ljava/lang/String;
    invoke-static {}, needSyncQcRmtStorage()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1546
    invoke-static {}, syncQcRmtStorage()V

    .line 1549
    :cond_1a
    const-string v1, "com.android.server.power.ShutdownOem"

    .line 1550
    .local v1, "className":Ljava/lang/String;
    invoke-static {}, needQcOemShutdown()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {v1, p1, p2}, deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1551
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 1552
    invoke-static {v1, p1, p2}, deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1555
    :cond_2d
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "waitForAnimEnd"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    sget-object v5, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_3f

    .line 1558
    sget-object v5, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    .line 1562
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v3, "reasonLogString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_7e

    const-string/jumbo v5, "reboot : "

    :goto_4b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    if-nez p2, :cond_82

    const-string/jumbo v5, "null"

    :goto_53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    const-string v5, "ShutdownThread"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-static {}, waitIfTimeoutDumpWorking()V

    .line 1569
    if-eqz p1, :cond_8d

    .line 1570
    const-string/jumbo v5, "poweroff_sound=suspend"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1571
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    .line 1573
    :try_start_6d
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_84

    .line 1597
    :cond_70
    :goto_70
    const-string v5, "ShutdownThread"

    const-string v6, "!@Performing low-level shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    .line 1599
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 1600
    return-void

    .line 1563
    :cond_7e
    const-string/jumbo v5, "shutdown : "

    goto :goto_4b

    :cond_82
    move-object v5, p2

    .line 1564
    goto :goto_53

    .line 1574
    :catch_84
    move-exception v2

    .line 1575
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_70

    .line 1577
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8d
    if-eqz p0, :cond_70

    .line 1581
    new-instance v4, Landroid/os/SystemVibrator;

    invoke-direct {v4, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1583
    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v6, 0x1f4

    :try_start_96
    sget-object v5, VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9b} :catch_a3

    .line 1591
    :goto_9b
    const-wide/16 v6, 0x1f4

    :try_start_9d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_70

    .line 1592
    :catch_a1
    move-exception v5

    goto :goto_70

    .line 1584
    :catch_a3
    move-exception v2

    .line 1586
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@Failed to vibrate during shutdown."

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_9b
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v4, 0x1

    .line 832
    invoke-static {}, IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 850
    :goto_7
    return-void

    .line 837
    :cond_8
    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 839
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-nez v1, :cond_23

    .line 840
    const-string v1, "ShutdownThread"

    const-string v2, "SAFE MODE is not allowed"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 845
    :cond_23
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sput-boolean v4, mReboot:Z

    .line 847
    sput-boolean v4, mRebootSafeMode:Z

    .line 848
    sput-object p1, mRebootReason:Ljava/lang/String;

    .line 849
    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_7
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 820
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 821
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 829
    :cond_12
    :goto_12
    return-void

    .line 825
    :cond_13
    invoke-static {}, IsShutDownStarted()Z

    move-result v1

    if-nez v1, :cond_12

    .line 828
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_12
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sleep"    # Z

    .prologue
    const/4 v1, 0x0

    .line 771
    invoke-static {p0, v1, v1}, sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    .line 772
    if-eqz p1, :cond_b

    .line 774
    const-wide/16 v2, 0x12c

    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    .line 779
    :cond_b
    :goto_b
    return-void

    .line 775
    :catch_c
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_b
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .registers 11
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1793
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-static {}, getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .line 1795
    .local v2, "fname":Ljava/io/File;
    const/4 v4, 0x0

    .line 1797
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_c
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_5e
    .catchall {:try_start_c .. :try_end_12} :catchall_6a

    .line 1798
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_12
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1799
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1804
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1805
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_51} :catch_79
    .catchall {:try_start_12 .. :try_end_51} :catchall_76

    .line 1809
    if-eqz v5, :cond_7c

    .line 1811
    :try_start_53
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_58

    move-object v4, v5

    .line 1817
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_57
    :goto_57
    return-void

    .line 1812
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_58
    move-exception v1

    .line 1813
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 1814
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_57

    .line 1806
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :catch_5e
    move-exception v7

    .line 1809
    :goto_5f
    if-eqz v4, :cond_57

    .line 1811
    :try_start_61
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_57

    .line 1812
    :catch_65
    move-exception v1

    .line 1813
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    .line 1809
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_6a
    move-exception v7

    :goto_6b
    if-eqz v4, :cond_70

    .line 1811
    :try_start_6d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 1814
    :cond_70
    :goto_70
    throw v7

    .line 1812
    :catch_71
    move-exception v1

    .line 1813
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    .line 1809
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_76
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_6b

    .line 1806
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_79
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_5f

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :cond_7c
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_57
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "suppressCoverUI"    # Z
    .param p2, "miniModeUI"    # Z

    .prologue
    .line 783
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 784
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 786
    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 787
    const-string/jumbo v1, "sender"

    const-string v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 789
    return-void
.end method

.method static setInputKeysDisable(Z)V
    .registers 6
    .param p0, "bool"    # Z

    .prologue
    .line 2257
    const-string/jumbo v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .line 2259
    .local v1, "im":Landroid/hardware/input/IInputManager;
    if-nez v1, :cond_26

    .line 2260
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :goto_25
    return-void

    .line 2264
    :cond_26
    :try_start_26
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_42} :catch_43

    goto :goto_25

    .line 2266
    :catch_43
    move-exception v0

    .line 2267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1048
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 292
    sput-boolean v0, mReboot:Z

    .line 293
    sput-boolean v0, mRebootSafeMode:Z

    .line 294
    invoke-static {p0, p1, v0}, shutdownInner(Landroid/content/Context;ZZ)V

    .line 295
    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 280
    sput-object p2, mRebootReason:Ljava/lang/String;

    .line 281
    invoke-static {p0, p1}, shutdown(Landroid/content/Context;Z)V

    .line 282
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .registers 11
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "systemRequest"    # Z

    .prologue
    const/4 v7, 0x0

    .line 313
    sget-object v5, sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 314
    :try_start_4
    sget-boolean v4, sIsStarted:Z

    if-eqz v4, :cond_11

    .line 315
    const-string v4, "ShutdownThread"

    const-string v6, "!@Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit v5

    .line 376
    :cond_10
    :goto_10
    return-void

    .line 319
    :cond_11
    sget-boolean v4, sIsConfirming:Z

    if-eqz v4, :cond_1e

    if-eqz p1, :cond_1e

    .line 320
    const-string v4, "ShutdownThread"

    const-string v6, "!@duplicate shutdown confirm dialog request."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1e
    const/4 v4, 0x1

    sput-boolean v4, sIsConfirming:Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_48

    .line 327
    :try_start_21
    sget-boolean v4, mReboot:Z

    if-eqz v4, :cond_29

    sget-object v4, mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_4c

    .line 328
    :cond_29
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 329
    .local v3, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_4c

    .line 330
    if-nez p2, :cond_4c

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 331
    const-string v4, "ShutdownThread"

    const-string v6, "Shutdown Disabled by Administrator"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v4, 0x0

    sput-boolean v4, sIsConfirming:Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_46} :catch_4b
    .catchall {:try_start_21 .. :try_end_46} :catchall_48

    .line 333
    :try_start_46
    monitor-exit v5

    goto :goto_10

    .line 340
    .end local v3    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    throw v4

    .line 337
    :catch_4b
    move-exception v4

    .line 340
    :cond_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_48

    .line 345
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v0, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 348
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, saveReasonforshutdown(Ljava/lang/Exception;)V

    .line 351
    if-eqz p1, :cond_9a

    const-string/jumbo v4, "silent.sec"

    sget-object v5, mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 352
    const-string v4, "ShutdownThread"

    const-string v5, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    sget-object v4, sConfirmDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_86

    .line 356
    sget-object v4, sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 359
    :cond_86
    invoke-static {v0}, createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    sput-object v4, sConfirmDialog:Landroid/app/Dialog;

    .line 360
    sget-object v4, sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 362
    sget-boolean v4, coverOpen:Z

    if-nez v4, :cond_10

    .line 363
    invoke-static {v0}, blackMiniModeBar(Landroid/content/Context;)V

    goto/16 :goto_10

    .line 369
    :cond_9a
    const-wide/16 v4, 0x32

    :try_start_9c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9f
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_9f} :catch_ab

    .line 373
    :goto_9f
    const-string v4, "ShutdownThread"

    const-string v5, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {v0, v7}, beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_10

    .line 370
    :catch_ab
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "ShutdownThread"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_9f
.end method

.method private shutdownRadios(I)V
    .registers 14
    .param p1, "timeout"    # I

    .prologue
    .line 1290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v4, v8, v10

    .line 1291
    .local v4, "endTime":J
    const/4 v0, 0x1

    new-array v7, v0, [Z

    .line 1292
    .local v7, "done":[Z
    sget-object v0, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1293
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/ShutdownThread$12;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V

    .line 1522
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1524
    int-to-long v8, p1

    :try_start_22
    invoke-virtual {v1, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_32

    .line 1527
    :goto_25
    const/4 v0, 0x0

    aget-boolean v0, v7, v0

    if-nez v0, :cond_31

    .line 1528
    const-string v0, "ShutdownThread"

    const-string v2, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_31
    return-void

    .line 1525
    :catch_32
    move-exception v0

    goto :goto_25
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1065
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1066
    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x1040108

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1067
    const v1, 0x1040112

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1068
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1069
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1070
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1072
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1073
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1075
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1076
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1077
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1079
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1080
    return-void
.end method

.method private static startRecoveryDialog(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1009
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v0, "pd":Landroid/app/ProgressDialog;
    sget-boolean v1, mRebootUpdate:Z

    if-eqz v1, :cond_45

    .line 1024
    const v1, 0x104010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1025
    const v1, 0x104010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1027
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1028
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1030
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1031
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1039
    :goto_31
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1040
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1042
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1044
    sget-object v1, sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v0, v1, mProgressDialog:Landroid/app/ProgressDialog;

    .line 1045
    return-void

    .line 1034
    :cond_45
    const v1, 0x1040110

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1035
    const v1, 0x1040111

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1037
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_31
.end method

.method private startShutdownDialog()V
    .registers 5

    .prologue
    .line 970
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 971
    .local v0, "continueSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    const-string v2, "ShutdownThread"

    const-string v3, "ShutdownDialog start wait"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :try_start_17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 984
    :goto_1a
    return-void

    .line 981
    :catch_1b
    move-exception v1

    .line 982
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string v3, "ShutdownDialog start wait fail"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 928
    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 929
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown animation will start"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 932
    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 933
    const-string/jumbo v1, "silent.sec"

    sget-object v2, mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 934
    sget-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    .line 936
    :cond_34
    sget-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    .line 937
    sget-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 943
    :goto_3e
    const/4 v0, 0x0

    .line 964
    .local v0, "dualScreenContext":Landroid/content/Context;
    sget-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v1, :cond_48

    .line 965
    sget-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    .line 967
    :cond_48
    return-void

    .line 939
    .end local v0    # "dualScreenContext":Landroid/content/Context;
    :cond_49
    const/4 v1, 0x0

    sput-object v1, dlgAnim:Lcom/android/server/power/ShutdownDialog;

    .line 940
    invoke-static {p0}, startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_3e
.end method

.method private static startShutdownThread()V
    .registers 6

    .prologue
    .line 987
    sget-object v0, sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    iput-object v1, v0, mHandler:Landroid/os/Handler;

    .line 989
    sget-object v0, sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, start()V

    .line 991
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "ShutdownThread"

    const-string v5, "Android will be shutdown"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 995
    sget-object v0, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, mContext:Landroid/content/Context;

    invoke-static {v0}, isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 996
    sget-object v0, sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1005
    :cond_34
    return-void
.end method

.method private static syncQcRmtStorage()V
    .registers 6

    .prologue
    .line 1697
    const/16 v0, 0x64

    .line 1698
    .local v0, "SLEEP_SIZE":I
    const-string/jumbo v3, "storage.efs_sync.done"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1699
    .local v2, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_43

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1700
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@rmtStorage sync not yet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const-wide/16 v4, 0x64

    :try_start_34
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_41

    .line 1705
    :goto_37
    const-string/jumbo v3, "storage.efs_sync.done"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1699
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1703
    :catch_41
    move-exception v3

    goto :goto_37

    .line 1707
    :cond_43
    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 299
    sput-boolean v1, mReboot:Z

    .line 300
    sput-boolean v1, mRebootSafeMode:Z

    .line 302
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, shutdownInner(Landroid/content/Context;ZZ)V

    .line 303
    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2305
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2306
    .local v0, "am":Landroid/media/AudioManager;
    const/16 v6, 0x11

    new-array v3, v6, [D

    fill-array-data v3, :array_34

    .line 2308
    .local v3, "volumetable":[D
    if-eqz v0, :cond_30

    .line 2309
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2310
    .local v2, "systemVolume":I
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2311
    .local v1, "musicVolume":I
    const/16 v6, 0xf

    if-le v1, v6, :cond_21

    const/16 v1, 0xf

    .line 2313
    :cond_21
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2317
    .end local v1    # "musicVolume":I
    .end local v2    # "systemVolume":I
    .local v4, "ttsVolume":D
    :goto_23
    new-instance v6, Landroid/speech/tts/TextToSpeech;

    new-instance v7, Lcom/android/server/power/ShutdownThread$14;

    invoke-direct {v7, v4, v5, p1}, Lcom/android/server/power/ShutdownThread$14;-><init>(DLjava/lang/String;)V

    invoke-direct {v6, p0, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v6, mTts:Landroid/speech/tts/TextToSpeech;

    .line 2333
    return-void

    .line 2315
    .end local v4    # "ttsVolume":D
    :cond_30
    const-wide/16 v4, 0x0

    .restart local v4    # "ttsVolume":D
    goto :goto_23

    .line 2306
    nop

    :array_34
    .array-data 8
        0x0
        0x3f7cac083126e979L    # 0.007
        0x3f847ae147ae147bL    # 0.01
        0x3f916872b020c49cL    # 0.017
        0x3f9999999999999aL    # 0.025
        0x3f9eb851eb851eb8L    # 0.03
        0x3fa1eb851eb851ecL    # 0.035
        0x3fa810624dd2f1aaL    # 0.047
        0x3faeb851eb851eb8L    # 0.06
        0x3fb4395810624dd3L    # 0.079
        0x3fb999999999999aL    # 0.1
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc47ae147ae147bL    # 0.16
        0x3fd3333333333333L    # 0.3
        0x3fe6666666666666L    # 0.7
        0x0
        0x401c000000000000L    # 7.0
    .end array-data
.end method

.method private uncrypt()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1603
    const-string v4, "ShutdownThread"

    const-string v5, "Calling uncrypt and monitoring the progress..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 1606
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    .line 1607
    new-instance v2, Lcom/android/server/power/ShutdownThread$13;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/ShutdownThread$13;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .line 1666
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1669
    const-wide/32 v4, 0xdbba0

    :try_start_18
    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_44

    .line 1673
    :goto_1b
    aget-boolean v4, v0, v6

    if-nez v4, :cond_26

    .line 1674
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for uncrypt."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_26
    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "uncrypt finished."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x104010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1680
    .local v1, "msg":Ljava/lang/CharSequence;
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v5, 0x64

    invoke-direct {v4, v5, v1}, setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1681
    sget-object v4, sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v4}, startShutdownDialog()V

    .line 1682
    return-void

    .line 1670
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :catch_44
    move-exception v3

    .line 1671
    .local v3, "unused":Ljava/lang/InterruptedException;
    const-string v4, "ShutdownThread"

    const-string v5, "Thread join error"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1b
.end method

.method private static waitIfTimeoutDumpWorking()V
    .registers 5

    .prologue
    .line 1750
    :try_start_0
    sget-object v1, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1751
    const-string v1, "ShutdownThread"

    const-string v2, "!@Wait for dumpstate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    sget-object v1, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1753
    const-string v1, "ShutdownThread"

    const-string v2, "!@Dumpstate finished "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_22} :catch_30
    .catchall {:try_start_0 .. :try_end_22} :catchall_3f

    .line 1761
    :cond_22
    :goto_22
    sget-object v1, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1763
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_27
    return-void

    .line 1755
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_28
    :try_start_28
    const-string v1, "ShutdownThread"

    const-string v2, "!@Dumpstate timeouted!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2f} :catch_30
    .catchall {:try_start_28 .. :try_end_2f} :catchall_3f

    goto :goto_22

    .line 1758
    :catch_30
    move-exception v0

    .line 1759
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_31
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3f

    .line 1761
    sget-object v1, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_27

    :catchall_3f
    move-exception v1

    sget-object v2, delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 1083
    iget-object v1, p0, mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1084
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mActionDone:Z

    .line 1085
    iget-object v0, p0, mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1086
    monitor-exit v1

    .line 1087
    return-void

    .line 1086
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method actionDoneMount()V
    .registers 3

    .prologue
    .line 1090
    iget-object v1, p0, mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    .line 1091
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mActionDoneMount:Z

    .line 1092
    iget-object v0, p0, mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1093
    monitor-exit v1

    .line 1094
    return-void

    .line 1093
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 31

    .prologue
    .line 1101
    # invokes: Lcom/android/server/power/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->access$1500()V

    .line 1102
    new-instance v6, Lcom/android/server/power/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1115
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, mReboot:Z

    if-eqz v2, :cond_125

    const-string v2, "1"

    :goto_15
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_129

    sget-object v2, mRebootReason:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1116
    .local v24, "reason":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x5b

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1117
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    sget-boolean v2, mRebootSafeMode:Z

    if-eqz v2, :cond_4c

    .line 1125
    const-string/jumbo v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_4c
    const-string v2, "ShutdownThread"

    const-string v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mActionDone:Z

    .line 1132
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1138
    sget-boolean v2, BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_84

    const-string/jumbo v2, "no power"

    sget-object v4, mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12d

    .line 1139
    :cond_84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v18, v4, v8

    .line 1144
    .local v18, "endTime":J
    :goto_8c
    move-object/from16 v0, p0

    iget-object v4, v0, mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1145
    :goto_91
    :try_start_91
    move-object/from16 v0, p0

    iget-boolean v2, v0, mActionDone:Z

    if-nez v2, :cond_aa

    .line 1146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v18, v8

    .line 1147
    .local v12, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_138

    .line 1148
    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v12    # "delay":J
    :cond_aa
    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_16c

    .line 1161
    sget-boolean v2, mRebootUpdate:Z

    if-eqz v2, :cond_b6

    .line 1162
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1164
    :cond_b6
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 1167
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_ce

    .line 1169
    const/16 v2, 0x2710

    :try_start_cb
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ce} :catch_2f3

    .line 1173
    :cond_ce
    :goto_ce
    sget-boolean v2, mRebootUpdate:Z

    if-eqz v2, :cond_d9

    .line 1174
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1177
    :cond_d9
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/PackageManagerService;

    .line 1181
    .local v22, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v22, :cond_ee

    .line 1182
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 1184
    :cond_ee
    sget-boolean v2, mRebootUpdate:Z

    if-eqz v2, :cond_f9

    .line 1185
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1189
    :cond_f9
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, shutdownRadios(I)V

    .line 1190
    sget-boolean v2, mRebootUpdate:Z

    if-eqz v2, :cond_10c

    .line 1191
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1194
    :cond_10c
    sget-boolean v2, BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_16f

    .line 1195
    new-instance v15, Ljava/io/File;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16f

    .line 1197
    const-string v2, "ShutdownThread"

    const-string v4, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v15    # "f":Ljava/io/File;
    :goto_124
    return-void

    .line 1115
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v18    # "endTime":J
    .end local v22    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v24    # "reason":Ljava/lang/String;
    :cond_125
    const-string v2, "0"

    goto/16 :goto_15

    :cond_129
    const-string v2, ""

    goto/16 :goto_1f

    .line 1141
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v24    # "reason":Ljava/lang/String;
    :cond_12d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0x13880

    add-long v18, v4, v8

    .restart local v18    # "endTime":J
    goto/16 :goto_8c

    .line 1150
    .restart local v12    # "delay":J
    :cond_138
    :try_start_138
    sget-boolean v2, mRebootUpdate:Z

    if-eqz v2, :cond_15a

    .line 1151
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v28

    const-wide v28, 0x40c3880000000000L    # 10000.0

    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 1153
    .local v27, "status":I
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_15a
    .catchall {:try_start_138 .. :try_end_15a} :catchall_16c

    .line 1156
    .end local v27    # "status":I
    :cond_15a
    :try_start_15a
    move-object/from16 v0, p0

    iget-object v2, v0, mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_167
    .catch Ljava/lang/InterruptedException; {:try_start_15a .. :try_end_167} :catch_169
    .catchall {:try_start_15a .. :try_end_167} :catchall_16c

    goto/16 :goto_91

    .line 1157
    :catch_169
    move-exception v2

    goto/16 :goto_91

    .line 1160
    .end local v12    # "delay":J
    :catchall_16c
    move-exception v2

    :try_start_16d
    monitor-exit v4
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    throw v2

    .line 1203
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v22    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_16f
    new-instance v21, Lcom/android/server/power/ShutdownThread$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1210
    .local v21, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mActionDone:Z

    .line 1214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x7530

    add-long v16, v4, v8

    .line 1215
    .local v16, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1217
    :try_start_191
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v20

    .line 1219
    .local v20, "mount":Landroid/os/storage/IMountService;
    new-instance v15, Ljava/io/File;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1220
    .restart local v15    # "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_298

    .line 1221
    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService shutdown skip"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mActionDoneMount:Z
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1b5} :catch_29f
    .catchall {:try_start_191 .. :try_end_1b5} :catchall_2a9

    .line 1231
    .end local v15    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    :goto_1b5
    :try_start_1b5
    move-object/from16 v0, p0

    iget-boolean v2, v0, mActionDoneMount:Z

    if-nez v2, :cond_1f4

    .line 1232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v16, v8

    .line 1233
    .restart local v12    # "delay":J
    const-string v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_2b5

    .line 1235
    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    .end local v12    # "delay":J
    :cond_1f4
    monitor-exit v4
    :try_end_1f5
    .catchall {:try_start_1b5 .. :try_end_1f5} :catchall_2a9

    .line 1251
    sget-boolean v2, mRebootUpdate:Z

    if-eqz v2, :cond_204

    .line 1252
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1254
    invoke-direct/range {p0 .. p0}, uncrypt()V

    .line 1257
    :cond_204
    const-string/jumbo v2, "ro.rebootchargermode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1258
    .local v26, "sRebootCharger":Ljava/lang/String;
    const-string/jumbo v2, "sys.property_forcedshutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1260
    .local v25, "sForcedShutdown":Ljava/lang/String;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Check power connected"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-direct/range {p0 .. p0}, isPoweredPlugged()Z

    move-result v23

    .line 1262
    .local v23, "powerConnected":Z
    const-string/jumbo v2, "true"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23f

    sget-boolean v2, mReboot:Z

    if-nez v2, :cond_23f

    const-string v2, "1"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23f

    if-eqz v23, :cond_23f

    .line 1266
    const/4 v2, 0x1

    sput-boolean v2, mReboot:Z

    .line 1267
    const-string v2, "charging"

    sput-object v2, mRebootReason:Ljava/lang/String;

    .line 1271
    :cond_23f
    const-string/jumbo v2, "mrvl"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_255

    .line 1272
    const-string/jumbo v2, "power_off=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1274
    :cond_255
    const-string v4, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, mReboot:Z

    if-eqz v2, :cond_2ea

    const-string/jumbo v2, "reboot"

    :goto_269
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " requested "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_2ef

    sget-object v2, mRebootReason:Ljava/lang/String;

    :goto_280
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-boolean v4, mReboot:Z

    sget-object v5, mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_124

    .line 1223
    .end local v23    # "powerConnected":Z
    .end local v25    # "sForcedShutdown":Ljava/lang/String;
    .end local v26    # "sRebootCharger":Ljava/lang/String;
    .restart local v15    # "f":Ljava/io/File;
    .restart local v20    # "mount":Landroid/os/storage/IMountService;
    :cond_298
    if-eqz v20, :cond_2ac

    .line 1224
    :try_start_29a
    invoke-interface/range {v20 .. v21}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_29d} :catch_29f
    .catchall {:try_start_29a .. :try_end_29d} :catchall_2a9

    goto/16 :goto_1b5

    .line 1228
    .end local v15    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    :catch_29f
    move-exception v14

    .line 1229
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2a0
    const-string v2, "ShutdownThread"

    const-string v5, "!@Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_1b5

    .line 1250
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_2a9
    move-exception v2

    monitor-exit v4
    :try_end_2ab
    .catchall {:try_start_2a0 .. :try_end_2ab} :catchall_2a9

    throw v2

    .line 1226
    .restart local v15    # "f":Ljava/io/File;
    .restart local v20    # "mount":Landroid/os/storage/IMountService;
    :cond_2ac
    :try_start_2ac
    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2b3} :catch_29f
    .catchall {:try_start_2ac .. :try_end_2b3} :catchall_2a9

    goto/16 :goto_1b5

    .line 1238
    .end local v15    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    .restart local v12    # "delay":J
    :cond_2b5
    const-wide/16 v8, 0x7530

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v28

    const-wide v28, 0x40dd4c0000000000L    # 30000.0

    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 1241
    .restart local v27    # "status":I
    add-int/lit8 v27, v27, 0x12

    .line 1242
    :try_start_2cd
    sget-object v2, sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_2d5
    .catchall {:try_start_2cd .. :try_end_2d5} :catchall_2a9

    .line 1245
    :try_start_2d5
    move-object/from16 v0, p0

    iget-object v2, v0, mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2e2
    .catch Ljava/lang/InterruptedException; {:try_start_2d5 .. :try_end_2e2} :catch_2e4
    .catchall {:try_start_2d5 .. :try_end_2e2} :catchall_2a9

    goto/16 :goto_1b5

    .line 1246
    :catch_2e4
    move-exception v14

    .line 1247
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_2e5
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2e8
    .catchall {:try_start_2e5 .. :try_end_2e8} :catchall_2a9

    goto/16 :goto_1b5

    .line 1274
    .end local v12    # "delay":J
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v27    # "status":I
    .restart local v23    # "powerConnected":Z
    .restart local v25    # "sForcedShutdown":Ljava/lang/String;
    .restart local v26    # "sRebootCharger":Ljava/lang/String;
    :cond_2ea
    const-string/jumbo v2, "shutdown"

    goto/16 :goto_269

    :cond_2ef
    const-string/jumbo v2, "null"

    goto :goto_280

    .line 1170
    .end local v16    # "endShutTime":J
    .end local v21    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v22    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v23    # "powerConnected":Z
    .end local v25    # "sForcedShutdown":Ljava/lang/String;
    .end local v26    # "sRebootCharger":Ljava/lang/String;
    :catch_2f3
    move-exception v2

    goto/16 :goto_ce
.end method
