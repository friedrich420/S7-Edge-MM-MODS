.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$EdgeLight;,
        Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;,
        Lcom/android/server/notification/NotificationManagerService$PickupPlayer;,
        Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final GEAR1_PLUGIN:Ljava/lang/String; = "com.samsung.android.gear1plugin"

.field private static final GEARFIT_PLUGIN:Ljava/lang/String; = "com.samsung.android.wms"

.field private static final GEAR_HOSTMANAGER:Ljava/lang/String; = "com.samsung.android.hostmanager"

.field static final GEAR_PACKAGE_FILTER:[Ljava/lang/String;

.field static final JUNK_SCORE:I = -0x3e8

.field private static final KEEP:I = 0x3131d

.field static final LONG_DELAY:I = 0xdac

.field static final LONG_DOUBLE_DELAY:I = 0x1b58

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MATCHES_MESSAGE_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_MESSAGE_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x7

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x8

.field static final MESSAGE_RANKING_CONFIG_CHANGE:I = 0x5

.field static final MESSAGE_RECONSIDER_RANKING:I = 0x4

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x6

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final REASON_DELEGATE_CANCEL:I = 0x2

.field private static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field private static final REASON_DELEGATE_CLICK:I = 0x1

.field private static final REASON_DELEGATE_ERROR:I = 0x4

.field private static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field private static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field private static final REASON_LISTENER_CANCEL:I = 0xa

.field private static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field private static final REASON_NOMAN_CANCEL:I = 0x8

.field private static final REASON_NOMAN_CANCEL_ALL:I = 0x9

.field private static final REASON_PACKAGE_BANNED:I = 0x7

.field private static final REASON_PACKAGE_CHANGED:I = 0x5

.field private static final REASON_USER_STOPPED:I = 0x6

.field static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field static final SCORE_ONGOING_HIGHER:Z = false

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static mReasonClearLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final KNOX_URI2:Ljava/lang/String;

.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

.field private mEffectsSuppressor:Landroid/content/ComponentName;

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsDormantModeLedDisabled:Z

.field private mIsDormantModeOn:Z

.field private mIsPlaying:Z

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLpnetManager:Lcom/android/server/LpnetManagerService;

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMissedNotificationLightEnabled:Z

.field private mMissedNotificationReminderLightEnabled:Z

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mNotificationPulseEnabled:Z

.field private mNotificationReminder:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

.field private mPM:Landroid/os/PowerManager;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

.field final mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mReasonClear:I

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWindowManager:Landroid/view/WindowManagerInternal;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    const-string v0, "NotificationService"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DBG:Z

    .line 208
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_53

    const-string/jumbo v0, "debug.child_notifs"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v1

    :goto_19
    sput-boolean v0, ENABLE_CHILD_NOTIFICATIONS:Z

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_56

    sput-object v0, DEFAULT_VIBRATE_PATTERN:[J

    .line 269
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.service.peoplestripe"

    const-string v4, "com.samsung.android.service.peoplestripe.PeopleNotiListenerService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    .line 355
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, MY_UID:I

    .line 356
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, MY_PID:I

    .line 4630
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$15;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$15;-><init>()V

    sput-object v0, mReasonClearLocal:Ljava/lang/ThreadLocal;

    .line 4661
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "com.samsung.android.hostmanager"

    aput-object v3, v0, v2

    const-string v2, "com.samsung.android.gear1plugin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.wms"

    aput-object v2, v0, v1

    sput-object v0, GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    return-void

    :cond_53
    move v0, v2

    .line 208
    goto :goto_19

    .line 226
    nop

    :array_56
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 280
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mForegroundToken:Landroid/os/IBinder;

    .line 282
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mRankingThread:Landroid/os/HandlerThread;

    .line 305
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    .line 308
    iput v4, p0, mInterruptionFilter:I

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, mScreenOn:Z

    .line 312
    iput-boolean v4, p0, mInCall:Z

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNotificationList:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mToastQueue:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 322
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    invoke-direct {v0, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v0, p0, mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLights:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mBlockedPackages:Ljava/util/HashSet;

    .line 350
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 566
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 800
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 909
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1090
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mBuzzBeepBlinked:Ljava/lang/Runnable;

    .line 1361
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 2344
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 4378
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v0, p0, mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .line 4609
    iput-object v3, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 4610
    iput-object v3, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 4641
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    iput-object v0, p0, KNOX_URI2:Ljava/lang/String;

    .line 1112
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1113
    return-void
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 205
    sget v0, MY_PID:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mInCall:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mInCall:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 205
    invoke-direct {p0, p1}, disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1}, setLEDCoverState(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mMissedNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mMissedNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mMissedNotificationReminderLightEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mMissedNotificationReminderLightEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mNotificationReminder:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mNotificationReminder:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0, p1}, sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$3200()Z
    .registers 1

    .prologue
    .line 205
    invoke-static {}, isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p0}, checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500()V
    .registers 0

    .prologue
    .line 205
    invoke-static {}, checkCallerIsSystemOrSystemUI()V

    return-void
.end method

.method static synthetic access$3600()V
    .registers 0

    .prologue
    .line 205
    invoke-static {}, checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mIsPlaying:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mIsPlaying:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget v0, p0, mListenerHints:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget v0, p0, mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, readPolicyXml(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, mSoundNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 205
    invoke-direct {p0, p1}, applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 205
    invoke-direct {p0, p1}, buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 205
    iput-object p1, p0, mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 205
    invoke-direct {p0, p1}, handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, handleSavePolicyFile()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, mVibrateNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1}, handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1}, handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 205
    invoke-direct {p0, p1}, handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, handleRankingConfigChange()V

    return-void
.end method

