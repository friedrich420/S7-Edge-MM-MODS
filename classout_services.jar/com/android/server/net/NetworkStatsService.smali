.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final LOGV:Z = true

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static final mPerformPoll:Ljava/lang/Object;


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mGlobalAlertBytes:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIsDuringVideoCall:Z

.field private mIsVideoCall:Z

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoCallReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoCallStats:Landroid/net/NetworkStats;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mPerformPoll:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;

    .prologue
    .line 271
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    invoke-static {}, getDefaultSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;
    .param p4, "time"    # Landroid/util/TrustedTime;
    .param p5, "systemDir"    # Ljava/io/File;
    .param p6, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 226
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mStatsLock:Ljava/lang/Object;

    .line 229
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, mActiveIfaces:Landroid/util/ArrayMap;

    .line 231
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 235
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, mMobileIfaces:[Ljava/lang/String;

    .line 237
    new-instance v2, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v2, p0, mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 249
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 252
    new-instance v2, Landroid/net/NetworkStats;

    const/16 v3, 0xa

    invoke-direct {v2, v6, v7, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, mUidOperations:Landroid/net/NetworkStats;

    .line 255
    new-instance v2, Landroid/net/NetworkStats;

    invoke-direct {v2, v6, v7, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, mVideoCallStats:Landroid/net/NetworkStats;

    .line 256
    iput-boolean v4, p0, mIsDuringVideoCall:Z

    .line 261
    iput-boolean v4, p0, mIsVideoCall:Z

    .line 266
    const-wide/32 v2, 0x200000

    iput-wide v2, p0, mPersistThreshold:J

    .line 828
    new-instance v2, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    .line 842
    new-instance v2, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    new-instance v2, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 870
    new-instance v2, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 890
    new-instance v2, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 910
    new-instance v2, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 926
    new-instance v2, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1553
    new-instance v2, Lcom/android/server/net/NetworkStatsService$9;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$9;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, mHandlerCallback:Landroid/os/Handler$Callback;

    .line 282
    const-string/jumbo v2, "missing Context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 283
    const-string/jumbo v2, "missing INetworkManagementService"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    .line 284
    const-string/jumbo v2, "missing TrustedTime"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, mTime:Landroid/util/TrustedTime;

    .line 285
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "missing TelephonyManager"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, mTeleManager:Landroid/telephony/TelephonyManager;

    .line 286
    const-string/jumbo v2, "missing NetworkStatsSettings"

    invoke-static {p6, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v2, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 287
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 289
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 291
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v2, "NetworkStats"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 293
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 295
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 297
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, mSystemDir:Ljava/io/File;

    .line 298
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netstats"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, mBaseDir:Ljava/io/File;

    .line 299
    iget-object v2, p0, mBaseDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 300
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-boolean v0, p0, mIsVideoCall:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/net/NetworkStatsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, mIsVideoCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, performPoll(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    invoke-direct {p0}, registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-boolean v0, p0, mIsDuringVideoCall:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/net/NetworkStatsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, mIsDuringVideoCall:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    invoke-direct {p0}, registerPollAlarmLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkStatsService;[I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [I

    .prologue
    .line 151
    invoke-direct {p0, p1}, removeUidsLocked([I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, removeUserLocked(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    invoke-direct {p0}, shutdownLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsRecorder;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Lcom/android/server/net/NetworkStatsRecorder;

    .prologue
    .line 151
    iput-object p1, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    invoke-direct {p0}, updateIfaces()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "x3"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 151
    iget-object v0, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsRecorder;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Lcom/android/server/net/NetworkStatsRecorder;

    .prologue
    .line 151
    iput-object p1, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, enforcePermissionForManagedAdmin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1}, enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 151
    invoke-direct/range {p0 .. p5}, internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private assertBandwidthControlEnabled()V
    .registers 3

    .prologue
    .line 1583
    invoke-direct {p0}, isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1586
    :cond_e
    return-void
.end method

.method private bootstrapStatsLocked()V
    .registers 7

    .prologue
    .line 1115
    iget-object v3, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 1119
    .local v0, "currentTime":J
    :goto_e
    :try_start_e
    invoke-direct {p0, v0, v1}, recordSnapshotLocked(J)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_11} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_32

    .line 1125
    :goto_11
    return-void

    .line 1115
    .end local v0    # "currentTime":J
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_e

    .line 1120
    .restart local v0    # "currentTime":J
    :catch_17
    move-exception v2

    .line 1121
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "problem reading network stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1122
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_32
    move-exception v3

    goto :goto_11
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .prologue
    .line 371
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    .line 373
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v1, Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v2, p0, mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v3, v8

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private combineNetworkStatsVideoCall(II)V
    .registers 7
    .param p1, "sport"    # I
    .param p2, "dport"    # I

    .prologue
    .line 1503
    :try_start_0
    invoke-virtual {p0, p1, p2}, getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1504
    .local v1, "netStats":Landroid/net/NetworkStats;
    iget-object v2, p0, mVideoCallStats:Landroid/net/NetworkStats;

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1508
    .end local v1    # "netStats":Landroid/net/NetworkStats;
    :goto_9
    return-void

    .line 1505
    :catch_a
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NetworkStats"

    const-string v3, "Remote exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pollOnCreate"    # Z

    .prologue
    .line 482
    invoke-direct {p0}, assertBandwidthControlEnabled()V

    .line 484
    if-eqz p2, :cond_10

    .line 485
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 487
    .local v0, "ident":J
    const/4 v2, 0x3

    :try_start_a
    invoke-direct {p0, v2}, performPoll(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_16

    .line 489
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    .end local v0    # "ident":J
    :cond_10
    new-instance v2, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    return-object v2

    .line 489
    .restart local v0    # "ident":J
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-direct {p0, p1}, hasAppOpsPermission(Ljava/lang/String;)Z

    move-result v0

    .line 644
    .local v0, "appOpsAllow":Z
    if-nez v0, :cond_f

    .line 645
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_f
    return-void
.end method

.method private enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-direct {p0, p1}, hasAppOpsPermission(Ljava/lang/String;)Z

    move-result v2

    .line 625
    .local v2, "hasPermission":Z
    if-nez v2, :cond_1c

    .line 627
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 628
    .local v0, "callingUid":I
    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 632
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_1c

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 640
    .end local v0    # "callingUid":I
    .end local v1    # "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    :cond_1b
    :goto_1b
    return-void

    .line 637
    :cond_1c
    if-nez v2, :cond_1b

    .line 638
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v5, "NetworkStats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap",
            "<TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1029
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_10

    .line 1030
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    .end local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1031
    .restart local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    :cond_10
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1546
    :try_start_0
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1549
    :goto_6
    return-object v1

    .line 1547
    :catch_7
    move-exception v0

    .line 1548
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    const-string/jumbo v2, "problem reading network stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1549
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_6
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1413
    iget-object v3, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1416
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1418
    .local v0, "tetherSnapshot":Landroid/net/NetworkStats;
    iget-boolean v3, p0, mIsDuringVideoCall:Z

    if-ne v3, v6, :cond_21

    .line 1419
    invoke-virtual {p0, v5, v5}, getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1420
    .local v2, "videoCallSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1426
    .end local v2    # "videoCallSnapshot":Landroid/net/NetworkStats;
    :goto_18
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1427
    iget-object v3, p0, mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1429
    return-object v1

    .line 1422
    :cond_21
    iget-object v3, p0, mVideoCallStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1423
    new-instance v3, Landroid/net/NetworkStats;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v3, p0, mVideoCallStats:Landroid/net/NetworkStats;

    goto :goto_18
.end method

.method private hasAppOpsPermission(Ljava/lang/String;)Z
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 604
    .local v2, "callingUid":I
    const/4 v1, 0x0

    .line 605
    .local v1, "appOpsAllow":Z
    if-eqz p1, :cond_2a

    .line 606
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "appops"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 609
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v7, 0x2b

    invoke-virtual {v0, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    .line 611
    .local v3, "mode":I
    const/4 v7, 0x3

    if-ne v3, v7, :cond_27

    .line 614
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    .line 616
    .local v4, "permissionCheck":I
    if-nez v4, :cond_2b

    move v1, v5

    .line 618
    .end local v4    # "permissionCheck":I
    :cond_27
    :goto_27
    if-nez v3, :cond_2d

    move v1, v5

    .line 620
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    :cond_2a
    :goto_2a
    return v1

    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v3    # "mode":I
    .restart local v4    # "permissionCheck":I
    :cond_2b
    move v1, v6

    .line 616
    goto :goto_27

    .end local v4    # "permissionCheck":I
    :cond_2d
    move v1, v6

    .line 618
    goto :goto_2a
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .registers 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    const/4 v2, -0x1

    .line 671
    iget-object v0, p0, mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_7

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v4, 0x0

    move-object v1, p1

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_6
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 658
    iget-object v0, p0, mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_6

    .line 659
    const/4 v0, 0x0

    .line 661
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_5
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    .prologue
    .line 1589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1591
    .local v2, "token":J
    :try_start_4
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_e
    .catchall {:try_start_4 .. :try_end_9} :catchall_14

    move-result v1

    .line 1596
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_d
    return v1

    .line 1592
    :catch_e
    move-exception v0

    .line 1594
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1596
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_14
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isNaGsm()Z
    .registers 2

    .prologue
    .line 1146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, isNaGsm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNaGsm(Ljava/lang/String;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1149
    if-eqz p1, :cond_b

    const-string v1, "ALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1150
    :cond_b
    const-string v1, "ATT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "TMO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "MTR"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "AIO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1170
    :cond_33
    :goto_33
    return v0

    .line 1156
    :cond_34
    const-string v1, "ATT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1157
    const-string v1, "ATT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "AIO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1170
    :cond_50
    const/4 v0, 0x0

    goto :goto_33

    .line 1161
    :cond_52
    const-string v1, "TMO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1162
    const-string v1, "TMO"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_33

    .line 1165
    :cond_65
    const-string v1, "MTR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1166
    const-string v1, "MTR"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_33
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .registers 5

    .prologue
    .line 408
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "netstats.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 409
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 410
    iget-object v2, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 411
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 414
    :cond_18
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v2, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "netstats_xt.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 416
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 419
    :cond_2b
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v2, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "netstats_uid.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 421
    iget-object v2, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 422
    iget-object v2, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_48} :catch_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_48} :catch_53

    .line 430
    .end local v1    # "file":Ljava/io/File;
    :cond_48
    :goto_48
    return-void

    .line 425
    :catch_49
    move-exception v0

    .line 426
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NetworkStats"

    const-string/jumbo v3, "problem during legacy upgrade"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 427
    .end local v0    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "NetworkStats"

    const-string/jumbo v3, "problem during legacy upgrade"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48
.end method

.method private performPoll(I)V
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 1129
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 1130
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 1133
    :cond_15
    iget-object v1, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1134
    :try_start_18
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2e

    .line 1137
    :try_start_1d
    invoke-direct {p0, p1}, performPollLocked(I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    .line 1139
    :try_start_20
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1141
    monitor-exit v1

    .line 1142
    return-void

    .line 1139
    :catchall_27
    move-exception v0

    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1141
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private performPollLocked(I)V
    .registers 16
    .param p1, "flags"    # I

    .prologue
    .line 1179
    iget-boolean v11, p0, mSystemReady:Z

    if-nez v11, :cond_5

    .line 1234
    :goto_4
    return-void

    .line 1180
    :cond_5
    const-string v11, "NetworkStats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "performPollLocked(flags=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1184
    .local v8, "startRealtime":J
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_aa

    const/4 v6, 0x1

    .line 1185
    .local v6, "persistNetwork":Z
    :goto_31
    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_ac

    const/4 v7, 0x1

    .line 1186
    .local v7, "persistUid":Z
    :goto_36
    and-int/lit16 v11, p1, 0x100

    if-eqz v11, :cond_ae

    const/4 v5, 0x1

    .line 1189
    .local v5, "persistForce":Z
    :goto_3b
    iget-object v11, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v11}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v11

    if-eqz v11, :cond_b0

    iget-object v11, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v11}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 1193
    .local v0, "currentTime":J
    :goto_49
    :try_start_49
    invoke-direct {p0, v0, v1}, recordSnapshotLocked(J)V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4c} :catch_b5
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_c0

    .line 1203
    if-eqz v5, :cond_c3

    .line 1204
    iget-object v11, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1205
    iget-object v11, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1206
    iget-object v11, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1207
    iget-object v11, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1220
    :cond_62
    :goto_62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v12, v8

    .line 1221
    .local v2, "duration":J
    const-string v11, "NetworkStats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "performPollLocked() took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v11, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v11}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v11

    if-eqz v11, :cond_93

    .line 1226
    invoke-direct {p0}, performSampleLocked()V

    .line 1230
    :cond_93
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v10, "updatedIntent":Landroid/content/Intent;
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1232
    iget-object v11, p0, mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1184
    .end local v0    # "currentTime":J
    .end local v2    # "duration":J
    .end local v5    # "persistForce":Z
    .end local v6    # "persistNetwork":Z
    .end local v7    # "persistUid":Z
    .end local v10    # "updatedIntent":Landroid/content/Intent;
    :cond_aa
    const/4 v6, 0x0

    goto :goto_31

    .line 1185
    .restart local v6    # "persistNetwork":Z
    :cond_ac
    const/4 v7, 0x0

    goto :goto_36

    .line 1186
    .restart local v7    # "persistUid":Z
    :cond_ae
    const/4 v5, 0x0

    goto :goto_3b

    .line 1189
    .restart local v5    # "persistForce":Z
    :cond_b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_49

    .line 1194
    .restart local v0    # "currentTime":J
    :catch_b5
    move-exception v4

    .line 1195
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v11, "NetworkStats"

    const-string/jumbo v12, "problem reading network stats"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1197
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_c0
    move-exception v4

    .line 1199
    .local v4, "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 1209
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_c3
    if-eqz v6, :cond_cf

    .line 1210
    iget-object v11, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1211
    iget-object v11, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1213
    :cond_cf
    if-eqz v7, :cond_62

    .line 1214
    iget-object v11, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1215
    iget-object v11, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v11, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto :goto_62
.end method

.method private performSampleLocked()V
    .registers 33

    .prologue
    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_d1

    move-object/from16 v0, p0

    iget-object v2, v0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v26

    .line 1249
    .local v26, "trustedTime":J
    :goto_12
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1250
    .local v29, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1251
    .local v28, "devTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1252
    .local v31, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1254
    .local v30, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1261
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1266
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1271
    return-void

    .line 1241
    .end local v26    # "trustedTime":J
    .end local v28    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v29    # "template":Landroid/net/NetworkTemplate;
    .end local v30    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .end local v31    # "xtTotal":Landroid/net/NetworkStats$Entry;
    :cond_d1
    const-wide/16 v26, -0x1

    goto/16 :goto_12
.end method

.method private recordSnapshotLocked(J)V
    .registers 22
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-direct/range {p0 .. p0}, getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v16

    .line 1041
    .local v16, "uidSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v18

    .line 1042
    .local v18, "xtSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v3

    .line 1044
    .local v3, "devSnapshot":Landroid/net/NetworkStats;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1045
    .local v10, "configNetworkTypeCapability":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    if-eqz v10, :cond_34

    const-string v2, "VZW-"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_34
    invoke-direct/range {p0 .. p0}, isNaGsm()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1049
    :cond_3a
    const/4 v2, 0x0

    const/16 v4, -0x64

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    move-result-object v11

    .line 1050
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, -0x1

    iput v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, mConnManager:Landroid/net/IConnectivityManager;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 1052
    .local v15, "lp":Landroid/net/LinkProperties;
    if-eqz v15, :cond_113

    .line 1053
    const-string v2, "NetworkStats"

    const-string v4, "LinkProperties is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1055
    .local v12, "iface":Ljava/lang/String;
    if-eqz v12, :cond_b1

    .line 1056
    iput-object v12, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1075
    :cond_60
    :goto_60
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1076
    invoke-virtual {v3, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1103
    .end local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v12    # "iface":Ljava/lang/String;
    .end local v15    # "lp":Landroid/net/LinkProperties;
    :cond_68
    :goto_68
    move-object/from16 v0, p0

    iget-object v2, v0, mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v17

    .line 1104
    .local v17, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v7, 0x0

    move-object/from16 v5, v18

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1108
    return-void

    .line 1058
    .end local v17    # "vpnArray":[Lcom/android/internal/net/VpnInfo;
    .restart local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v12    # "iface":Ljava/lang/String;
    .restart local v15    # "lp":Landroid/net/LinkProperties;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v2, v0, mConnManager:Landroid/net/IConnectivityManager;

    const/16 v4, 0xb

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 1059
    if-eqz v15, :cond_60

    .line 1060
    const-string v2, "NetworkStats"

    const-string v4, "LinkProperties is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1063
    if-eqz v12, :cond_60

    .line 1064
    const-string v2, "VZW-"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1071
    :goto_f0
    iput-object v12, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    goto/16 :goto_60

    .line 1069
    :cond_f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_f0

    .line 1078
    .end local v12    # "iface":Ljava/lang/String;
    :cond_113
    move-object/from16 v0, p0

    iget-object v2, v0, mConnManager:Landroid/net/IConnectivityManager;

    const/16 v4, 0xb

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v14

    .line 1079
    .local v14, "ims_lp":Landroid/net/LinkProperties;
    if-eqz v14, :cond_154

    .line 1080
    const-string v2, "NetworkStats"

    const-string v4, "IMS LinkProperties is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    .line 1083
    .local v13, "ims_iface":Ljava/lang/String;
    if-eqz v13, :cond_154

    .line 1084
    const-string v2, "VZW-"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1091
    :goto_152
    iput-object v13, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1094
    .end local v13    # "ims_iface":Ljava/lang/String;
    :cond_154
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1095
    invoke-virtual {v3, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto/16 :goto_68

    .line 1089
    .restart local v13    # "ims_iface":Ljava/lang/String;
    :cond_15e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_152
.end method

.method private registerGlobalAlert()V
    .registers 5

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v2, p0, mGlobalAlertBytes:J

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_23

    .line 469
    :goto_7
    return-void

    .line 464
    :catch_8
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem registering for global alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 466
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_23
    move-exception v1

    goto :goto_7
.end method

.method private registerPollAlarmLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 437
    iget-object v2, p0, mPollIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_d

    .line 438
    iget-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 441
    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mPollIntent:Landroid/app/PendingIntent;

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 447
    .local v0, "currentRealtime":J
    iget-boolean v2, p0, mIsDuringVideoCall:Z

    if-ne v2, v5, :cond_42

    .line 448
    const-string v2, "NetworkStats"

    const-string/jumbo v3, "registerPollAlarmLocked() - repeats as 5000"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    sget-object v3, mPerformPoll:Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 450
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    sget-object v4, mPerformPoll:Ljava/lang/Object;

    invoke-virtual {v3, v5, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 454
    :cond_42
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .registers 9
    .param p1, "uids"    # [I

    .prologue
    .line 1277
    const-string v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeUidsLocked() for UIDs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v4, 0x3

    invoke-direct {p0, v4}, performPollLocked(I)V

    .line 1282
    iget-object v4, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1283
    iget-object v4, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1286
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2e
    if-ge v1, v2, :cond_38

    aget v3, v0, v1

    .line 1287
    .local v3, "uid":I
    invoke-static {v3}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1289
    .end local v3    # "uid":I
    :cond_38
    return-void
.end method

.method private removeUserLocked(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1295
    const-string v5, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUserLocked() for userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 1299
    .local v4, "uids":[I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2200

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1301
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1302
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1303
    .local v3, "uid":I
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 1304
    goto :goto_2c

    .line 1306
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    :cond_43
    invoke-direct {p0, v4}, removeUidsLocked([I)V

    .line 1307
    return-void
.end method

.method private shutdownLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 379
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    iget-object v2, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 390
    .local v0, "currentTime":J
    :goto_32
    iget-object v2, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 391
    iget-object v2, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 392
    iget-object v2, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 393
    iget-object v2, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 395
    iput-object v4, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 396
    iput-object v4, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 397
    iput-object v4, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 398
    iput-object v4, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 400
    iput-object v4, p0, mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 402
    const/4 v2, 0x0

    iput-boolean v2, p0, mSystemReady:Z

    .line 403
    return-void

    .line 386
    .end local v0    # "currentTime":J
    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_32
.end method

.method private updateIfaces()V
    .registers 4

    .prologue
    .line 945
    iget-object v1, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 946
    :try_start_3
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    .line 948
    :try_start_8
    invoke-direct {p0}, updateIfacesLocked()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_12

    .line 950
    :try_start_b
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 952
    monitor-exit v1

    .line 953
    return-void

    .line 950
    :catchall_12
    move-exception v0

    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 952
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private updateIfacesLocked()V
    .registers 20

    .prologue
    .line 962
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 1024
    :goto_8
    return-void

    .line 963
    :cond_9
    const-string v17, "NetworkStats"

    const-string/jumbo v18, "updateIfacesLocked()"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, performPollLocked(I)V

    .line 976
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v16

    .line 977
    .local v16, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-object v0, v0, mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2d} :catch_e2

    move-result-object v2

    .line 983
    .local v2, "activeLink":Landroid/net/LinkProperties;
    if-eqz v2, :cond_e5

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    :goto_34
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mActiveIface:Ljava/lang/String;

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->clear()V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->clear()V

    .line 989
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 990
    .local v11, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v3, v16

    .local v3, "arr$":[Landroid/net/NetworkState;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .local v7, "i$":I
    :goto_56
    if-ge v7, v10, :cond_ee

    aget-object v15, v3, v7

    .line 991
    .local v15, "state":Landroid/net/NetworkState;
    iget-object v0, v15, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_e9

    .line 992
    iget-object v0, v15, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v9

    .line 993
    .local v9, "isMobile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 997
    .local v8, "ident":Landroid/net/NetworkIdentity;
    iget-object v0, v15, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, "baseIface":Ljava/lang/String;
    if-eqz v4, :cond_ad

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4}, findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4}, findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1001
    if-eqz v9, :cond_ad

    .line 1002
    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_ad
    iget-object v0, v15, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v14

    .line 1011
    .local v14, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7    # "i$":I
    .local v6, "i$":Ljava/util/Iterator;
    :cond_b9
    :goto_b9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    .line 1012
    .local v13, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1013
    .local v12, "stackedIface":Ljava/lang/String;
    if-eqz v12, :cond_b9

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v12}, findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1015
    if-eqz v9, :cond_b9

    .line 1016
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b9

    .line 978
    .end local v2    # "activeLink":Landroid/net/LinkProperties;
    .end local v3    # "arr$":[Landroid/net/NetworkState;
    .end local v4    # "baseIface":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "ident":Landroid/net/NetworkIdentity;
    .end local v9    # "isMobile":Z
    .end local v10    # "len$":I
    .end local v11    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "stackedIface":Ljava/lang/String;
    .end local v13    # "stackedLink":Landroid/net/LinkProperties;
    .end local v14    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v15    # "state":Landroid/net/NetworkState;
    .end local v16    # "states":[Landroid/net/NetworkState;
    :catch_e2
    move-exception v5

    .line 980
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    .line 983
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activeLink":Landroid/net/LinkProperties;
    .restart local v16    # "states":[Landroid/net/NetworkState;
    :cond_e5
    const/16 v17, 0x0

    goto/16 :goto_34

    .line 990
    .restart local v3    # "arr$":[Landroid/net/NetworkState;
    .restart local v10    # "len$":I
    .restart local v11    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "state":Landroid/net/NetworkState;
    :cond_e9
    add-int/lit8 v6, v7, 0x1

    .local v6, "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto/16 :goto_56

    .line 1023
    .end local v15    # "state":Landroid/net/NetworkState;
    :cond_ee
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mMobileIfaces:[Ljava/lang/String;

    goto/16 :goto_8
.end method

.method private updatePersistThresholds()V
    .registers 5

    .prologue
    .line 820
    iget-object v0, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 821
    iget-object v0, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 822
    iget-object v0, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 823
    iget-object v0, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 824
    iget-object v0, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, mPersistThreshold:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, mGlobalAlertBytes:J

    .line 825
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .registers 12
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 786
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-direct {p0}, assertBandwidthControlEnabled()V

    .line 790
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, mPersistThreshold:J

    .line 792
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advisePersistThreshold() given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v6

    .line 799
    .local v6, "currentTime":J
    :goto_4b
    iget-object v1, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_4e
    iget-boolean v0, p0, mSystemReady:Z

    if-nez v0, :cond_59

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_75

    .line 812
    :goto_53
    return-void

    .line 797
    .end local v6    # "currentTime":J
    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_4b

    .line 802
    .restart local v6    # "currentTime":J
    :cond_59
    :try_start_59
    invoke-direct {p0}, updatePersistThresholds()V

    .line 804
    iget-object v0, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 805
    iget-object v0, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 806
    iget-object v0, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 807
    iget-object v0, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 808
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_75

    .line 811
    invoke-direct {p0}, registerGlobalAlert()V

    goto :goto_53

    .line 808
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 303
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, mConnManager:Landroid/net/IConnectivityManager;

    .line 304
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v22, "NetworkStats"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-wide/32 v12, 0x5265c00

    .line 1314
    .local v12, "duration":J
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1315
    .local v9, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v10, p3

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1c
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3c

    aget-object v8, v10, v16

    .line 1316
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1318
    const-string v2, "--duration="

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1320
    const/16 v2, 0xb

    :try_start_31
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_38} :catch_1ff

    move-result-wide v12

    .line 1315
    :cond_39
    :goto_39
    add-int/lit8 v16, v16, 0x1

    goto :goto_1c

    .line 1327
    .end local v8    # "arg":Ljava/lang/String;
    :cond_3c
    const-string v2, "--poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string/jumbo v2, "poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    :cond_4d
    const/16 v20, 0x1

    .line 1328
    .local v20, "poll":Z
    :goto_4f
    const-string v2, "--checkin"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1329
    .local v11, "checkin":Z
    const-string v2, "--full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string/jumbo v2, "full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    :cond_66
    const/4 v14, 0x1

    .line 1330
    .local v14, "fullHistory":Z
    :goto_67
    const-string v2, "--uid"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_78
    const/16 v18, 0x1

    .line 1331
    .local v18, "includeUid":Z
    :goto_7a
    const-string v2, "--tag"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    :cond_8b
    const/16 v17, 0x1

    .line 1333
    .local v17, "includeTag":Z
    :goto_8d
    new-instance v21, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1335
    .local v21, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, mStatsLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1336
    if-eqz v20, :cond_bc

    .line 1337
    const/16 v2, 0x103

    :try_start_a3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, performPollLocked(I)V

    .line 1338
    const-string v2, "Forced poll"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    monitor-exit v22

    .line 1406
    :goto_b0
    return-void

    .line 1327
    .end local v11    # "checkin":Z
    .end local v14    # "fullHistory":Z
    .end local v17    # "includeTag":Z
    .end local v18    # "includeUid":Z
    .end local v20    # "poll":Z
    .end local v21    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_b1
    const/16 v20, 0x0

    goto :goto_4f

    .line 1329
    .restart local v11    # "checkin":Z
    .restart local v20    # "poll":Z
    :cond_b4
    const/4 v14, 0x0

    goto :goto_67

    .line 1330
    .restart local v14    # "fullHistory":Z
    :cond_b6
    const/16 v18, 0x0

    goto :goto_7a

    .line 1331
    .restart local v18    # "includeUid":Z
    :cond_b9
    const/16 v17, 0x0

    goto :goto_8d

    .line 1342
    .restart local v17    # "includeTag":Z
    .restart local v21    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_bc
    if-eqz v11, :cond_124

    .line 1343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1344
    .local v6, "end":J
    sub-long v4, v6, v12

    .line 1346
    .local v4, "start":J
    const-string/jumbo v2, "v1,"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v2, 0x2c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1348
    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1350
    const-string/jumbo v2, "xt"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1353
    if-eqz v18, :cond_10c

    .line 1354
    const-string/jumbo v2, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1357
    :cond_10c
    if-eqz v17, :cond_11f

    .line 1358
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1361
    :cond_11f
    monitor-exit v22

    goto :goto_b0

    .line 1405
    .end local v4    # "start":J
    .end local v6    # "end":J
    :catchall_121
    move-exception v2

    monitor-exit v22
    :try_end_123
    .catchall {:try_start_a3 .. :try_end_123} :catchall_121

    throw v2

    .line 1364
    :cond_124
    :try_start_124
    const-string v2, "Active interfaces:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1366
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_12f
    move-object/from16 v0, p0

    iget-object v2, v0, mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_15f

    .line 1367
    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1368
    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1369
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1366
    add-int/lit8 v15, v15, 0x1

    goto :goto_12f

    .line 1371
    :cond_15f
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1373
    const-string v2, "Active UID interfaces:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1375
    const/4 v15, 0x0

    :goto_16d
    move-object/from16 v0, p0

    iget-object v2, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_19d

    .line 1376
    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1377
    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1378
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1375
    add-int/lit8 v15, v15, 0x1

    goto :goto_16d

    .line 1380
    :cond_19d
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1382
    const-string v2, "Dev stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1385
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1387
    const-string v2, "Xt stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1390
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1392
    if-eqz v18, :cond_1e4

    .line 1393
    const-string v2, "UID stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1396
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1399
    :cond_1e4
    if-eqz v17, :cond_1fc

    .line 1400
    const-string v2, "UID tag stats:"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v14}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1403
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1405
    :cond_1fc
    monitor-exit v22
    :try_end_1fd
    .catchall {:try_start_124 .. :try_end_1fd} :catchall_121

    goto/16 :goto_b0

    .line 1321
    .end local v11    # "checkin":Z
    .end local v14    # "fullHistory":Z
    .end local v15    # "i":I
    .end local v17    # "includeTag":Z
    .end local v18    # "includeUid":Z
    .end local v20    # "poll":Z
    .end local v21    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "arg":Ljava/lang/String;
    :catch_1ff
    move-exception v2

    goto/16 :goto_39
.end method

.method public forceUpdate()V
    .registers 6

    .prologue
    .line 773
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, assertBandwidthControlEnabled()V

    .line 776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 778
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_11
    invoke-direct {p0, v2}, performPoll(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 782
    return-void

    .line 780
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forceUpdateIfaces()V
    .registers 6

    .prologue
    .line 760
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, assertBandwidthControlEnabled()V

    .line 763
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 765
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0}, updateIfaces()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 767
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    return-void

    .line 767
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .registers 11
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, p1, :cond_f

    .line 687
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string v8, "NetworkStats"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_f
    invoke-direct {p0}, assertBandwidthControlEnabled()V

    .line 693
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 696
    .local v4, "token":J
    :try_start_16
    iget-object v6, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_47

    move-result-object v3

    .line 698
    .local v3, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    iget-object v6, p0, mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 704
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 707
    .local v0, "dataLayer":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 708
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v2, v6, :cond_4c

    .line 709
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 710
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 711
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 698
    .end local v0    # "dataLayer":Landroid/net/NetworkStats;
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v3    # "networkLayer":Landroid/net/NetworkStats;
    :catchall_47
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 714
    .restart local v0    # "dataLayer":Landroid/net/NetworkStats;
    .restart local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v2    # "i":I
    .restart local v3    # "networkLayer":Landroid/net/NetworkStats;
    :cond_4c
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;
    .registers 15
    .param p1, "sport"    # I
    .param p2, "dport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    .line 1514
    :try_start_3
    new-instance v4, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1515
    .local v4, "ns":Landroid/net/NetworkStats;
    iget-object v5, p0, mConnManager:Landroid/net/IConnectivityManager;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1516
    .local v2, "lp":Landroid/net/LinkProperties;
    if-nez v2, :cond_20

    .line 1517
    new-instance v4, Landroid/net/NetworkStats;

    .end local v4    # "ns":Landroid/net/NetworkStats;
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1535
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :goto_1f
    return-object v4

    .line 1519
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v4    # "ns":Landroid/net/NetworkStats;
    :cond_20
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1520
    .local v1, "iface":Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1521
    :cond_2c
    new-instance v4, Landroid/net/NetworkStats;

    .end local v4    # "ns":Landroid/net/NetworkStats;
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/net/NetworkStats;-><init>(JI)V
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_34} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_34} :catch_55

    goto :goto_1f

    .line 1530
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :catch_35
    move-exception v0

    .line 1531
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkStats"

    const-string/jumbo v6, "problem in reading Video call network stats"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v4, Landroid/net/NetworkStats;

    invoke-direct {v4, v10, v11, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_1f

    .line 1523
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "iface":Ljava/lang/String;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v4    # "ns":Landroid/net/NetworkStats;
    :cond_44
    :try_start_44
    iget-object v5, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, v1, p1, p2}, Landroid/os/INetworkManagementService;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1524
    .local v3, "netStats":Landroid/net/NetworkStats;
    if-nez v3, :cond_64

    .line 1525
    new-instance v4, Landroid/net/NetworkStats;

    .end local v4    # "ns":Landroid/net/NetworkStats;
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/net/NetworkStats;-><init>(JI)V
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_54} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_54} :catch_55

    goto :goto_1f

    .line 1533
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "netStats":Landroid/net/NetworkStats;
    :catch_55
    move-exception v0

    .line 1534
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NetworkStats"

    const-string/jumbo v6, "problem in reading Video call network stats"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    new-instance v4, Landroid/net/NetworkStats;

    invoke-direct {v4, v10, v11, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_1f

    .line 1528
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "iface":Ljava/lang/String;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "netStats":Landroid/net/NetworkStats;
    .restart local v4    # "ns":Landroid/net/NetworkStats;
    :cond_64
    :try_start_64
    invoke-virtual {v4, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_67
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_67} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_67} :catch_55

    goto :goto_1f
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 679
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-direct {p0}, assertBandwidthControlEnabled()V

    .line 681
    invoke-direct/range {p0 .. p5}, internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .registers 23
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    .prologue
    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p1

    if-eq v2, v0, :cond_13

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_13
    if-gez p3, :cond_1e

    .line 729
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    :cond_1e
    if-nez p2, :cond_29

    .line 732
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, mStatsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 736
    :try_start_30
    move-object/from16 v0, p0

    iget-object v2, v0, mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 737
    .local v6, "set":I
    move-object/from16 v0, p0

    iget-object v3, v0, mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, mActiveIface:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, mActiveIface:Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 741
    monitor-exit v18

    .line 742
    return-void

    .line 741
    .end local v6    # "set":I
    :catchall_74
    move-exception v2

    monitor-exit v18
    :try_end_76
    .catchall {:try_start_30 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public isDuringVideoCall()Z
    .registers 2

    .prologue
    .line 1435
    iget-boolean v0, p0, mIsDuringVideoCall:Z

    return v0
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .registers 2

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 478
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public setUidForeground(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    const/4 v1, 0x0

    .line 746
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 749
    if-eqz p2, :cond_10

    const/4 v1, 0x1

    .line 750
    .local v1, "set":I
    :cond_10
    :try_start_10
    iget-object v2, p0, mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 751
    .local v0, "oldSet":I
    if-eq v0, v1, :cond_21

    .line 752
    iget-object v2, p0, mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 755
    :cond_21
    monitor-exit v3

    .line 756
    return-void

    .line 755
    .end local v0    # "oldSet":I
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sPort"    # I
    .param p3, "dPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1442
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    if-nez p1, :cond_19

    .line 1446
    :try_start_b
    iget-object v2, p0, mConnManager:Landroid/net/IConnectivityManager;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1447
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_19

    .line 1448
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 1451
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_19
    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting stats count for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v3, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_49
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_49} :catch_6e

    .line 1454
    :try_start_49
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_6b

    .line 1456
    const/4 v2, 0x1

    :try_start_4f
    invoke-direct {p0, v2}, performPollLocked(I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_64

    .line 1458
    :try_start_52
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1460
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_6b

    .line 1461
    :try_start_58
    iget-object v2, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1462
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsDuringVideoCall:Z

    .line 1463
    invoke-direct {p0}, registerPollAlarmLocked()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_63} :catch_6e

    .line 1467
    :goto_63
    return-void

    .line 1458
    :catchall_64
    move-exception v2

    :try_start_65
    iget-object v4, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 1460
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v2
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 1464
    :catch_6e
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string/jumbo v3, "problem in starting video call stats"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sPort"    # I
    .param p3, "dPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1471
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    if-nez p1, :cond_19

    .line 1475
    :try_start_b
    iget-object v2, p0, mConnManager:Landroid/net/IConnectivityManager;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1476
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_19

    .line 1477
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 1480
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_19
    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopping stats count for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-direct {p0, p2, p3}, combineNetworkStatsVideoCall(II)V

    .line 1484
    iget-object v2, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1485
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsDuringVideoCall:Z

    .line 1487
    iget-object v3, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_54} :catch_6e

    .line 1488
    :try_start_54
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_6b

    .line 1490
    const/4 v2, 0x1

    :try_start_5a
    invoke-direct {p0, v2}, performPollLocked(I)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_64

    .line 1492
    :try_start_5d
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1494
    monitor-exit v3

    .line 1499
    :goto_63
    return-void

    .line 1492
    :catchall_64
    move-exception v2

    iget-object v4, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 1494
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v2
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 1496
    :catch_6e
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string/jumbo v3, "problem in stoping video call stats"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public systemReady()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 307
    iput-boolean v9, p0, mSystemReady:Z

    .line 309
    invoke-direct {p0}, isBandwidthControlEnabled()Z

    move-result v6

    if-nez v6, :cond_13

    .line 310
    const-string v6, "NetworkStats"

    const-string v7, "bandwidth controls disabled, unable to track stats"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_12
    return-void

    .line 315
    :cond_13
    const-string/jumbo v6, "dev"

    iget-object v7, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 316
    const-string/jumbo v6, "xt"

    iget-object v7, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 317
    const-string/jumbo v6, "uid"

    iget-object v7, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 318
    const-string/jumbo v6, "uid_tag"

    iget-object v7, p0, mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v7

    invoke-direct {p0, v6, v7, v9}, buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v6

    iput-object v6, p0, mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 320
    invoke-direct {p0}, updatePersistThresholds()V

    .line 322
    iget-object v7, p0, mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 324
    :try_start_55
    invoke-direct {p0}, maybeUpgradeLegacyStatsLocked()V

    .line 328
    iget-object v6, p0, mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v6

    iput-object v6, p0, mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 331
    invoke-direct {p0}, bootstrapStatsLocked()V

    .line 332
    monitor-exit v7
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_d1

    .line 335
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 336
    .local v3, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v3, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 339
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "pollFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v9, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 343
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.UID_REMOVED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, "removedFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 347
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "userFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 351
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .local v2, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 356
    .local v5, "videocallFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mVideoCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    :try_start_c2
    iget-object v6, p0, mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v7, p0, mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c9} :catch_d4

    .line 365
    :goto_c9
    invoke-direct {p0}, registerPollAlarmLocked()V

    .line 366
    invoke-direct {p0}, registerGlobalAlert()V

    goto/16 :goto_12

    .line 332
    .end local v0    # "pollFilter":Landroid/content/IntentFilter;
    .end local v1    # "removedFilter":Landroid/content/IntentFilter;
    .end local v2    # "shutdownFilter":Landroid/content/IntentFilter;
    .end local v3    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v4    # "userFilter":Landroid/content/IntentFilter;
    .end local v5    # "videocallFilter":Landroid/content/IntentFilter;
    :catchall_d1
    move-exception v6

    :try_start_d2
    monitor-exit v7
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v6

    .line 361
    .restart local v0    # "pollFilter":Landroid/content/IntentFilter;
    .restart local v1    # "removedFilter":Landroid/content/IntentFilter;
    .restart local v2    # "shutdownFilter":Landroid/content/IntentFilter;
    .restart local v3    # "tetherFilter":Landroid/content/IntentFilter;
    .restart local v4    # "userFilter":Landroid/content/IntentFilter;
    .restart local v5    # "videocallFilter":Landroid/content/IntentFilter;
    :catch_d4
    move-exception v6

    goto :goto_c9
.end method