.method static synthetic access$6502(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, mReasonClear:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 205
    invoke-direct/range {p0 .. p5}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget v0, p0, mCallState:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, mCallState:I

    return p1
.end method

.method static synthetic access$6900(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 205
    invoke-static {p0}, callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, mScreenOn:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 205
    invoke-direct {p0, p1}, makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mScreenOn:Z

    return p1
.end method

.method static synthetic access$7600()Landroid/content/ComponentName;
    .registers 1

    .prologue
    .line 205
    sget-object v0, EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 205
    sget-object v0, mReasonClearLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget v0, p0, mDefaultNotificationColor:I

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget v0, p0, mDefaultNotificationLedOn:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 205
    iget v0, p0, mDefaultNotificationLedOff:I

    return v0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 205
    sget v0, MY_UID:I

    return v0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3143
    iget-object v0, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 3144
    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 2961
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2964
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2974
    :goto_10
    return-object v0

    .line 2965
    :cond_11
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_2d

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 2967
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_10

    .line 2970
    :cond_2d
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    .line 2971
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_10

    .line 2973
    :cond_35
    const-string v0, "NotificationService"

    const-string v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_10
.end method

.method private buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 37
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2726
    const/4 v8, 0x0

    .line 2727
    .local v8, "buzz":Z
    const/4 v6, 0x0

    .line 2728
    .local v6, "beep":Z
    const/4 v7, 0x0

    .line 2730
    .local v7, "blink":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    .line 2733
    .local v19, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    move/from16 v31, v0

    const/16 v32, -0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_36c

    const/4 v4, 0x1

    .line 2734
    .local v4, "aboveThreshold":Z
    :goto_1c
    if-eqz v4, :cond_36f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v31

    if-nez v31, :cond_36f

    const/4 v9, 0x1

    .line 2735
    .local v9, "canInterrupt":Z
    :goto_25
    sget-boolean v31, DBG:Z

    if-nez v31, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v31

    if-eqz v31, :cond_6c

    .line 2736
    :cond_2f
    const-string v31, "NotificationService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "pkg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " canInterrupt="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " intercept="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :cond_6c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2744
    .local v26, "token":J
    :try_start_70
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_372

    move-result v11

    .line 2746
    .local v11, "currentUser":I
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2750
    invoke-direct/range {p0 .. p1}, disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v12

    .line 2751
    .local v12, "disableEffects":Ljava/lang/String;
    if-eqz v12, :cond_82

    .line 2752
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 2754
    :cond_82
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x11200c4

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .line 2756
    .local v23, "smsRingtone":Z
    if-eqz v12, :cond_9d

    if-eqz v23, :cond_2ef

    move-object/from16 v0, p0

    iget-boolean v0, v0, mInCall:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2ef

    :cond_9d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    move/from16 v31, v0

    if-eqz v31, :cond_af

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x8

    if-nez v31, :cond_2ef

    :cond_af
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_d3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v11, :cond_d3

    move-object/from16 v0, p0

    iget-object v0, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v31

    if-eqz v31, :cond_2ef

    :cond_d3
    if-eqz v9, :cond_2ef

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2ef

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2ef

    .line 2765
    sget-boolean v31, DBG:Z

    if-eqz v31, :cond_f0

    const-string v31, "NotificationService"

    const-string v32, "Interrupting!"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_f0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, isPrayModeNotiOn(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_2ef

    .line 2775
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-nez v31, :cond_127

    sget-object v31, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_377

    :cond_127
    const/16 v25, 0x1

    .line 2780
    .local v25, "useDefaultSound":Z
    :goto_129
    const/16 v24, 0x0

    .line 2781
    .local v24, "soundUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 2783
    .local v15, "hasValidSound":Z
    if-eqz v25, :cond_37e

    .line 2784
    sget-object v24, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2787
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 2788
    .local v22, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v31, "notification_sound"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_37b

    const/4 v15, 0x1

    .line 2795
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    :cond_146
    :goto_146
    if-eqz v15, :cond_25d

    .line 2796
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x4

    if-eqz v31, :cond_393

    const/16 v18, 0x1

    .line 2799
    .local v18, "looping":Z
    :goto_154
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v31, v0

    if-eqz v31, :cond_397

    .line 2800
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2804
    .local v5, "audioAttributes":Landroid/media/AudioAttributes;
    :goto_160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mSoundNotificationKey:Ljava/lang/String;

    .line 2807
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-static {v5}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v31

    if-eqz v31, :cond_25d

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v31

    if-nez v31, :cond_25d

    .line 2810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2812
    .local v16, "identity":J
    :try_start_18a
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v21

    .line 2813
    .local v21, "player":Landroid/media/IRingtonePlayer;
    if-eqz v21, :cond_25a

    .line 2814
    sget-boolean v31, DBG:Z

    if-eqz v31, :cond_1c2

    const-string v31, "NotificationService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Playing sound "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " with attributes "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_1c2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 2818
    const/4 v6, 0x1

    .line 2821
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPlaying:Z

    .line 2822
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    if-eqz v31, :cond_25a

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_25a

    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v31

    if-eqz v31, :cond_25a

    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v31

    if-nez v31, :cond_25a

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->register()V

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v31, v0

    if-nez v31, :cond_25a

    .line 2827
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v31, 0x0

    new-instance v32, Lcom/android/server/notification/NotificationManagerService$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    aput-object v32, v20, v31
    :try_end_22e
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_22e} :catch_3d2
    .catchall {:try_start_18a .. :try_end_22e} :catchall_40f

    .line 2836
    .local v20, "parameter":[Ljava/lang/Object;
    :try_start_22e
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/IBinder;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v31, v0

    new-instance v32, Lcom/android/server/notification/NotificationManagerService$11;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25a
    .catch Ljava/lang/IllegalAccessException; {:try_start_22e .. :try_end_25a} :catch_39b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22e .. :try_end_25a} :catch_3d8
    .catch Landroid/os/RemoteException; {:try_start_22e .. :try_end_25a} :catch_3d2
    .catchall {:try_start_22e .. :try_end_25a} :catchall_40f

    .line 2873
    .end local v20    # "parameter":[Ljava/lang/Object;
    :cond_25a
    :goto_25a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2880
    .end local v5    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v16    # "identity":J
    .end local v18    # "looping":Z
    .end local v21    # "player":Landroid/media/IRingtonePlayer;
    :cond_25d
    :goto_25d
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v31, v0

    if-eqz v31, :cond_414

    const/4 v14, 0x1

    .line 2884
    .local v14, "hasCustomVibrate":Z
    :goto_266
    if-nez v14, :cond_417

    if-eqz v15, :cond_417

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_417

    const/4 v10, 0x1

    .line 2891
    .local v10, "convertSoundToVibration":Z
    :goto_27d
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_41a

    const/16 v28, 0x1

    .line 2895
    .local v28, "useDefaultVibrate":Z
    :goto_289
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->haptic:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, doesItUseHaptic(I)Z

    move-result v29

    .line 2897
    .local v29, "useHaptic":Z
    if-nez v28, :cond_29f

    if-nez v10, :cond_29f

    if-nez v14, :cond_29f

    if-eqz v29, :cond_2ef

    :cond_29f
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v31

    if-eqz v31, :cond_2ef

    .line 2901
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mVibrateNotificationKey:Ljava/lang/String;

    .line 2930
    const/4 v8, 0x1

    .line 2934
    const-string v31, "NotificationService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Noti Alert - doVibrate "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " convertStoV="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    if-nez v28, :cond_2e2

    if-eqz v10, :cond_41e

    :cond_2e2
    const/16 v31, 0x1

    :goto_2e4
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, doVibrate(ZZLandroid/app/Notification;)V

    .line 2942
    .end local v10    # "convertSoundToVibration":Z
    .end local v14    # "hasCustomVibrate":Z
    .end local v15    # "hasValidSound":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "useDefaultSound":Z
    .end local v28    # "useDefaultVibrate":Z
    .end local v29    # "useHaptic":Z
    :cond_2ef
    move-object/from16 v0, p0

    iget-object v0, v0, mLights:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v30

    .line 2943
    .local v30, "wasShowLights":Z
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_422

    if-eqz v4, :cond_422

    .line 2944
    move-object/from16 v0, p0

    iget-object v0, v0, mLights:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2945
    invoke-virtual/range {p0 .. p0}, updateLightsLocked()V

    .line 2946
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseAttentionLight:Z

    move/from16 v31, v0

    if-eqz v31, :cond_32a

    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, mAttentionLight:Lcom/android/server/lights/Light;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/lights/Light;->pulse()V

    .line 2949
    :cond_32a
    const/4 v7, 0x1

    .line 2953
    :cond_32b
    :goto_32b
    if-nez v8, :cond_331

    if-nez v6, :cond_331

    if-eqz v7, :cond_36b

    :cond_331
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, isPrayModeNotiOn(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_36b

    .line 2954
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v34

    if-eqz v8, :cond_429

    const/16 v31, 0x1

    move/from16 v33, v31

    :goto_347
    if-eqz v6, :cond_42f

    const/16 v31, 0x1

    move/from16 v32, v31

    :goto_34d
    if-eqz v7, :cond_435

    const/16 v31, 0x1

    :goto_351
    move-object/from16 v0, v34

    move/from16 v1, v33

    move/from16 v2, v32

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBuzzBeepBlinked:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2958
    :cond_36b
    return-void

    .line 2733
    .end local v4    # "aboveThreshold":Z
    .end local v9    # "canInterrupt":Z
    .end local v11    # "currentUser":I
    .end local v12    # "disableEffects":Ljava/lang/String;
    .end local v23    # "smsRingtone":Z
    .end local v26    # "token":J
    .end local v30    # "wasShowLights":Z
    :cond_36c
    const/4 v4, 0x0

    goto/16 :goto_1c

    .line 2734
    .restart local v4    # "aboveThreshold":Z
    :cond_36f
    const/4 v9, 0x0

    goto/16 :goto_25

    .line 2746
    .restart local v9    # "canInterrupt":Z
    .restart local v26    # "token":J
    :catchall_372
    move-exception v31

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v31

    .line 2775
    .restart local v11    # "currentUser":I
    .restart local v12    # "disableEffects":Ljava/lang/String;
    .restart local v23    # "smsRingtone":Z
    :cond_377
    const/16 v25, 0x0

    goto/16 :goto_129

    .line 2788
    .restart local v15    # "hasValidSound":Z
    .restart local v22    # "resolver":Landroid/content/ContentResolver;
    .restart local v24    # "soundUri":Landroid/net/Uri;
    .restart local v25    # "useDefaultSound":Z
    :cond_37b
    const/4 v15, 0x0

    goto/16 :goto_146

    .line 2790
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    :cond_37e
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_146

    .line 2791
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v24, v0

    .line 2792
    if-eqz v24, :cond_391

    const/4 v15, 0x1

    :goto_38f
    goto/16 :goto_146

    :cond_391
    const/4 v15, 0x0

    goto :goto_38f

    .line 2796
    :cond_393
    const/16 v18, 0x0

    goto/16 :goto_154

    .line 2802
    .restart local v18    # "looping":Z
    :cond_397
    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .restart local v5    # "audioAttributes":Landroid/media/AudioAttributes;
    goto/16 :goto_160

    .line 2849
    .restart local v16    # "identity":J
    .restart local v20    # "parameter":[Ljava/lang/Object;
    .restart local v21    # "player":Landroid/media/IRingtonePlayer;
    :catch_39b
    move-exception v13

    .line 2850
    .local v13, "ex":Ljava/lang/IllegalAccessException;
    :try_start_39c
    const-string v31, "NotificationService"

    const-string v32, "IllegalAccessException"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3c8

    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v31

    if-eqz v31, :cond_3c8

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2856
    :cond_3c8
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPlaying:Z
    :try_end_3d0
    .catch Landroid/os/RemoteException; {:try_start_39c .. :try_end_3d0} :catch_3d2
    .catchall {:try_start_39c .. :try_end_3d0} :catchall_40f

    goto/16 :goto_25a

    .line 2871
    .end local v13    # "ex":Ljava/lang/IllegalAccessException;
    .end local v20    # "parameter":[Ljava/lang/Object;
    .end local v21    # "player":Landroid/media/IRingtonePlayer;
    :catch_3d2
    move-exception v31

    .line 2873
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_25d

    .line 2857
    .restart local v20    # "parameter":[Ljava/lang/Object;
    .restart local v21    # "player":Landroid/media/IRingtonePlayer;
    :catch_3d8
    move-exception v13

    .line 2858
    .local v13, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3d9
    const-string v31, "NotificationService"

    const-string v32, "InvocationTargetException"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_405

    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v31

    if-eqz v31, :cond_405

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2864
    :cond_405
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPlaying:Z
    :try_end_40d
    .catch Landroid/os/RemoteException; {:try_start_3d9 .. :try_end_40d} :catch_3d2
    .catchall {:try_start_3d9 .. :try_end_40d} :catchall_40f

    goto/16 :goto_25a

    .line 2873
    .end local v13    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v20    # "parameter":[Ljava/lang/Object;
    .end local v21    # "player":Landroid/media/IRingtonePlayer;
    :catchall_40f
    move-exception v31

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v31

    .line 2880
    .end local v5    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v16    # "identity":J
    .end local v18    # "looping":Z
    :cond_414
    const/4 v14, 0x0

    goto/16 :goto_266

    .line 2884
    .restart local v14    # "hasCustomVibrate":Z
    :cond_417
    const/4 v10, 0x0

    goto/16 :goto_27d

    .line 2891
    .restart local v10    # "convertSoundToVibration":Z
    :cond_41a
    const/16 v28, 0x0

    goto/16 :goto_289

    .line 2935
    .restart local v28    # "useDefaultVibrate":Z
    .restart local v29    # "useHaptic":Z
    :cond_41e
    const/16 v31, 0x0

    goto/16 :goto_2e4

    .line 2950
    .end local v10    # "convertSoundToVibration":Z
    .end local v14    # "hasCustomVibrate":Z
    .end local v15    # "hasValidSound":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "useDefaultSound":Z
    .end local v28    # "useDefaultVibrate":Z
    .end local v29    # "useHaptic":Z
    .restart local v30    # "wasShowLights":Z
    :cond_422
    if-eqz v30, :cond_32b

    .line 2951
    invoke-virtual/range {p0 .. p0}, updateLightsLocked()V

    goto/16 :goto_32b

    .line 2954
    :cond_429
    const/16 v31, 0x0

    move/from16 v33, v31

    goto/16 :goto_347

    :cond_42f
    const/16 v31, 0x0

    move/from16 v32, v31

    goto/16 :goto_34d

    :cond_435
    const/16 v31, 0x0

    goto/16 :goto_351
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .prologue
    .line 3781
    packed-switch p0, :pswitch_data_20

    .line 3785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 3782
    :pswitch_17
    const-string v0, "CALL_STATE_IDLE"

    goto :goto_16

    .line 3783
    :pswitch_1a
    const-string v0, "CALL_STATE_RINGING"

    goto :goto_16

    .line 3784
    :pswitch_1d
    const-string v0, "CALL_STATE_OFFHOOK"

    goto :goto_16

    .line 3781
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .registers 23
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I

    .prologue
    .line 3558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 3559
    .local v16, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3583
    :cond_a
    :goto_a
    return-void

    .line 3563
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3564
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 3566
    .local v7, "userId":I
    if-nez v4, :cond_3a

    .line 3567
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package for group summary: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3571
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3572
    .local v12, "N":I
    add-int/lit8 v15, v12, -0x1

    .local v15, "i":I
    :goto_44
    if-ltz v15, :cond_a

    .line 3573
    move-object/from16 v0, p0

    iget-object v2, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 3574
    .local v13, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v14, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3575
    .local v14, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 3577
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p5

    move-object/from16 v11, p4

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3579
    move-object/from16 v0, p0

    iget-object v2, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3580
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v13, v2, v1}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3572
    :cond_8e
    add-int/lit8 v15, v15, -0x1

    goto :goto_44
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .registers 19
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    .line 3261
    if-eqz p2, :cond_13

    .line 3262
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_13

    .line 3264
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->send()V
    :try_end_13
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_13} :catch_d5

    .line 3274
    :cond_13
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    if-eqz v11, :cond_2e

    .line 3275
    const/4 v11, 0x1

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 3278
    packed-switch p3, :pswitch_data_190

    .line 3289
    :goto_25
    iget-object v11, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 3292
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 3295
    .local v2, "canceledKey":Ljava/lang/String;
    iget-object v11, p0, mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 3296
    const/4 v11, 0x0

    iput-object v11, p0, mSoundNotificationKey:Ljava/lang/String;

    .line 3297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3299
    .local v6, "identity":J
    :try_start_41
    iget-object v11, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v10

    .line 3300
    .local v10, "player":Landroid/media/IRingtonePlayer;
    if-eqz v10, :cond_4c

    .line 3301
    invoke-interface {v10}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4c} :catch_146
    .catchall {:try_start_41 .. :try_end_4c} :catchall_160

    .line 3305
    :cond_4c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    iget-object v11, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    if-eqz v11, :cond_60

    iget-object v11, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v11

    if-eqz v11, :cond_60

    .line 3309
    iget-object v11, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 3311
    :cond_60
    const/4 v11, 0x0

    iput-boolean v11, p0, mIsPlaying:Z

    .line 3317
    .end local v6    # "identity":J
    .end local v10    # "player":Landroid/media/IRingtonePlayer;
    :cond_63
    :goto_63
    iget-object v11, p0, mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 3318
    const/4 v11, 0x0

    iput-object v11, p0, mVibrateNotificationKey:Ljava/lang/String;

    .line 3319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3321
    .restart local v6    # "identity":J
    :try_start_72
    iget-object v11, p0, mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->cancel()V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_179

    .line 3324
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3329
    .end local v6    # "identity":J
    :cond_7a
    iget-object v11, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3332
    packed-switch p3, :pswitch_data_198

    .line 3345
    :goto_82
    :pswitch_82
    iget-object v11, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    .line 3347
    .local v4, "groupKey":Ljava/lang/String;
    iget-object v11, p0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3348
    .local v5, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v5, :cond_b0

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b0

    .line 3349
    iget-object v11, p0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    :cond_b0
    iget-object v11, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 3355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3356
    .local v8, "now":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v13

    move/from16 v0, p3

    invoke-static {v2, v0, v11, v12, v13}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    .line 3358
    return-void

    .line 3265
    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v4    # "groupKey":Ljava/lang/String;
    .end local v5    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "now":J
    :catch_d5
    move-exception v3

    .line 3268
    .local v3, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v11, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canceled PendingIntent for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 3281
    .end local v3    # "ex":Landroid/app/PendingIntent$CanceledException;
    :pswitch_f8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    if-eqz v11, :cond_11c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_11c

    .line 3282
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v12, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v13, "remove_reason"

    iget v11, p0, mReasonClear:I

    const v14, 0x3131d

    if-ne v11, v14, :cond_140

    const-string/jumbo v11, "keep"

    :goto_119
    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3284
    :cond_11c
    const-string v12, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, p0, mReasonClear:I

    const v14, 0x3131d

    if-ne v11, v14, :cond_143

    const-string/jumbo v11, "k.it"

    :goto_133
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 3282
    :cond_140
    const-string v11, "cancel"

    goto :goto_119

    .line 3284
    :cond_143
    const-string v11, "c.it"

    goto :goto_133

    .line 3303
    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v6    # "identity":J
    :catch_146
    move-exception v11

    .line 3305
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    iget-object v11, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    if-eqz v11, :cond_15b

    iget-object v11, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v11

    if-eqz v11, :cond_15b

    .line 3309
    iget-object v11, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 3311
    :cond_15b
    const/4 v11, 0x0

    iput-boolean v11, p0, mIsPlaying:Z

    goto/16 :goto_63

    .line 3305
    :catchall_160
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    iget-object v12, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    if-eqz v12, :cond_175

    iget-object v12, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v12

    if-eqz v12, :cond_175

    .line 3309
    iget-object v12, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 3311
    :cond_175
    const/4 v12, 0x0

    iput-boolean v12, p0, mIsPlaying:Z

    throw v11

    .line 3324
    :catchall_179
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 3337
    .end local v6    # "identity":J
    :pswitch_17e
    iget-object v11, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_82

    .line 3341
    :pswitch_187
    iget-object v11, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_82

    .line 3278
    :pswitch_data_190
    .packed-switch 0x2
        :pswitch_f8
        :pswitch_f8
    .end packed-switch

    .line 3332
    :pswitch_data_198
    .packed-switch 0x2
        :pswitch_17e
        :pswitch_17e
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_82
        :pswitch_187
        :pswitch_187
        :pswitch_17e
        :pswitch_17e
    .end packed-switch
.end method

.method private static checkCallerIsSystem()V
    .registers 3

    .prologue
    .line 3735
    invoke-static {}, isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3736
    return-void

    .line 3738
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3761
    invoke-static {}, isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3778
    :cond_6
    return-void

    .line 3764
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3766
    .local v2, "uid":I
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3768
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_57

    .line 3769
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_33} :catch_33

    .line 3775
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_33
    move-exception v1

    .line 3776
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3771
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_57
    :try_start_57
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3772
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_8e} :catch_33
.end method

.method private static checkCallerIsSystemOrSystemUI()V
    .registers 3

    .prologue
    .line 3754
    invoke-static {}, isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, isCallerSystemUI()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3755
    :cond_c
    return-void

    .line 3757
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotificationOp(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 527
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static clamp(III)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 3237
    if-ge p0, p1, :cond_3

    .end local p1    # "low":I
    :goto_2
    return p1

    .restart local p1    # "low":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2145
    iget-boolean v0, p0, mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 2146
    const-string v0, "booleanState"

    .line 2154
    :goto_6
    return-object v0

    .line 2148
    :cond_7
    iget v0, p0, mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 2149
    const-string/jumbo v0, "listenerHints"

    goto :goto_6

    .line 2151
    :cond_11
    iget v0, p0, mCallState:I

    if-eqz v0, :cond_20

    iget-object v0, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2152
    const-string v0, "callState"

    goto :goto_6

    .line 2154
    :cond_20
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private doVibrate(ZZLandroid/app/Notification;)V
    .registers 13
    .param p1, "useDefaultVibrate"    # Z
    .param p2, "useHaptic"    # Z
    .param p3, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v7, 0x0

    .line 3866
    if-eqz p2, :cond_d

    .line 3867
    iget-object v4, p0, mVibrator:Landroid/os/Vibrator;

    iget v5, p3, Landroid/app/Notification;->haptic:I

    sget-object v6, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v4, v5, v7, v6}, Landroid/os/Vibrator;->vibrate(ILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 3890
    :goto_c
    return-void

    .line 3869
    :cond_d
    if-eqz p1, :cond_27

    .line 3873
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3875
    .local v0, "identity":J
    :try_start_13
    iget-object v4, p0, mVibrator:Landroid/os/Vibrator;

    const v5, 0xc361

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Vibrator;->vibrate(ILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    .line 3878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_22
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3882
    .end local v0    # "identity":J
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3884
    .local v2, "identity2":J
    :try_start_2b
    iget-object v5, p0, mVibrator:Landroid/os/Vibrator;

    iget-object v6, p3, Landroid/app/Notification;->vibrate:[J

    iget v4, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_40

    const/4 v4, 0x0

    :goto_36
    const/4 v7, 0x0

    sget-object v8, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_42

    .line 3887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 3884
    :cond_40
    const/4 v4, -0x1

    goto :goto_36

    .line 3887
    :catchall_42
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doesItUseHaptic(I)Z
    .registers 3
    .param p1, "haptic"    # I

    .prologue
    .line 3855
    packed-switch p1, :pswitch_data_8

    .line 3862
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 3860
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3855
    nop

    :pswitch_data_8
    .packed-switch 0xc35d
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2158
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2160
    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v9, "service"

    const-string v10, "Notification Manager"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2161
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_12} :catch_6b

    .line 2163
    .local v1, "bans":Lorg/json/JSONArray;
    :try_start_12
    invoke-direct {p0, p2}, getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    move-result-object v6

    .line 2164
    .local v6, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2165
    .local v8, "userId":Ljava/lang/Integer;
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2166
    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2167
    .local v0, "ban":Lorg/json/JSONObject;
    const-string/jumbo v9, "userId"

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2168
    const-string/jumbo v9, "packageName"

    invoke-virtual {v0, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2169
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_54} :catch_55
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_54} :catch_6b

    goto :goto_34

    .line 2172
    .end local v0    # "ban":Lorg/json/JSONObject;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/Integer;
    :catch_55
    move-exception v9

    .line 2175
    :cond_56
    :try_start_56
    const-string v9, "bans"

    invoke-virtual {v2, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2176
    const-string/jumbo v9, "stats"

    iget-object v10, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v10, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_67} :catch_6b

    .line 2180
    .end local v1    # "bans":Lorg/json/JSONArray;
    :goto_67
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2181
    return-void

    .line 2177
    :catch_6b
    move-exception v3

    .line 2178
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_67
.end method

.method private edm_handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 4700
    :try_start_0
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 4703
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_21

    .line 4704
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 4705
    .local v0, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    if-eqz v0, :cond_21

    .line 4706
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4707
    .local v4, "token":J
    invoke-virtual {v0, p2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    move-result v3

    .line 4708
    .local v3, "notificationMode":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4710
    packed-switch v3, :pswitch_data_fa

    .line 4759
    .end local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "notificationMode":I
    .end local v4    # "token":J
    :cond_21
    :goto_21
    const/4 v6, 0x1

    :goto_22
    return v6

    .line 4712
    .restart local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "notificationMode":I
    .restart local v4    # "token":J
    :pswitch_23
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notify: Block all - flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/app/Notification;->flags:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    const-string v6, "com.android.phone"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    const-string v6, "com.android.incallui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    :cond_4e
    iget v6, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_66

    .line 4716
    const-string v6, "NotificationService"

    const-string/jumbo v7, "notify: Do not block"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_21

    .line 4755
    .end local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "notificationMode":I
    .end local v4    # "token":J
    :catch_5d
    move-exception v1

    .line 4756
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "NotificationService"

    const-string v7, "Is edm running?"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 4719
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "notificationMode":I
    .restart local v4    # "token":J
    :cond_66
    const/4 v6, 0x0

    goto :goto_22

    .line 4722
    :pswitch_68
    const/4 v6, 0x0

    :try_start_69
    iput-object v6, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4723
    iget v6, p3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p3, Landroid/app/Notification;->defaults:I

    .line 4724
    const-string v6, "NotificationService"

    const-string/jumbo v7, "notify: Block text sound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    :pswitch_79
    const-string v6, ""

    iput-object v6, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4728
    iget-object v6, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_95

    .line 4729
    iget-object v6, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020083

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4731
    iget-object v6, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020016

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4734
    :cond_95
    iget-object v6, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_ad

    .line 4735
    iget-object v6, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v7, 0x1020083

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4737
    iget-object v6, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v7, 0x1020016

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4740
    :cond_ad
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_f0

    .line 4742
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.subText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.infoText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.summaryText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.bigText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title.big"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    :cond_f0
    const-string v6, "NotificationService"

    const-string/jumbo v7, "notify: Block text"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_f8} :catch_5d

    goto/16 :goto_21

    .line 4710
    :pswitch_data_fa
    .packed-switch 0x2
        :pswitch_23
        :pswitch_79
        :pswitch_68
    .end packed-switch
.end method

.method private edm_isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4679
    const/4 v3, 0x1

    .line 4681
    .local v3, "returnValue":Z
    :try_start_1
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 4684
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_18

    .line 4685
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 4686
    .local v0, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    if-eqz v0, :cond_18

    .line 4687
    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/ApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1a
    .catchall {:try_start_1 .. :try_end_17} :catchall_24

    move-result v3

    .end local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    :cond_18
    move v4, v3

    .line 4693
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "returnValue":Z
    .local v4, "returnValue":I
    :goto_19
    return v4

    .line 4690
    .end local v4    # "returnValue":I
    .restart local v3    # "returnValue":Z
    :catch_1a
    move-exception v1

    .line 4691
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string v5, "NotificationService"

    const-string v6, "Is edm running?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    move v4, v3

    .line 4693
    .restart local v4    # "returnValue":I
    goto :goto_19

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "returnValue":I
    :catchall_24
    move-exception v5

    move v4, v3

    .restart local v4    # "returnValue":I
    goto :goto_19
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 3148
    iget-object v0, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1099
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 1107
    .end local p3    # "def":[J
    :goto_6
    return-object p3

    .line 1102
    .restart local p3    # "def":[J
    :cond_7
    array-length v4, v0

    if-le v4, p2, :cond_18

    move v2, p2

    .line 1103
    .local v2, "len":I
    :goto_b
    new-array v3, v2, [J

    .line 1104
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1a

    .line 1105
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1102
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_18
    array-length v2, v0

    goto :goto_b

    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_1a
    move-object p3, v3

    .line 1107
    goto :goto_6
.end method

.method private getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;
    .registers 14
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2317
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2318
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2319
    .local v6, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 2320
    .local v9, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 2321
    .local v10, "userId":I
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2322
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v7

    .line 2323
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 2324
    .local v3, "packageCount":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_40
    if-ge v1, v3, :cond_62

    .line 2325
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    iget-object v5, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2326
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_52

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 2327
    :cond_52
    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v8

    .line 2328
    .local v8, "uid":I
    invoke-direct {p0, v5, v8}, checkNotificationOp(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_5f

    .line 2329
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    .end local v8    # "uid":I
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 2333
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_62
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 2334
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1a

    .line 2338
    .end local v1    # "p":I
    .end local v3    # "packageCount":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    :cond_75
    return-object v2
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 21
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    .line 2641
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2642
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 2643
    .local v9, "n":Landroid/app/Notification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    .line 2644
    .local v7, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 2646
    .local v8, "isSummary":Z
    if-eqz p2, :cond_8d

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    .line 2647
    .local v12, "oldN":Landroid/app/Notification;
    :goto_1a
    if-eqz p2, :cond_8f

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    .line 2648
    .local v10, "oldGroup":Ljava/lang/String;
    :goto_24
    if-eqz p2, :cond_91

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_91

    const/4 v11, 0x1

    .line 2650
    .local v11, "oldIsSummary":Z
    :goto_2d
    if-eqz v11, :cond_69

    .line 2651
    move-object/from16 v0, p0

    iget-object v1, v0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 2652
    .local v14, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    if-eq v14, v0, :cond_69

    .line 2653
    if-eqz v14, :cond_93

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 2655
    .local v13, "removedKey":Ljava/lang/String;
    :goto_43
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    .end local v13    # "removedKey":Ljava/lang/String;
    .end local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_69
    if-eqz v8, :cond_74

    .line 2660
    move-object/from16 v0, p0

    iget-object v1, v0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    :cond_74
    if-eqz v11, :cond_8c

    if-eqz v8, :cond_7e

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 2668
    :cond_7e
    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 2671
    :cond_8c
    return-void

    .line 2646
    .end local v10    # "oldGroup":Ljava/lang/String;
    .end local v11    # "oldIsSummary":Z
    .end local v12    # "oldN":Landroid/app/Notification;
    :cond_8d
    const/4 v12, 0x0

    goto :goto_1a

    .line 2647
    .restart local v12    # "oldN":Landroid/app/Notification;
    :cond_8f
    const/4 v10, 0x0

    goto :goto_24

    .line 2648
    .restart local v10    # "oldGroup":Ljava/lang/String;
    :cond_91
    const/4 v11, 0x0

    goto :goto_2d

    .line 2653
    .restart local v11    # "oldIsSummary":Z
    .restart local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_93
    const-string v13, "<null>"

    goto :goto_43
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4
    .param p1, "hints"    # I

    .prologue
    .line 3177
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3178
    :try_start_3
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 3179
    monitor-exit v1

    .line 3180
    return-void

    .line 3179
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 3183
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3184
    :try_start_3
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 3185
    monitor-exit v1

    .line 3186
    return-void

    .line 3185
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private handleRankingConfigChange()V
    .registers 9

    .prologue
    .line 3119
    iget-object v6, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3120
    :try_start_3
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3121
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3122
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .line 3123
    .local v4, "visibilities":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_30

    .line 3124
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3125
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3126
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    aput v5, v4, v1

    .line 3127
    iget-object v5, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 3123
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3129
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_62

    .line 3130
    iget-object v5, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 3131
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3132
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    aget v5, v4, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    if-eq v5, v7, :cond_5f

    .line 3134
    :cond_5a
    invoke-direct {p0}, scheduleSendRankingUpdate()V

    .line 3135
    monitor-exit v6

    .line 3139
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_5e
    return-void

    .line 3129
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 3138
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_62
    monitor-exit v6

    goto :goto_5e

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    :catchall_64
    move-exception v5

    monitor-exit v6
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v5
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3089
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_7

    .line 3116
    :cond_6
    :goto_6
    return-void

    .line 3090
    :cond_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .line 3091
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 3093
    iget-object v10, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 3094
    :try_start_11
    iget-object v9, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3095
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_24

    .line 3096
    monitor-exit v10

    goto :goto_6

    .line 3112
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_21
    move-exception v9

    monitor-exit v10
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw v9

    .line 3098
    .restart local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_24
    :try_start_24
    invoke-direct {p0, v6}, findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 3099
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 3100
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 3101
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3102
    invoke-direct {p0, v6}, applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3103
    iget-object v9, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 3104
    invoke-direct {p0, v6}, findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 3105
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 3106
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .line 3107
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_4f

    if-ne v4, v3, :cond_4f

    if-eq v8, v7, :cond_5e

    :cond_4f
    const/4 v0, 0x1

    .line 3109
    .local v0, "changed":Z
    :goto_50
    if-eqz v4, :cond_57

    if-nez v3, :cond_57

    .line 3110
    invoke-direct {p0, v6}, buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3112
    :cond_57
    monitor-exit v10
    :try_end_58
    .catchall {:try_start_24 .. :try_end_58} :catchall_21

    .line 3113
    if-eqz v0, :cond_6

    .line 3114
    invoke-direct {p0}, scheduleSendRankingUpdate()V

    goto :goto_6

    .line 3107
    .end local v0    # "changed":Z
    :cond_5e
    const/4 v0, 0x0

    goto :goto_50
.end method

.method private handleSavePolicyFile()V
    .registers 6

    .prologue
    .line 479
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "NotificationService"

    const-string/jumbo v3, "handleSavePolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_c
    iget-object v3, p0, mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 483
    :try_start_f
    iget-object v2, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_2b
    .catchall {:try_start_f .. :try_end_14} :catchall_35

    move-result-object v1

    .line 490
    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_16
    invoke-direct {p0, v1, v2}, writePolicyXml(Ljava/io/OutputStream;Z)V

    .line 491
    iget-object v2, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_38
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 496
    :goto_1e
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_35

    .line 497
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 498
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_2a
    return-void

    .line 484
    :catch_2b
    move-exception v0

    .line 485
    .local v0, "e":Ljava/io/IOException;
    :try_start_2c
    const-string v2, "NotificationService"

    const-string v4, "Failed to save policy file"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    monitor-exit v3

    goto :goto_2a

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    throw v2

    .line 492
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_38
    move-exception v0

    .line 493
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_39
    const-string v2, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    iget-object v2, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_35

    goto :goto_1e
.end method

.method private handleSendRankingUpdate()V
    .registers 3

    .prologue
    .line 3158
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3159
    :try_start_3
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V

    .line 3160
    monitor-exit v1

    .line 3161
    return-void

    .line 3160
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 3045
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2a

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_2a
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3047
    :try_start_2d
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 3048
    .local v0, "index":I
    if-ltz v0, :cond_3a

    .line 3049
    invoke-virtual {p0, v0}, cancelToastLocked(I)V

    .line 3051
    :cond_3a
    monitor-exit v2

    .line 3052
    return-void

    .line 3051
    .end local v0    # "index":I
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private importOldBlockDb()V
    .registers 7

    .prologue
    .line 1266
    invoke-direct {p0}, loadPolicyFile()V

    .line 1268
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1269
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1270
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1272
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_1f
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1273
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_11

    .line 1274
    :catch_2c
    move-exception v4

    goto :goto_11

    .line 1278
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2e
    iget-object v4, p0, mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1279
    return-void
.end method

.method private static isCallerSystem()Z
    .registers 1

    .prologue
    .line 3731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private static isCallerSystemUI()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3742
    const/4 v0, 0x0

    .line 3744
    .local v0, "callingPackageName":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3745
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_1c
    .catchall {:try_start_3 .. :try_end_e} :catchall_41

    move-result-object v0

    .line 3749
    if-eqz v0, :cond_1a

    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_19
    :goto_19
    return v3

    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1a
    move v3, v4

    goto :goto_19

    .line 3746
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_1c
    move-exception v1

    .line 3747
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException - isCallerSystemUI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_41

    .line 3749
    if-eqz v0, :cond_3f

    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_3f
    move v3, v4

    goto :goto_19

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_41
    move-exception v5

    if-eqz v0, :cond_4c

    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_4c
    move v3, v4

    goto :goto_19
.end method

.method private isGearNotification(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4667
    sget-object v0, GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 4668
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4669
    const/4 v4, 0x1

    .line 4673
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_f
    return v4

    .line 4667
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4673
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public static isPrayModeLedOn(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4801
    const/4 v1, 0x0

    .line 4803
    .local v1, "data":Z
    :try_start_1
    const-string v4, "com.sec.android.settings.praymodewidget"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 4804
    .local v0, "con":Landroid/content/Context;
    const-string v4, "PraymodePreference"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4805
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "isPrayerLEDOn"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v1

    .line 4809
    .end local v0    # "con":Landroid/content/Context;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :goto_17
    return v1

    .line 4806
    :catch_18
    move-exception v2

    .line 4807
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pray mode not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public static isPrayModeNotiOn(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4789
    const/4 v1, 0x0

    .line 4791
    .local v1, "data":Z
    :try_start_1
    const-string v3, "com.sec.android.settings.praymodewidget"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 4792
    .local v0, "con":Landroid/content/Context;
    const-string v3, "PraymodePreference"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4793
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "isPrayerNotiOn"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v1

    .line 4797
    .end local v0    # "con":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_17
    return v1

    .line 4794
    :catch_18
    move-exception v3

    goto :goto_17
.end method

.method private static isUidSystem(I)Z
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 3726
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3727
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_e

    if-nez p0, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3846
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3847
    const/4 v0, 0x0

    .line 3850
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private listenForCallState()V
    .registers 4

    .prologue
    .line 3790
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3798
    return-void
.end method

.method private loadPolicyFile()V
    .registers 6

    .prologue
    .line 451
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "NotificationService"

    const-string/jumbo v3, "loadPolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_c
    iget-object v3, p0, mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 453
    :try_start_f
    iget-object v2, p0, mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_29

    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, "infile":Ljava/io/FileInputStream;
    :try_start_15
    iget-object v2, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 458
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1f} :catch_24
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1f} :catch_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_1f} :catch_44
    .catchall {:try_start_15 .. :try_end_1f} :catchall_50

    .line 468
    :try_start_1f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 470
    :goto_22
    monitor-exit v3

    .line 471
    return-void

    .line 459
    :catch_24
    move-exception v2

    .line 468
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    .line 470
    .end local v1    # "infile":Ljava/io/FileInputStream;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v2

    .line 461
    .restart local v1    # "infile":Ljava/io/FileInputStream;
    :catch_2c
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    :try_start_2d
    const-string v2, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_50

    .line 468
    :try_start_34
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_29

    goto :goto_22

    .line 463
    .end local v0    # "e":Ljava/io/IOException;
    :catch_38
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_39
    const-string v2, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_50

    .line 468
    :try_start_40
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_29

    goto :goto_22

    .line 465
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_44
    move-exception v0

    .line 466
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_45
    const-string v2, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_50

    .line 468
    :try_start_4c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_50
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_29
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 13
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3807
    const/4 v7, -0x1

    .line 3808
    .local v7, "speedBumpIndex":I
    iget-object v9, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3809
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3810
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3811
    .local v2, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3812
    .local v8, "visibilityOverrides":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_7a

    .line 3813
    iget-object v9, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3814
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v9, p1}, isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 3812
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 3817
    :cond_2c
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3818
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 3819
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3821
    :cond_44
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v9

    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_59

    .line 3823
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3827
    :cond_59
    const/4 v9, -0x1

    if-ne v7, v9, :cond_29

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v9

    if-nez v9, :cond_29

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v9

    if-gtz v9, :cond_29

    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->priority:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_29

    .line 3836
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_29

    .line 3839
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 3840
    .local v5, "keysAr":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 3841
    .local v3, "interceptedKeysAr":[Ljava/lang/String;
    new-instance v9, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct {v9, v5, v3, v8, v7}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    return-object v9
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 517
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_25

    .line 519
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_24
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    .line 3454
    invoke-direct {p0, p1, p2}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 3439
    if-eq p2, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private readPolicyXml(Ljava/io/InputStream;Z)V
    .registers 11
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 421
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 422
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 426
    const/4 v3, 0x1

    .line 427
    .local v3, "version":I
    :goto_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v6, :cond_70

    .line 428
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_31

    .line 430
    const-string/jumbo v4, "notification-policy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 431
    const-string/jumbo v4, "version"

    invoke-interface {v0, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 445
    :cond_31
    :goto_31
    iget-object v4, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 446
    iget-object v4, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_10

    .line 433
    :cond_3c
    const-string v4, "blocked-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 434
    :cond_44
    :goto_44
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v6, :cond_31

    .line 435
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 436
    const-string/jumbo v4, "package"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 437
    iget-object v4, p0, mBlockedPackages:Ljava/util/HashSet;

    const-string/jumbo v5, "name"

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 439
    :cond_64
    const-string v4, "blocked-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v4, 0x3

    if-ne v2, v4, :cond_44

    goto :goto_31

    .line 448
    .end local v1    # "tag":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .registers 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    .line 2690
    sget-boolean v0, ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v0, :cond_94

    .line 2692
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notificationGroupsDesired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2693
    const/4 v0, 0x0

    .line 2722
    :goto_d
    return v0

    .line 2696
    :cond_e
    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2697
    .local v9, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    .line 2698
    .local v6, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .line 2699
    .local v8, "isSummary":Z
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v7

    .line 2701
    .local v7, "isChild":Z
    iget-object v0, p0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 2702
    .local v10, "summary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v7, :cond_88

    if-eqz v10, :cond_88

    .line 2704
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_5e

    .line 2705
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring group child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to existing summary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_5e
    if-eqz p2, :cond_86

    .line 2710
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_80

    .line 2711
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling old version of ignored group child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_80
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p2, v0, v1}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 2715
    :cond_86
    const/4 v0, 0x1

    goto :goto_d

    .line 2716
    :cond_88
    if-eqz v8, :cond_94

    .line 2718
    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 2722
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "isChild":Z
    .end local v8    # "isSummary":Z
    .end local v9    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v10    # "summary":Lcom/android/server/notification/NotificationRecord;
    :cond_94
    const/4 v0, 0x0

    goto/16 :goto_d
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/16 v2, 0x8

    .line 3169
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3170
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3174
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x7

    .line 3164
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3165
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3166
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .registers 4

    .prologue
    const/4 v2, 0x6

    .line 3152
    iget-object v1, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 3153
    iget-object v1, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3154
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3155
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 3026
    iget-object v3, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3027
    iget-object v3, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3032
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1a

    .line 3033
    const-wide/16 v0, 0x1b58

    .line 3040
    .local v0, "delay":J
    :goto_14
    iget-object v3, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3041
    return-void

    .line 3034
    .end local v0    # "delay":J
    :cond_1a
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    .line 3035
    const-wide/16 v0, 0xdac

    .restart local v0    # "delay":J
    goto :goto_14

    .line 3037
    .end local v0    # "delay":J
    :cond_22
    const-wide/16 v0, 0x7d0

    .restart local v0    # "delay":J
    goto :goto_14
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1258
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1260
    return-void
.end method

.method private setLEDCoverState(Z)V
    .registers 9
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4613
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_22

    .line 4614
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 4615
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_22

    .line 4616
    new-array v1, v5, [B

    .line 4617
    .local v1, "data":[B
    if-eqz p1, :cond_23

    .line 4618
    aput-byte v5, v1, v4

    .line 4619
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/cover/CoverManager;->sendDataToCover(I[B)V

    .line 4626
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v1    # "data":[B
    :cond_22
    :goto_22
    return-void

    .line 4621
    .restart local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .restart local v1    # "data":[B
    :cond_23
    const/4 v2, 0x2

    aput-byte v2, v1, v4

    .line 4622
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/cover/CoverManager;->sendDataToCover(I[B)V

    goto :goto_22
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1345
    iget-object v1, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1347
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_13
    iget-object v1, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1352
    :goto_1b
    return-void

    .line 1345
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .line 1348
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1e
    iget-object v1, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1349
    iput-object v0, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    .line 1350
    iget-object v3, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    :goto_2a
    invoke-virtual {v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setEffectsSuppressed(Z)V

    .line 1351
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v1}, sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    goto :goto_1b

    :cond_33
    move v1, v2

    .line 1350
    goto :goto_2a
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3

    .prologue
    .line 1355
    iget-object v1, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 1356
    .local v0, "interruptionFilter":I
    iget v1, p0, mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    .line 1359
    :goto_a
    return-void

    .line 1357
    :cond_b
    iput v0, p0, mInterruptionFilter:I

    .line 1358
    invoke-direct {p0, v0}, scheduleInterruptionFilterChanged(I)V

    goto :goto_a
.end method

.method private updateListenerHintsLocked()V
    .registers 4

    .prologue
    .line 1337
    iget-object v1, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    .line 1338
    .local v0, "hints":I
    :goto_9
    iget v1, p0, mListenerHints:I

    if-ne v0, v1, :cond_10

    .line 1342
    :goto_d
    return-void

    .line 1337
    .end local v0    # "hints":I
    :cond_e
    const/4 v0, 0x1

    goto :goto_9

    .line 1339
    .restart local v0    # "hints":I
    :cond_10
    iget v1, p0, mListenerHints:I

    iget-object v2, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1340
    iput v0, p0, mListenerHints:I

    .line 1341
    invoke-direct {p0, v0}, scheduleListenerHintsChanged(I)V

    goto :goto_d
.end method

.method private updateNotificationPulse()V
    .registers 3

    .prologue
    .line 3720
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3721
    :try_start_3
    invoke-virtual {p0}, updateLightsLocked()V

    .line 3722
    monitor-exit v1

    .line 3723
    return-void

    .line 3722
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .registers 7
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 501
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 502
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 503
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 504
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    const-string/jumbo v1, "version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    iget-object v1, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 507
    iget-object v1, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 508
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 510
    return-void
.end method


# virtual methods
.method cancelAll(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 4765
    iget-object v4, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4766
    :try_start_3
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4767
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_34

    .line 4768
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 4770
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p1}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4767
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 4774
    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_1b

    .line 4776
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4777
    const/4 v3, 0x1

    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_1b

    .line 4782
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v3

    .line 4781
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_34
    :try_start_34
    invoke-virtual {p0}, updateLightsLocked()V

    .line 4782
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_31

    .line 4783
    return-void
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 22
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    .line 3518
    if-nez p5, :cond_31

    const/4 v8, 0x0

    .line 3519
    .local v8, "listenerName":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v7, p4

    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3522
    const/4 v12, 0x0

    .line 3523
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3524
    .local v11, "N":I
    add-int/lit8 v13, v11, -0x1

    .local v13, "i":I
    :goto_1a
    if-ltz v13, :cond_60

    .line 3525
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 3526
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_3a

    .line 3527
    move/from16 v0, p3

    invoke-direct {p0, v14, v0}, notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 3524
    :cond_2e
    :goto_2e
    add-int/lit8 v13, v13, -0x1

    goto :goto_1a

    .line 3518
    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_31
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 3531
    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3a
    move/from16 v0, p3

    invoke-direct {p0, v14, v0}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3536
    :cond_42
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x22

    if-nez v1, :cond_2e

    .line 3538
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3539
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v14, v1, v0}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3541
    if-nez v12, :cond_5c

    .line 3542
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3544
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_5c
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3547
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_60
    if-eqz v12, :cond_7c

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3548
    .local v10, "M":I
    :goto_66
    const/4 v13, 0x0

    :goto_67
    if-ge v13, v10, :cond_7e

    .line 3549
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    const/16 v9, 0xc

    move-object v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3548
    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    .line 3547
    .end local v10    # "M":I
    :cond_7c
    const/4 v10, 0x0

    goto :goto_66

    .line 3552
    .restart local v10    # "M":I
    :cond_7e
    invoke-virtual {p0}, updateLightsLocked()V

    .line 3553
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 25
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3465
    if-nez p9, :cond_35

    const/4 v8, 0x0

    .local v8, "listenerName":Ljava/lang/String;
    :goto_3
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    .line 3466
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 3470
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3471
    :try_start_17
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3472
    .local v11, "N":I
    const/4 v12, 0x0

    .line 3473
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v13, v11, -0x1

    .local v13, "i":I
    :goto_20
    if-ltz v13, :cond_87

    .line 3474
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 3475
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v0, p7

    invoke-direct {p0, v14, v0}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_84

    move-result v1

    if-nez v1, :cond_3e

    .line 3473
    :cond_32
    :goto_32
    add-int/lit8 v13, v13, -0x1

    goto :goto_20

    .line 3465
    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_35
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 3479
    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3e
    :try_start_3e
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_47

    if-eqz p3, :cond_32

    .line 3482
    :cond_47
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p4

    move/from16 v0, p4

    if-ne v1, v0, :cond_32

    .line 3485
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p5

    if-nez v1, :cond_32

    .line 3488
    if-eqz p3, :cond_69

    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3492
    :cond_69
    if-nez v12, :cond_70

    .line 3493
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3495
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_70
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3496
    if-nez p6, :cond_78

    .line 3497
    const/4 v1, 0x1

    monitor-exit v2

    .line 3512
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_77
    return v1

    .line 3499
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_78
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3500
    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-direct {p0, v14, v1, v0}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_32

    .line 3513
    .end local v11    # "N":I
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_84
    move-exception v1

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_3e .. :try_end_86} :catchall_84

    throw v1

    .line 3502
    .restart local v11    # "N":I
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v13    # "i":I
    :cond_87
    if-eqz p6, :cond_a5

    if-eqz v12, :cond_a5

    .line 3503
    :try_start_8b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3504
    .local v10, "M":I
    const/4 v13, 0x0

    :goto_90
    if-ge v13, v10, :cond_a5

    .line 3505
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    const/16 v9, 0xc

    move-object v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3504
    add-int/lit8 v13, v13, 0x1

    goto :goto_90

    .line 3509
    .end local v10    # "M":I
    :cond_a5
    if-eqz v12, :cond_aa

    .line 3510
    invoke-virtual {p0}, updateLightsLocked()V

    .line 3512
    :cond_aa
    if-eqz v12, :cond_af

    const/4 v1, 0x1

    :goto_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_8b .. :try_end_ae} :catchall_84

    goto :goto_77

    :cond_af
    const/4 v1, 0x0

    goto :goto_ad
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 27
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3379
    sget-object v0, mReasonClearLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3380
    .local v12, "reasonClear":I
    sget-object v0, mReasonClearLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 3387
    iget-object v14, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13;

    move-object v1, p0

    move-object/from16 v2, p11

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3432
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 3005
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3007
    .local v1, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_8
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_23

    .line 3014
    :goto_d
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3015
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, keepProcessAliveLocked(I)V

    .line 3016
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 3020
    invoke-virtual {p0}, showNextToastLocked()V

    .line 3022
    :cond_22
    return-void

    .line 3008
    :catch_23
    move-exception v0

    .line 3009
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 2184
    const-string v18, "Current Notification Manager state"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26

    .line 2186
    const-string v18, " (filtered to "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v18, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    :cond_26
    const/16 v18, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2190
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_80

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_80

    const/16 v17, 0x1

    .line 2192
    .local v17, "zenOnly":Z
    :goto_41
    if-nez v17, :cond_8d

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2194
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v0, v0, mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2195
    .local v4, "N":I
    if-lez v4, :cond_8c

    .line 2196
    const-string v18, "  Toast Queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_60
    if-ge v6, v4, :cond_83

    .line 2198
    move-object/from16 v0, p0

    iget-object v0, v0, mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2197
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2190
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v17    # "zenOnly":Z
    :cond_80
    const/16 v17, 0x0

    goto :goto_41

    .line 2200
    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v17    # "zenOnly":Z
    :cond_83
    const-string v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    .end local v6    # "i":I
    :cond_8c
    monitor-exit v19
    :try_end_8d
    .catchall {:try_start_4a .. :try_end_8d} :catchall_d5

    .line 2205
    .end local v4    # "N":I
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2206
    if-nez v17, :cond_31e

    .line 2207
    :try_start_96
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2208
    .restart local v4    # "N":I
    if-lez v4, :cond_fc

    .line 2209
    const-string v18, "  Notification List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_ac
    if-ge v6, v4, :cond_f3

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 2212
    .local v11, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d8

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z
    :try_end_cf
    .catchall {:try_start_96 .. :try_end_cf} :catchall_f0

    move-result v18

    if-nez v18, :cond_d8

    .line 2210
    :goto_d2
    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    .line 2202
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_d5
    move-exception v18

    :try_start_d6
    monitor-exit v19
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v18

    .line 2213
    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_d8
    :try_start_d8
    const-string v18, "    "

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_d2

    .line 2312
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_f0
    move-exception v18

    monitor-exit v19
    :try_end_f2
    .catchall {:try_start_d8 .. :try_end_f2} :catchall_f0

    throw v18

    .line 2215
    .restart local v4    # "N":I
    .restart local v6    # "i":I
    :cond_f3
    :try_start_f3
    const-string v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    .end local v6    # "i":I
    :cond_fc
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-nez v18, :cond_29a

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2220
    if-lez v4, :cond_156

    .line 2221
    const-string v18, "  Lights List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_11a
    if-ge v6, v4, :cond_14d

    .line 2223
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_143

    .line 2224
    const-string v18, "  > "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2228
    :goto_12b
    move-object/from16 v0, p0

    iget-object v0, v0, mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    add-int/lit8 v6, v6, 0x1

    goto :goto_11a

    .line 2226
    :cond_143
    const-string v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_12b

    .line 2230
    :cond_14d
    const-string v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    .end local v6    # "i":I
    :cond_156
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mUseAttentionLight="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseAttentionLight:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mNotificationPulseEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mNotificationPulseEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mMissedNotificationLightEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mMissedNotificationLightEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mSoundNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mVibrateNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mDisableNotificationEffects="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mDisableNotificationEffects:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mCallState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, mCallState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, callStateToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mSystemReady="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    :cond_29a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mArchive="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2243
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v6, 0x0

    .line 2244
    .restart local v6    # "i":I
    :cond_2d1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_31e

    .line 2245
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/notification/StatusBarNotification;

    .line 2246
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_2e7

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_2d1

    .line 2247
    :cond_2e7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    add-int/lit8 v6, v6, 0x1

    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v6, v0, :cond_2d1

    .line 2249
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_31e

    const-string v18, "    ..."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2255
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_31e
    if-nez v17, :cond_33c

    .line 2256
    const-string v18, "\n  Usage Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v18, v0

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2260
    :cond_33c
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_346

    if-eqz v17, :cond_388

    .line 2261
    :cond_346
    const-string v18, "\n  Zen Mode:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2262
    const-string v18, "    mInterruptionFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, mInterruptionFilter:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v18, v0

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2265
    const-string v18, "\n  Zen Log:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    const-string v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2269
    :cond_388
    if-nez v17, :cond_41a

    .line 2270
    const-string v18, "\n  Ranking Config:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v18, v0

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2273
    const-string v18, "\n  Notification listeners:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2275
    const-string v18, "    mListenerHints: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, mListenerHints:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2276
    const-string v18, "    mListenersDisablingEffects: ("

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, mListenersDisablingEffects:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 2278
    .restart local v4    # "N":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3e8
    if-ge v6, v4, :cond_411

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, mListenersDisablingEffects:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2280
    .local v10, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-lez v6, :cond_403

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2281
    :cond_403
    iget-object v0, v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2278
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e8

    .line 2283
    .end local v10    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_411
    const/16 v18, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 2285
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_41a
    const-string v18, "\n  Policy access:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    const-string v18, "    mPolicyAccess: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2288
    const-string v18, "\n  Condition providers:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 2291
    const-string v18, "\n  Group summaries:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_468
    :goto_468
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4f0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2293
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 2294
    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " -> "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v0, v14, :cond_468

    .line 2296
    const-string v18, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    const-string v18, "      "

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_4ee
    .catchall {:try_start_f3 .. :try_end_4ee} :catchall_f0

    goto/16 :goto_468

    .line 2302
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4f0
    :try_start_4f0
    const-string v18, "\n  Banned Packages:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    move-result-object v12

    .line 2304
    .local v12, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_509
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_561

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2305
    .local v16, "userId":Ljava/lang/Integer;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_521
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_509

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2306
    .local v13, "packageName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f0 .. :try_end_55f} :catch_560
    .catchall {:try_start_4f0 .. :try_end_55f} :catchall_f0

    goto :goto_521

    .line 2309
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "userId":Ljava/lang/Integer;
    :catch_560
    move-exception v18

    .line 2312
    :cond_561
    :try_start_561
    monitor-exit v19
    :try_end_562
    .catchall {:try_start_561 .. :try_end_562} :catchall_f0

    .line 2313
    return-void
.end method

.method enqueueEdgeNotificationInternal(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Bundle;I)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "id"    # I
    .param p6, "extra"    # Landroid/os/Bundle;
    .param p7, "incomingUserId"    # I

    .prologue
    .line 2378
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_31

    .line 2379
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enqueueEdgeNotificationInternal: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_31
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "enqueueNotificationExtra"

    move v0, p4

    move v1, p3

    move v2, p7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2385
    .local v5, "userId":I
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 2388
    .local v7, "user":Landroid/os/UserHandle;
    if-eqz p1, :cond_47

    if-nez p6, :cond_75

    .line 2389
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null not allowed: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2393
    :cond_75
    iget-object v6, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2400
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .registers 33
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 2405
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_37

    .line 2406
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enqueueNotificationInternal: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_37
    invoke-direct/range {p0 .. p1}, isGearNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2414
    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_61

    .line 2415
    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 2416
    .local v21, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "getGearNotificationState"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v4}, getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v17

    .line 2418
    .local v17, "gearNotificationState":Z
    if-nez v17, :cond_61

    .line 2419
    const-string v3, "NotificationService"

    const-string v4, "Gear ongoing notification disabled by Knox Customization"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    .end local v17    # "gearNotificationState":Z
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_60
    :goto_60
    return-void

    .line 2427
    :cond_61
    invoke-static/range {p1 .. p1}, checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 2428
    invoke-static/range {p3 .. p3}, isUidSystem(I)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "android"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    :cond_74
    const/4 v14, 0x1

    .line 2429
    .local v14, "isSystemNotification":Z
    :goto_75
    move-object/from16 v0, p0

    iget-object v3, v0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->access$5100(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v19

    .line 2431
    .local v19, "isNotificationFromListener":Z
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "enqueueNotification"

    move/from16 v3, p4

    move/from16 v4, p3

    move/from16 v5, p9

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 2433
    .local v13, "userId":I
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 2436
    .local v12, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, edm_isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 2437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v13, v2}, edm_handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2445
    :cond_ab
    if-nez v14, :cond_107

    if-nez v19, :cond_107

    .line 2446
    move-object/from16 v0, p0

    iget-object v4, v0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2447
    const/16 v16, 0x0

    .line 2448
    .local v16, "count":I
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v3, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2449
    .local v15, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_c0
    move/from16 v0, v18

    if-ge v0, v15, :cond_106

    .line 2450
    move-object/from16 v0, p0

    iget-object v3, v0, mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    .line 2451
    .local v20, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_176

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    if-ne v3, v13, :cond_176

    .line 2452
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_142

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 2463
    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_106
    monitor-exit v4
    :try_end_107
    .catchall {:try_start_b6 .. :try_end_107} :catchall_173

    .line 2466
    .end local v15    # "N":I
    .end local v16    # "count":I
    .end local v18    # "i":I
    :cond_107
    if-eqz p1, :cond_10b

    if-nez p7, :cond_17a

    .line 2467
    :cond_10b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null not allowed: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2428
    .end local v12    # "user":Landroid/os/UserHandle;
    .end local v13    # "userId":I
    .end local v14    # "isSystemNotification":Z
    .end local v19    # "isNotificationFromListener":Z
    :cond_13f
    const/4 v14, 0x0

    goto/16 :goto_75

    .line 2455
    .restart local v12    # "user":Landroid/os/UserHandle;
    .restart local v13    # "userId":I
    .restart local v14    # "isSystemNotification":Z
    .restart local v15    # "N":I
    .restart local v16    # "count":I
    .restart local v18    # "i":I
    .restart local v19    # "isNotificationFromListener":Z
    .restart local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_142
    add-int/lit8 v16, v16, 0x1

    .line 2456
    const/16 v3, 0x32

    move/from16 v0, v16

    if-lt v0, v3, :cond_176

    .line 2457
    :try_start_14a
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package has already posted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " notifications.  Not showing more.  package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    monitor-exit v4

    goto/16 :goto_60

    .line 2463
    .end local v15    # "N":I
    .end local v18    # "i":I
    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_173
    move-exception v3

    monitor-exit v4
    :try_end_175
    .catchall {:try_start_14a .. :try_end_175} :catchall_173

    throw v3

    .line 2449
    .restart local v15    # "N":I
    .restart local v18    # "i":I
    .restart local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_176
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_c0

    .line 2471
    .end local v15    # "N":I
    .end local v16    # "count":I
    .end local v18    # "i":I
    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_17a
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_1b9

    .line 2472
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isValid()Z

    move-result v3

    if-nez v3, :cond_1b9

    .line 2473
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid notification (): pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2478
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v22, v0

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$9;

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-object/from16 v8, p2

    move/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2628
    const/4 v3, 0x0

    aput p6, p8, v3

    goto/16 :goto_60
.end method

.method public getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4643
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4644
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_36

    .line 4646
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4647
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4648
    .local v8, "strValue":Ljava/lang/String;
    if-eqz v8, :cond_2d

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_25} :catch_2f
    .catchall {:try_start_11 .. :try_end_25} :catchall_38

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 4652
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4655
    .end local v8    # "strValue":Ljava/lang/String;
    :goto_2c
    return v0

    .line 4648
    .restart local v8    # "strValue":Ljava/lang/String;
    :cond_2d
    const/4 v0, 0x0

    goto :goto_29

    .line 4649
    .end local v8    # "strValue":Ljava/lang/String;
    :catch_2f
    move-exception v7

    .line 4650
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_30
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_38

    .line 4652
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_36
    move v0, p3

    .line 4655
    goto :goto_2c

    .line 4652
    :catchall_38
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getLpnetManagerLocked()Lcom/android/server/LpnetManagerService;
    .registers 3

    .prologue
    .line 792
    iget-object v1, p0, mLpnetManager:Lcom/android/server/LpnetManagerService;

    if-nez v1, :cond_13

    .line 793
    const-string/jumbo v1, "lpnet"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 794
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/ILpnetManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILpnetManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/LpnetManagerService;

    iput-object v1, p0, mLpnetManager:Lcom/android/server/LpnetManagerService;

    .line 796
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v1, p0, mLpnetManager:Lcom/android/server/LpnetManagerService;

    return-object v1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3710
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3711
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 3712
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3716
    .end local v1    # "i":I
    :goto_1b
    return v1

    .line 3711
    .restart local v1    # "i":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3716
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 3696
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    .line 3697
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3698
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_39

    .line 3699
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3700
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3705
    .end local v0    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_35
    return v0

    .line 3698
    .restart local v0    # "i":I
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3705
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_39
    const/4 v0, -0x1

    goto :goto_35
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 3057
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3058
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    .line 3059
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3060
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_27

    .line 3061
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3062
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_24

    .line 3066
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_23
    return v1

    .line 3060
    .restart local v1    # "i":I
    .restart local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3066
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_27
    const/4 v1, -0x1

    goto :goto_23
.end method

.method keepProcessAliveLocked(I)V
    .registers 11
    .param p1, "pid"    # I

    .prologue
    const/4 v5, 0x1

    .line 3072
    const/4 v4, 0x0

    .line 3073
    .local v4, "toastCount":I
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    .line 3074
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3075
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1a

    .line 3076
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 3077
    .local v3, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v6, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v6, p1, :cond_17

    .line 3078
    add-int/lit8 v4, v4, 0x1

    .line 3075
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3082
    .end local v3    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1a
    :try_start_1a
    iget-object v6, p0, mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_25

    :goto_20
    const/4 v8, 0x1

    invoke-interface {v6, v7, p1, v5, v8}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_27

    .line 3086
    :goto_24
    return-void

    .line 3082
    :cond_25
    const/4 v5, 0x0

    goto :goto_20

    .line 3083
    :catch_27
    move-exception v5

    goto :goto_24
.end method

.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1283
    const/16 v4, 0x1f4

    if-ne p1, v4, :cond_64

    .line 1285
    iput-boolean v5, p0, mSystemReady:Z

    .line 1288
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, mAudioManager:Landroid/media/AudioManager;

    .line 1289
    const-class v4, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v4}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManagerInternal;

    iput-object v4, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1290
    iget-object v4, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 1293
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;

    iget-object v4, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    .line 1294
    .local v3, "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;->observe()V

    .line 1298
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-direct {v4, p0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v4, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    .line 1301
    :try_start_36
    const-string v4, "android.media.IRingtonePlayer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1302
    .local v0, "classRingtonePlayer":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v5, v2, v4

    .line 1304
    .local v2, "parameterRingtonePlayer":[Ljava/lang/Class;
    const-string/jumbo v4, "setOnCompletionListener"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_4d} :catch_59

    .line 1321
    .end local v0    # "classRingtonePlayer":Ljava/lang/Class;
    .end local v2    # "parameterRingtonePlayer":[Ljava/lang/Class;
    .end local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :cond_4d
    :goto_4d
    return-void

    .line 1306
    .restart local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :catch_4e
    move-exception v1

    .line 1307
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v4, "NotificationService"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iput-object v6, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_4d

    .line 1309
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_59
    move-exception v1

    .line 1310
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v4, "NotificationService"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-object v6, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_4d

    .line 1314
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :cond_64
    const/16 v4, 0x258

    if-ne p1, v4, :cond_4d

    .line 1317
    iget-object v4, p0, mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1318
    iget-object v4, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1319
    iget-object v4, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_4d
.end method

.method public onStart()V
    .registers 18

    .prologue
    .line 1117
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1119
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mAm:Landroid/app/IActivityManager;

    .line 1120
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v1, v0, mAppOps:Landroid/app/AppOpsManager;

    .line 1121
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v1, v0, mVibrator:Landroid/os/Vibrator;

    .line 1123
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v1, v0, mPM:Landroid/os/PowerManager;

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "pickup"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1126
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1128
    const-class v1, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, mWindowManager:Landroid/view/WindowManagerInternal;

    .line 1129
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1130
    move-object/from16 v0, p0

    iget-object v1, v0, mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1133
    const v1, 0x1070036

    :try_start_82
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_85
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_82 .. :try_end_85} :catch_2bd

    move-result-object v12

    .line 1137
    .local v12, "extractorNames":[Ljava/lang/String;
    :goto_86
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1138
    new-instance v1, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-direct {v1, v2, v3, v5, v12}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1142
    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1143
    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1144
    move-object/from16 v0, p0

    iget-object v1, v0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1163
    new-instance v16, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1164
    .local v16, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mPolicyFile:Landroid/util/AtomicFile;

    .line 1166
    invoke-direct/range {p0 .. p0}, importOldBlockDb()V

    .line 1168
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1169
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1170
    move-object/from16 v0, p0

    iget-object v1, v0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1172
    const-class v1, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/lights/LightsManager;

    .line 1173
    .local v14, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x6

    invoke-virtual {v14, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mNotificationLight:Lcom/android/server/lights/Light;

    .line 1174
    const/4 v1, 0x7

    invoke-virtual {v14, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mAttentionLight:Lcom/android/server/lights/Light;

    .line 1176
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    .line 1179
    const v1, 0x10600ed

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mDefaultNotificationColor:I

    .line 1181
    const v1, 0x10e0051

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mDefaultNotificationLedOn:I

    .line 1183
    const v1, 0x10e0052

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mDefaultNotificationLedOff:I

    .line 1186
    const v1, 0x1070032

    const/16 v2, 0x11

    sget-object v3, DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v15, v1, v2, v3}, getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mDefaultVibrationPattern:[J

    .line 1191
    const v1, 0x1070033

    const/16 v2, 0x11

    sget-object v3, DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v15, v1, v2, v3}, getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mFallbackVibrationPattern:[J

    .line 1196
    const v1, 0x112002c

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, mUseAttentionLight:Z

    .line 1202
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1c0

    .line 1204
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, mDisableNotificationEffects:Z

    .line 1206
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v1, v0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1207
    move-object/from16 v0, p0

    iget-object v1, v0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mInterruptionFilter:I

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1210
    invoke-direct/range {p0 .. p0}, listenForCallState()V

    .line 1213
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1214
    move-object/from16 v0, p0

    iget-object v1, v0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_200

    .line 1215
    move-object/from16 v0, p0

    iget-object v1, v0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 1220
    :cond_200
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1221
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1226
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1227
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1228
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1234
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1235
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1236
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1240
    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1244
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1248
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1250
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v2, 0x10e0058

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1253
    const-string/jumbo v1, "notification"

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1254
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1255
    return-void

    .line 1134
    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v8    # "sdFilter":Landroid/content/IntentFilter;
    .end local v12    # "extractorNames":[Ljava/lang/String;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v16    # "systemDir":Ljava/io/File;
    :catch_2bd
    move-exception v11

    .line 1135
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    new-array v12, v1, [Ljava/lang/String;

    .restart local v12    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_86
.end method

.method removeEdgeNotificationInternal(IILjava/lang/String;ILandroid/os/Bundle;I)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "extra"    # Landroid/os/Bundle;
    .param p6, "userId"    # I

    .prologue
    .line 3362
    iget-object v6, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3368
    return-void
.end method

.method public savePolicyFile()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 474
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 475
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    .line 476
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 3241
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 3242
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 3257
    :goto_e
    return-void

    .line 3246
    :cond_f
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3248
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3249
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3250
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 3251
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3252
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 3253
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3256
    :cond_33
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_e
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1324
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_40

    const-string/jumbo v0, "en"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v1, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    if-eqz p3, :cond_44

    move v0, v4

    :goto_2a
    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1330
    if-nez p3, :cond_3f

    .line 1331
    sget v1, MY_UID:I

    sget v2, MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 1334
    :cond_3f
    return-void

    .line 1324
    :cond_40
    const-string/jumbo v0, "dis"

    goto :goto_e

    :cond_44
    move v0, v6

    .line 1326
    goto :goto_2a
.end method

.method showNextToastLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2979
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2980
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_9
    if-eqz v2, :cond_3d

    .line 2981
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_35

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_35
    :try_start_35
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 2984
    invoke-direct {p0, v2}, scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3d} :catch_3e

    .line 3002
    :cond_3d
    return-void

    .line 2986
    :catch_3e
    move-exception v0

    .line 2987
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2991
    .local v1, "index":I
    if-ltz v1, :cond_72

    .line 2992
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2994
    :cond_72
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, keepProcessAliveLocked(I)V

    .line 2995
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_88

    .line 2996
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .restart local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto :goto_9

    .line 2998
    :cond_88
    const/4 v2, 0x0

    goto :goto_9
.end method

.method updateLightsLocked()V
    .registers 16

    .prologue
    const/16 v14, 0xc

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3589
    const/4 v3, 0x0

    .line 3590
    .local v3, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    const/4 v8, 0x0

    .line 3605
    .local v8, "tempLedNotification":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_59

    if-nez v3, :cond_59

    .line 3606
    iget-object v9, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3607
    .local v7, "owner":Ljava/lang/String;
    iget-object v9, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tempLedNotification":Lcom/android/server/notification/NotificationRecord;
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 3608
    .restart local v8    # "tempLedNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v8, :cond_44

    .line 3609
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LED Notification does not exist: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    iget-object v9, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3605
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 3611
    :cond_44
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_57

    iget-object v9, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 3613
    :cond_57
    move-object v3, v8

    goto :goto_41

    .line 3618
    .end local v7    # "owner":Ljava/lang/String;
    :cond_59
    const/4 v1, 0x0

    .line 3619
    .local v1, "isForceLED":Z
    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->secFlags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_6f

    .line 3622
    :cond_6e
    const/4 v1, 0x1

    .line 3627
    :cond_6f
    if-eqz v3, :cond_7b

    iget-boolean v9, p0, mInCall:Z

    if-nez v9, :cond_7b

    iget-boolean v9, p0, mScreenOn:Z

    if-eqz v9, :cond_94

    if-nez v1, :cond_94

    .line 3628
    :cond_7b
    iget-object v9, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3629
    iget-object v9, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 3631
    invoke-direct {p0, v12}, setLEDCoverState(Z)V

    .line 3685
    :goto_88
    if-eqz v3, :cond_8e

    iget-boolean v9, p0, mInCall:Z

    if-eqz v9, :cond_fa

    .line 3686
    :cond_8e
    iget-object v9, p0, mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->turnOff()V

    .line 3691
    :goto_93
    return-void

    .line 3634
    :cond_94
    iget-object v9, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 3635
    .local v6, "ledno":Landroid/app/Notification;
    iget v2, v6, Landroid/app/Notification;->ledARGB:I

    .line 3636
    .local v2, "ledARGB":I
    iget v5, v6, Landroid/app/Notification;->ledOnMS:I

    .line 3637
    .local v5, "ledOnMS":I
    iget v4, v6, Landroid/app/Notification;->ledOffMS:I

    .line 3638
    .local v4, "ledOffMS":I
    iget v9, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_ac

    .line 3639
    iget v2, p0, mDefaultNotificationColor:I

    .line 3640
    iget v5, p0, mDefaultNotificationLedOn:I

    .line 3641
    iget v4, p0, mDefaultNotificationLedOff:I

    .line 3654
    :cond_ac
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, isPrayModeLedOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 3655
    iget-object v9, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3681
    :cond_b9
    :goto_b9
    iget-object v9, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v9, v2, v5, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto :goto_88

    .line 3656
    :cond_bf
    iget-boolean v9, p0, mMissedNotificationReminderLightEnabled:Z

    if-eqz v9, :cond_e1

    .line 3658
    iget-boolean v9, p0, mNotificationReminder:Z

    if-eqz v9, :cond_d3

    .line 3659
    iget-object v9, p0, mNotificationLight:Lcom/android/server/lights/Light;

    iget v10, p0, mDefaultNotificationColor:I

    iget v11, p0, mDefaultNotificationLedOn:I

    iget v12, p0, mDefaultNotificationLedOff:I

    invoke-virtual {v9, v10, v14, v11, v12}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_b9

    .line 3662
    :cond_d3
    iget-object v9, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3663
    iget-object v9, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 3664
    invoke-direct {p0, v12}, setLEDCoverState(Z)V

    goto :goto_b9

    .line 3666
    :cond_e1
    iget-boolean v9, p0, mMissedNotificationLightEnabled:Z

    if-eqz v9, :cond_b9

    .line 3667
    iget v9, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_f4

    .line 3668
    iget-object v9, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9, v2, v14, v5, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3675
    :goto_f0
    invoke-direct {p0, v13}, setLEDCoverState(Z)V

    goto :goto_b9

    .line 3671
    :cond_f4
    iget-object v9, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9, v2, v13, v5, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_f0

    .line 3688
    .end local v2    # "ledARGB":I
    .end local v4    # "ledOffMS":I
    .end local v5    # "ledOnMS":I
    .end local v6    # "ledno":Landroid/app/Notification;
    :cond_fa
    iget-object v9, p0, mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    invoke-virtual {v9, v3}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->turnOn(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_93
.end method
