.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PrevAlarm;,
        Lcom/android/server/AlarmManagerService$EmergencyReceiver;,
        Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$AlarmEntryDump;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$AlarmStat;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$Constants;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field private static ALARM_STAT_MAX_ALARMS_ALLOWED:I = 0x0

.field private static final ALARM_WAKEUP_LOCATOR_NSFLP:I = 0x4

.field private static APP_SYNC_LOG:Z = false

.field private static APP_SYNC_NewAlarm:Z = false

.field private static APP_SYNC_ON:Z = false

.field private static final DEBUG:Z

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field private static final DEBUG_MID:Z

.field private static final DEBUG_STAT:Z = true

.field static final DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static FACTORY_ON:I = 0x0

.field private static final FACTORY_START:Ljava/lang/String; = "android.intent.action.START_FACTORY_TEST"

.field private static final FACTORY_STOP:Ljava/lang/String; = "android.intent.action.STOP_FACTORY_TEST"

.field static final IS_WAKEUP_MASK:I = 0x25

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field private static final REMOVE_ALARM_EVENT_ALARM_ALLOWED:I = 0x0

.field private static final REMOVE_ALARM_EVENT_ALL_ALLOWED:I = 0x1

.field private static final REVIVAL_ALARM_EVENT:I = 0x2

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_POWEROFF_WAKEUP_MASK:I = 0x20

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field private static final isEngBinary:Z

.field static final localLOGV:Z

.field static final mBackgroundIntent:Landroid/content/Intent;

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field private final CLOCK_PACKAGE:Ljava/lang/String;

.field private final MAX_ALARM_HISTORY:I

.field final RECENT_WAKEUP_PERIOD:J

.field private emergencyAlarmHandler:Landroid/os/Handler;

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AlarmManagerService$AlarmStat;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private mClockelapse:J

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field private mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mEmergencyReceiver:Lcom/android/server/AlarmManagerService$EmergencyReceiver;

.field private mFactoryOnOffControlReceiver:Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field mLastWakeLockUnimportantForLogging:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mNativeData:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextRtcWakeup:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field private final mOperationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAlarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$PrevAlarm;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordClockHistory:Z

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mSendAlarmHistory:[J

.field private final mService:Landroid/os/IBinder;

.field private final mSetAlarmHistory:[J

.field mStartCurrentDelayTime:J

.field private mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWhitelistPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, mBackgroundIntent:Landroid/content/Intent;

    .line 145
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 375
    sput v2, FACTORY_ON:I

    .line 379
    sput-boolean v1, APP_SYNC_ON:Z

    .line 380
    sput-boolean v2, APP_SYNC_LOG:Z

    .line 382
    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, isEngBinary:Z

    .line 383
    sput-boolean v2, APP_SYNC_NewAlarm:Z

    .line 397
    const/16 v0, 0x1f4

    sput v0, ALARM_STAT_MAX_ALARMS_ALLOWED:I

    .line 411
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_63

    move v0, v1

    :goto_3c
    sput-boolean v0, DEBUG:Z

    .line 412
    const-string v0, "0x494d"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    move v0, v1

    :goto_4e
    sput-boolean v0, DEBUG_MID:Z

    .line 414
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_58

    sget-boolean v0, DEBUG_MID:Z

    if-eqz v0, :cond_59

    :cond_58
    move v2, v1

    :cond_59
    sput-boolean v2, WAKEUP_STATS:Z

    .line 803
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void

    :cond_63
    move v0, v2

    .line 411
    goto :goto_3c

    :cond_65
    move v0, v2

    .line 412
    goto :goto_4e
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 813
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mLog:Lcom/android/internal/util/LocalLog;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTriggeredUids:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mBlockedUids:Ljava/util/ArrayList;

    .line 161
    iput v2, p0, mBroadcastRefCount:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mInFlight:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 170
    new-instance v0, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, mInteractive:Z

    .line 187
    iput-object v3, p0, mLocationManager:Landroid/location/LocationManager;

    .line 194
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 201
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 210
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mWhitelistPackages:Ljava/util/Set;

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPriorities:Ljava/util/HashMap;

    .line 369
    iput v2, p0, mCurrentSeq:I

    .line 387
    const-string v0, "com.sec.android.app.clockpackage"

    iput-object v0, p0, CLOCK_PACKAGE:Ljava/lang/String;

    .line 388
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_fa

    const/16 v0, 0xa

    :goto_87
    iput v0, p0, MAX_ALARM_HISTORY:I

    .line 389
    iget v0, p0, MAX_ALARM_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, mSetAlarmHistory:[J

    .line 390
    iget v0, p0, MAX_ALARM_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, mSendAlarmHistory:[J

    .line 391
    iput-boolean v2, p0, mRecordClockHistory:Z

    .line 392
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mClockelapse:J

    .line 398
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mAlarmStats:Landroid/util/SparseArray;

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mOperationsMap:Ljava/util/Map;

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingAlarmList:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mRecentWakeups:Ljava/util/LinkedList;

    .line 428
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, RECENT_WAKEUP_PERIOD:J

    .line 742
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAlarmBatches:Ljava/util/ArrayList;

    .line 808
    iput-object v3, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 809
    iput-object v3, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1068
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mBroadcastStats:Landroid/util/SparseArray;

    .line 1071
    iput v2, p0, mNumDelayedAlarms:I

    .line 1072
    iput-wide v4, p0, mTotalDelayTime:J

    .line 1073
    iput-wide v4, p0, mMaxDelayTime:J

    .line 1566
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 3627
    new-instance v0, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, emergencyAlarmHandler:Landroid/os/Handler;

    .line 814
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, p0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 815
    return-void

    .line 388
    :cond_fa
    const/16 v0, 0x32

    goto :goto_87
.end method

.method private SetSyncScheduler()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 961
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisableAppSync"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    move v0, v1

    .line 963
    .local v0, "enableAppSync":Z
    :goto_f
    if-eqz v0, :cond_23

    .line 965
    sput-boolean v1, APP_SYNC_ON:Z

    .line 966
    const-string v2, "AlarmManager"

    const-string v3, "___AppSync ACTIVATED___"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    sget-boolean v2, isEngBinary:Z

    if-eqz v2, :cond_20

    sput-boolean v1, APP_SYNC_LOG:Z

    .line 974
    :cond_20
    :goto_20
    return-void

    .end local v0    # "enableAppSync":Z
    :cond_21
    move v0, v2

    .line 961
    goto :goto_f

    .line 971
    .restart local v0    # "enableAppSync":Z
    :cond_23
    sput-boolean v2, APP_SYNC_ON:Z

    .line 972
    const-string v1, "AlarmManager"

    const-string v2, "___AppSync DEACTIVATED___"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 121
    invoke-direct {p0, p1}, getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    invoke-direct {p0}, sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 121
    sget-boolean v0, APP_SYNC_ON:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    iget-object v0, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;JI)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    iget-object v0, p0, mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 121
    sput p0, FACTORY_ON:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, removeDisallowedAlarmList(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    invoke-direct {p0}, restoreDisallowedAlarmList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    iget-object v0, p0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    iget-object v0, p0, emergencyAlarmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    iget-object v0, p0, mWhitelistPackages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;JJ)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, setBootAlarm(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    iget-object v0, p0, mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 121
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;J)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 121
    invoke-direct {p0, p1}, filtQuickBootAlarms(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 121
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .registers 4
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 845
    .local v0, "index":I
    if-gez v0, :cond_c

    .line 846
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 848
    :cond_c
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 849
    if-nez v0, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V
    .registers 12
    .param p1, "reqAlarm"    # Lcom/android/server/AlarmManagerService$PrevAlarm;

    .prologue
    .line 3815
    iget-object v6, p1, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3816
    .local v1, "operation":Landroid/app/PendingIntent;
    if-nez v1, :cond_7

    .line 3844
    :cond_6
    :goto_6
    return-void

    .line 3819
    :cond_7
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    .line 3820
    .local v5, "reqPackage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_6a

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3822
    .local v4, "reqAction":Ljava/lang/String;
    :goto_19
    iget-object v6, p0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    const/4 v7, 0x7

    invoke-virtual {v6, v5, v4, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3824
    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v6, p0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v6, v5, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3827
    :cond_32
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3828
    :try_start_35
    iget-object v6, p0, mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$PrevAlarm;

    .line 3829
    .local v2, "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    iget-object v6, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 3830
    iget-object v6, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 3831
    .local v3, "pendingAction":Ljava/lang/String;
    if-nez v4, :cond_6c

    if-nez v3, :cond_6c

    .line 3832
    monitor-exit v7

    goto :goto_6

    .line 3843
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v3    # "pendingAction":Ljava/lang/String;
    :catchall_67
    move-exception v6

    monitor-exit v7
    :try_end_69
    .catchall {:try_start_35 .. :try_end_69} :catchall_67

    throw v6

    .line 3820
    .end local v4    # "reqAction":Ljava/lang/String;
    :cond_6a
    const/4 v4, 0x0

    goto :goto_19

    .line 3833
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .restart local v3    # "pendingAction":Ljava/lang/String;
    .restart local v4    # "reqAction":Ljava/lang/String;
    :cond_6c
    if-eqz v4, :cond_3b

    if-eqz v3, :cond_3b

    .line 3834
    :try_start_70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 3835
    monitor-exit v7

    goto :goto_6

    .line 3840
    .end local v2    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v3    # "pendingAction":Ljava/lang/String;
    :cond_78
    const-string v6, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add pending alarm list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService$PrevAlarm;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    iget-object v6, p0, mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3843
    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_70 .. :try_end_9a} :catchall_67

    goto/16 :goto_6
.end method

.method private checkMaliciousAppLocked()V
    .registers 13

    .prologue
    .line 1263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1264
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    .line 1267
    .local v5, "isApp":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget-object v10, p0, mAlarmStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_1f

    .line 1268
    iget-object v10, p0, mAlarmStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$AlarmStat;

    .line 1269
    .local v8, "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    const/4 v10, 0x0

    iput v10, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->count:I

    .line 1267
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1272
    .end local v8    # "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    :cond_1f
    iget-object v10, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1273
    .local v2, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 1274
    .local v0, "N":I
    const/4 v3, 0x0

    :goto_36
    if-ge v3, v0, :cond_25

    .line 1275
    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v1

    .line 1276
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 1277
    .local v6, "key":I
    iget-object v10, p0, mAlarmStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$AlarmStat;

    .line 1278
    .restart local v8    # "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    if-nez v8, :cond_54

    .line 1279
    new-instance v8, Lcom/android/server/AlarmManagerService$AlarmStat;

    .end local v8    # "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    iget v10, v1, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    invoke-direct {v8, v6, v10}, Lcom/android/server/AlarmManagerService$AlarmStat;-><init>(II)V

    .line 1280
    .restart local v8    # "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    iget-object v10, p0, mAlarmStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1282
    :cond_54
    iget v10, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->count:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->count:I

    .line 1274
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 1286
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v6    # "key":I
    .end local v8    # "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    :cond_5d
    iget-object v10, p0, mAlarmStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$AlarmStat;

    .line 1287
    .restart local v8    # "stat":Lcom/android/server/AlarmManagerService$AlarmStat;
    if-eqz v8, :cond_af

    .line 1288
    iget v10, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->count:I

    if-lez v10, :cond_af

    iget v10, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->count:I

    sget v11, ALARM_STAT_MAX_ALARMS_ALLOWED:I

    rem-int/2addr v10, v11

    if-nez v10, :cond_af

    .line 1289
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!@Too many alarms ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") registered from pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/AlarmManagerService$AlarmStat;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1291
    .local v7, "msg":Ljava/lang/String;
    const-string v10, "AlarmManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-direct {p0, v9}, dumpAlarmsLocked(I)V

    .line 1294
    if-eqz v5, :cond_af

    .line 1295
    new-instance v10, Ljava/lang/SecurityException;

    invoke-direct {v10, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1299
    .end local v7    # "msg":Ljava/lang/String;
    :cond_af
    return-void
.end method

.method private native clear(JIJJ)V
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .registers 9
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 818
    if-eq p2, v0, :cond_8

    if-eqz p2, :cond_8

    const/4 v1, 0x5

    if-ne p2, v1, :cond_15

    .line 820
    .local v0, "isRtc":Z
    :cond_8
    :goto_8
    if-eqz v0, :cond_14

    .line 821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 823
    :cond_14
    return-wide p0

    .line 818
    .end local v0    # "isRtc":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 19
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2619
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_49

    .line 2620
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2621
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 2622
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2623
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2619
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2626
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_49
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 19
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2596
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_43

    .line 2597
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2598
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2599
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2596
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2602
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_43
    return-void
.end method

.method private dumpAlarmsLocked(I)V
    .registers 14
    .param p1, "uid"    # I

    .prologue
    .line 1226
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1227
    .local v4, "dumps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AlarmManagerService$AlarmEntryDump;>;"
    const/4 v8, 0x0

    .line 1229
    .local v8, "maxCount":I
    iget-object v9, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 1230
    .local v3, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 1231
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    if-ge v5, v0, :cond_c

    .line 1232
    invoke-virtual {v3, v5}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v1

    .line 1233
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-eq v9, p1, :cond_2a

    .line 1231
    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1237
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v7

    .line 1238
    .local v7, "kid":I
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;

    .line 1239
    .local v2, "aed":Lcom/android/server/AlarmManagerService$AlarmEntryDump;
    if-nez v2, :cond_4c

    .line 1240
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;

    .end local v2    # "aed":Lcom/android/server/AlarmManagerService$AlarmEntryDump;
    invoke-direct {v2}, Lcom/android/server/AlarmManagerService$AlarmEntryDump;-><init>()V

    .line 1241
    .restart local v2    # "aed":Lcom/android/server/AlarmManagerService$AlarmEntryDump;
    invoke-virtual {v4, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iput-object v9, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->pi:Landroid/app/PendingIntent;

    .line 1245
    :cond_4c
    iget v9, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I

    .line 1246
    iget v9, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I

    if-ge v8, v9, :cond_58

    iget v8, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_58} :catch_d2

    :cond_58
    goto :goto_27

    .line 1252
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "aed":Lcom/android/server/AlarmManagerService$AlarmEntryDump;
    .end local v3    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v5    # "i":I
    .end local v7    # "kid":I
    :cond_59
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5a
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_d1

    .line 1253
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;

    .line 1254
    .restart local v2    # "aed":Lcom/android/server/AlarmManagerService$AlarmEntryDump;
    const/4 v9, 0x1

    if-le v8, v9, :cond_a0

    iget v9, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I

    if-ne v8, v9, :cond_a0

    .line 1255
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!@#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " alarm(s) for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :goto_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 1257
    :cond_a0
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->count:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " alarm(s) for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/AlarmManagerService$AlarmEntryDump;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 1260
    .end local v2    # "aed":Lcom/android/server/AlarmManagerService$AlarmEntryDump;
    :cond_d1
    return-void

    .line 1247
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v3    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :catch_d2
    move-exception v9

    goto/16 :goto_27
.end method

.method private filtQuickBootAlarms(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3089
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3090
    .local v2, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3091
    const-string v3, "com.android.deskclock"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3093
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_4e

    .line 3094
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3096
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 3097
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3098
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ignore -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 3101
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4e
    return-void
.end method

.method private findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 11

    .prologue
    .line 2092
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2093
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_2a

    .line 2094
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2095
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 2096
    .local v4, "intervalTime":J
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->isRtcPowerOffWakeup()Z

    move-result v3

    if-eqz v3, :cond_27

    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v4, v6

    if-lez v3, :cond_27

    .line 2100
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "intervalTime":J
    :goto_26
    return-object v1

    .line 2093
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v4    # "intervalTime":J
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2100
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "intervalTime":J
    :cond_2a
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 5

    .prologue
    .line 2081
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2082
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1b

    .line 2083
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2084
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2088
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_17
    return-object v1

    .line 2082
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2088
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 2232
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "EHm"

    .line 2233
    .local v1, "skeleton":Ljava/lang/String;
    :goto_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2234
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_18

    const-string v2, ""

    :goto_14
    return-object v2

    .line 2232
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_15
    const-string v1, "Ehma"

    goto :goto_8

    .line 2234
    .restart local v0    # "pattern":Ljava/lang/String;
    .restart local v1    # "skeleton":Ljava/lang/String;
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14
.end method

.method static fuzzForDuration(J)I
    .registers 4
    .param p0, "duration"    # J

    .prologue
    .line 2914
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 2917
    long-to-int v0, p0

    .line 2923
    :goto_8
    return v0

    .line 2918
    :cond_9
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    .line 2920
    const v0, 0xdbba0

    goto :goto_8

    .line 2923
    :cond_14
    const v0, 0x1b7740

    goto :goto_8
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 3484
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 3485
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    .line 3486
    .local v2, "uid":I
    iget-object v4, p0, mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 3487
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_1c

    .line 3488
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3489
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3491
    :cond_1c
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3492
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_2c

    .line 3493
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 3494
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    :cond_2c
    return-object v0
.end method

.method private native init()J
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 2605
    packed-switch p0, :pswitch_data_16

    .line 2614
    :pswitch_3
    const-string v0, "--unknown--"

    :goto_5
    return-object v0

    .line 2606
    :pswitch_6
    const-string v0, "RTC"

    goto :goto_5

    .line 2607
    :pswitch_9
    const-string v0, "RTC_WAKEUP"

    goto :goto_5

    .line 2608
    :pswitch_c
    const-string v0, "ELAPSED"

    goto :goto_5

    .line 2609
    :pswitch_f
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_5

    .line 2610
    :pswitch_12
    const-string v0, "RTC_POWEROFF_WAKEUP"

    goto :goto_5

    .line 2605
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_12
    .end packed-switch
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .registers 14
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 2045
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2046
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2047
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2048
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2049
    .local v4, "nowELAPSED":J
    iget-object v2, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2050
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_1b
    if-ge v11, v0, :cond_4f

    .line 2051
    iget-object v2, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 2052
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2053
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2054
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2055
    const-string v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2050
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 2058
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_4f
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .registers 12
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 833
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_17

    sub-long v0, p2, p0

    .line 836
    .local v0, "futurity":J
    :goto_8
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 837
    const-wide/16 v0, 0x0

    .line 839
    :cond_10
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_17
    move-wide v0, p4

    .line 833
    goto :goto_8
.end method

.method private removeDisallowedAlarmList(I)V
    .registers 15
    .param p1, "allowed"    # I

    .prologue
    const/4 v9, 0x1

    .line 3734
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3735
    :try_start_4
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3736
    .local v4, "numBatches":I
    const/4 v2, 0x0

    .local v2, "nextBatch":I
    :goto_b
    if-ge v2, v4, :cond_16f

    .line 3737
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3738
    .local v3, "numAlarms":I
    const/4 v1, 0x0

    .local v1, "nextAlarm":I
    :goto_1c
    if-ge v1, v3, :cond_15c

    .line 3739
    const-string v8, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "start Remove Alarm Index : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3741
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    iget v8, v8, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_159

    move v6, v9

    .line 3742
    .local v6, "standAlone":Z
    :goto_8a
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 3743
    .local v7, "type":I
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3745
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12, p1}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_155

    .line 3747
    const-string v8, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "remove Disallowed Alarm List : pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", act="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Index=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_130

    .line 3751
    const/4 v8, 0x1

    iput-boolean v8, p0, mNextAlarmClockMayChange:Z

    .line 3753
    :cond_130
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3755
    new-instance v8, Lcom/android/server/AlarmManagerService$PrevAlarm;

    invoke-direct {v8, p0, v0, v6}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Z)V

    invoke-direct {p0, v8}, addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V

    .line 3756
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3757
    add-int/lit8 v1, v1, -0x1

    .line 3738
    :cond_155
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1c

    .line 3741
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "standAlone":Z
    .end local v7    # "type":I
    :cond_159
    const/4 v6, 0x0

    goto/16 :goto_8a

    .line 3760
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_15c
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v8, v4, v8

    sub-int/2addr v2, v8

    .line 3761
    iget-object v8, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3736
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 3763
    .end local v1    # "nextAlarm":I
    .end local v3    # "numAlarms":I
    :cond_16f
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 3764
    monitor-exit v10

    .line 3765
    return-void

    .line 3764
    .end local v2    # "nextBatch":I
    .end local v4    # "numBatches":I
    :catchall_174
    move-exception v8

    monitor-exit v10
    :try_end_176
    .catchall {:try_start_4 .. :try_end_176} :catchall_174

    throw v8
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 2289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, removeLocked(Landroid/app/PendingIntent;Z)V

    .line 2290
    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Z)V
    .registers 16
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "cancel"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 2293
    if-eqz p2, :cond_71

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.sec.android.app.clockpackage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    move v4, v8

    .line 2294
    .local v4, "isClock":Z
    :goto_11
    const/4 v2, 0x0

    .line 2296
    .local v2, "didRemove":Z
    const/4 v5, 0x0

    .line 2343
    .local v5, "needRebatch":Z
    iget-object v7, p0, mOperationsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2344
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v0, :cond_4f

    .line 2345
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->batch:Lcom/android/server/AlarmManagerService$Batch;

    .line 2347
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2348
    if-eqz v4, :cond_36

    .line 2349
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {p0, v10, v11}, removeSetAlarmFromHistoryLocked(J)V

    .line 2351
    :cond_36
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v9, 0x5

    if-ne v7, v9, :cond_3f

    .line 2352
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mNextRtcWakeup:J

    .line 2354
    :cond_3f
    invoke-virtual {v1, v0}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 2355
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v7

    if-nez v7, :cond_73

    .line 2356
    iget-object v7, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2363
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_4f
    :goto_4f
    iget-object v7, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_57
    if-ltz v3, :cond_75

    .line 2364
    iget-object v7, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 2366
    iget-object v7, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2363
    :cond_6e
    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 2293
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "didRemove":Z
    .end local v3    # "i":I
    .end local v4    # "isClock":Z
    .end local v5    # "needRebatch":Z
    :cond_71
    const/4 v4, 0x0

    goto :goto_11

    .line 2358
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "didRemove":Z
    .restart local v4    # "isClock":Z
    .restart local v5    # "needRebatch":Z
    :cond_73
    const/4 v5, 0x1

    goto :goto_4f

    .line 2370
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v3    # "i":I
    :cond_75
    if-eqz v2, :cond_d0

    .line 2372
    sget-boolean v7, APP_SYNC_ON:Z

    if-eqz v7, :cond_84

    iget-object v7, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v7, :cond_84

    .line 2373
    iget-object v7, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v7, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    .line 2380
    :cond_84
    const/4 v6, 0x0

    .line 2381
    .local v6, "restorePending":Z
    iget-object v7, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_96

    iget-object v7, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 2382
    iput-object v12, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2383
    const/4 v6, 0x1

    .line 2386
    :cond_96
    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_a6

    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 2387
    iput-object v12, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2390
    :cond_a6
    if-eqz v5, :cond_ab

    .line 2391
    invoke-virtual {p0, v8}, rebatchAllAlarmsLocked(Z)V

    .line 2394
    :cond_ab
    if-eqz v6, :cond_ca

    .line 2395
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove mPendingIdleUntil :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    invoke-virtual {p0}, restorePendingWhileIdleAlarmsLocked()V

    .line 2399
    :cond_ca
    invoke-virtual {p0}, rescheduleKernelAlarmsLocked()V

    .line 2400
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 2402
    .end local v6    # "restorePending":Z
    :cond_d0
    return-void
.end method

.method private restoreDisallowedAlarmList()V
    .registers 27

    .prologue
    .line 3768
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3769
    :try_start_7
    const-string v4, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Pending Alarm Start : size("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingAlarmList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AlarmManagerService$PrevAlarm;

    .line 3771
    .local v19, "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_39

    .line 3772
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 3773
    .local v5, "type":I
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3774
    .local v6, "triggerAtTime":J
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v22, v0

    .line 3775
    .local v22, "whenElapsed":J
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v4, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 3776
    .local v8, "windowLength":J
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3777
    .local v10, "interval":J
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3778
    .local v12, "operation":Landroid/app/PendingIntent;
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mIsStandalone:Z

    if-eqz v4, :cond_12f

    const/4 v13, 0x1

    .line 3779
    .local v13, "flags":I
    :goto_78
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3780
    .local v14, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v15, v4, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3781
    .local v15, "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v16, v0

    .line 3782
    .local v16, "uid":I
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v20

    .line 3783
    .local v20, "targetPkg":Ljava/lang/String;
    const-string v4, "AlarmManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", triggerAtTime="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", whenElapsed="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    move-object/from16 v0, p0

    iget-object v4, v0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 3787
    const-string v4, "AlarmManager"

    const-string/jumbo v24, "restoreDisallowedAlarmList(send Boot)"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    new-instance v18, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3789
    .local v18, "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3790
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v24, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3793
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_108
    const/4 v4, 0x2

    if-eq v5, v4, :cond_10e

    const/4 v4, 0x3

    if-ne v5, v4, :cond_132

    .line 3794
    :cond_10e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    cmp-long v4, v6, v24

    if-gez v4, :cond_125

    .line 3795
    const-string v4, "AlarmManager"

    const-string v24, "checkValidPackage(USER_ALLOW): false"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3797
    const-wide/16 v8, 0x0

    :cond_125
    :goto_125
    move-object/from16 v4, p0

    .line 3806
    invoke-virtual/range {v4 .. v16}, setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    goto/16 :goto_39

    .line 3811
    .end local v5    # "type":I
    .end local v6    # "triggerAtTime":J
    .end local v8    # "windowLength":J
    .end local v10    # "interval":J
    .end local v12    # "operation":Landroid/app/PendingIntent;
    .end local v13    # "flags":I
    .end local v14    # "workSource":Landroid/os/WorkSource;
    .end local v15    # "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v16    # "uid":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "whenElapsed":J
    :catchall_12c
    move-exception v4

    monitor-exit v21
    :try_end_12e
    .catchall {:try_start_7 .. :try_end_12e} :catchall_12c

    throw v4

    .line 3778
    .restart local v5    # "type":I
    .restart local v6    # "triggerAtTime":J
    .restart local v8    # "windowLength":J
    .restart local v10    # "interval":J
    .restart local v12    # "operation":Landroid/app/PendingIntent;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .restart local v22    # "whenElapsed":J
    :cond_12f
    const/4 v13, 0x0

    goto/16 :goto_78

    .line 3800
    .restart local v13    # "flags":I
    .restart local v14    # "workSource":Landroid/os/WorkSource;
    .restart local v15    # "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v16    # "uid":I
    .restart local v20    # "targetPkg":Ljava/lang/String;
    :cond_132
    :try_start_132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    cmp-long v4, v6, v24

    if-gez v4, :cond_125

    .line 3801
    const-string v4, "AlarmManager"

    const-string v24, "checkValidPackage(USER_ALLOW): false"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3803
    const-wide/16 v8, 0x0

    goto :goto_125

    .line 3810
    .end local v5    # "type":I
    .end local v6    # "triggerAtTime":J
    .end local v8    # "windowLength":J
    .end local v10    # "interval":J
    .end local v12    # "operation":Landroid/app/PendingIntent;
    .end local v13    # "flags":I
    .end local v14    # "workSource":Landroid/os/WorkSource;
    .end local v15    # "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v16    # "uid":I
    .end local v19    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v22    # "whenElapsed":J
    :cond_14a
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3811
    monitor-exit v21
    :try_end_152
    .catchall {:try_start_132 .. :try_end_152} :catchall_12c

    .line 3812
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .registers 9

    .prologue
    .line 2201
    iget-object v3, p0, mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2202
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2204
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2205
    :try_start_8
    iget-object v5, p0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2206
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_23

    .line 2207
    iget-object v5, p0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 2208
    .local v4, "userId":I
    iget-object v5, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2206
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2210
    .end local v4    # "userId":I
    :cond_23
    iget-object v5, p0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2211
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_61

    .line 2213
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2214
    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v0, :cond_64

    .line 2215
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2216
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2217
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2222
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2214
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 2211
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_61
    move-exception v5

    :try_start_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v5

    .line 2225
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_64
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private native setBootAlarm(JLjava/lang/String;)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 44
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "flags"    # I
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "uid"    # I

    .prologue
    .line 1413
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    move/from16 v16, p13

    move-object/from16 v17, p16

    move/from16 v18, p17

    invoke-direct/range {v2 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 1417
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    sget-boolean v3, APP_SYNC_ON:Z

    if-eqz v3, :cond_155

    move-object/from16 v0, p0

    iget-object v3, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v3, :cond_155

    if-nez p16, :cond_155

    sget-boolean v3, APP_SYNC_NewAlarm:Z

    if-eqz v3, :cond_155

    .line 1418
    const/4 v3, 0x0

    sput-boolean v3, APP_SYNC_NewAlarm:Z

    .line 1419
    sget-boolean v3, APP_SYNC_LOG:Z

    if-eqz v3, :cond_114

    .line 1420
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 1421
    .local v24, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v20, v4, v6

    .line 1422
    .local v20, "TIME_SKEW":J
    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_4a

    const-wide/16 v20, 0x0

    .end local v20    # "TIME_SKEW":J
    :cond_4a
    add-long v4, v4, v20

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1423
    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v25

    .line 1424
    .local v25, "timeStr":Ljava/lang/String;
    cmp-long v3, p4, p8

    if-nez v3, :cond_14b

    const-string/jumbo v19, "setExact"

    .line 1426
    .local v19, "callStr":Ljava/lang/String;
    :goto_5c
    :try_start_5c
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (T:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_114} :catch_150

    .line 1435
    .end local v19    # "callStr":Ljava/lang/String;
    .end local v24    # "time":Landroid/text/format/Time;
    .end local v25    # "timeStr":Ljava/lang/String;
    :cond_114
    :goto_114
    move-object/from16 v0, p0

    iget-object v3, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForNonAdjustableAlarm(Landroid/app/PendingIntent;J)Z

    move-result v23

    .line 1439
    .local v23, "isNonAdjustableAlarm":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, removeLocked(Landroid/app/PendingIntent;)V

    .line 1441
    if-nez v23, :cond_133

    .line 1445
    move-object/from16 v0, p0

    iget-object v3, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1454
    .end local v23    # "isNonAdjustableAlarm":Z
    :cond_133
    :goto_133
    move-object/from16 v0, p0

    iget-object v3, v0, mOperationsMap:Ljava/util/Map;

    invoke-virtual/range {p12 .. p12}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v2, v3, v1}, setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1458
    return-object v2

    .line 1424
    .restart local v24    # "time":Landroid/text/format/Time;
    .restart local v25    # "timeStr":Ljava/lang/String;
    :cond_14b
    const-string/jumbo v19, "setWindow/setInexact"

    goto/16 :goto_5c

    .line 1431
    .restart local v19    # "callStr":Ljava/lang/String;
    :catch_150
    move-exception v22

    .line 1432
    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_114

    .line 1450
    .end local v19    # "callStr":Ljava/lang/String;
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "time":Landroid/text/format/Time;
    .end local v25    # "timeStr":Ljava/lang/String;
    :cond_155
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, removeLocked(Landroid/app/PendingIntent;)V

    goto :goto_133
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .registers 16
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .prologue
    .line 1462
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_a7

    .line 1467
    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_1e

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_1e

    .line 1468
    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1471
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1472
    .local v4, "nowElapsed":J
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, fuzzForDuration(J)I

    move-result v2

    .line 1473
    .local v2, "fuzz":I
    if-lez v2, :cond_48

    .line 1474
    iget-object v7, p0, mRandom:Ljava/util/Random;

    if-nez v7, :cond_36

    .line 1475
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iput-object v7, p0, mRandom:Ljava/util/Random;

    .line 1477
    :cond_36
    iget-object v7, p0, mRandom:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1478
    .local v1, "delta":I
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1486
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1502
    .end local v1    # "delta":I
    .end local v2    # "fuzz":I
    .end local v4    # "nowElapsed":J
    :cond_48
    iget-object v7, p0, mOperationsMap:Ljava/util/Map;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b7

    const/4 v6, -0x1

    .line 1507
    .local v6, "whichBatch":I
    :goto_5e
    if-gez v6, :cond_c0

    .line 1508
    new-instance v0, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1509
    .local v0, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v7, v0}, addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1520
    :cond_6a
    :goto_6a
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_71

    .line 1521
    const/4 v7, 0x1

    iput-boolean v7, p0, mNextAlarmClockMayChange:Z

    .line 1524
    :cond_71
    const/4 v3, 0x0

    .line 1526
    .local v3, "needRebatch":Z
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_d9

    .line 1527
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Assign mPendingIdleUntil :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iput-object p1, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1529
    iget-object v7, p0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 1530
    const/4 v3, 0x1

    .line 1543
    :cond_98
    :goto_98
    if-nez p2, :cond_a6

    .line 1557
    if-eqz v3, :cond_a0

    .line 1558
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, rebatchAllAlarmsLocked(Z)V

    .line 1561
    :cond_a0
    invoke-virtual {p0}, rescheduleKernelAlarmsLocked()V

    .line 1562
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 1564
    .end local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "needRebatch":Z
    .end local v6    # "whichBatch":I
    :cond_a6
    :goto_a6
    return-void

    .line 1489
    :cond_a7
    iget-object v7, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_48

    .line 1492
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0xe

    if-nez v7, :cond_48

    .line 1496
    iget-object v7, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 1505
    :cond_b7
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v8, v9, v10, v11}, attemptCoalesceLocked(JJ)I

    move-result v6

    goto :goto_5e

    .line 1511
    .restart local v6    # "whichBatch":I
    :cond_c0
    iget-object v7, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1512
    .restart local v0    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 1515
    iget-object v7, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1516
    iget-object v7, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v7, v0}, addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_6a

    .line 1531
    .restart local v3    # "needRebatch":Z
    :cond_d9
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_98

    .line 1532
    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_ed

    iget-object v7, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_98

    .line 1533
    :cond_ed
    iput-object p1, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1537
    iget-object v7, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v7, :cond_98

    .line 1538
    const/4 v3, 0x1

    goto :goto_98
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v2, 0x3e8

    .line 2563
    iget-wide v0, p0, mNativeData:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_71

    .line 2567
    cmp-long v0, p2, v10

    if-gez v0, :cond_69

    .line 2568
    const-wide/16 v4, 0x0

    .line 2569
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 2574
    .local v6, "alarmNanoseconds":J
    :goto_13
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmManager_setLocked to type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curELAPSED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    iget-wide v1, p0, mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, set(JIJJ)V

    .line 2579
    iget-boolean v0, p0, mRecordClockHistory:Z

    if-eqz v0, :cond_68

    iget-wide v0, p0, mClockelapse:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_68

    .line 2580
    const/4 v0, 0x0

    iput-boolean v0, p0, mRecordClockHistory:Z

    .line 2581
    cmp-long v0, p2, v10

    if-ltz v0, :cond_68

    .line 2582
    invoke-virtual {p0, p2, p3}, addSetAlarmToHistoryLocked(J)V

    .line 2592
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_68
    :goto_68
    return-void

    .line 2571
    :cond_69
    div-long v4, p2, v2

    .line 2572
    .restart local v4    # "alarmSeconds":J
    rem-long v0, p2, v2

    mul-long/2addr v0, v2

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_13

    .line 2586
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_71
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 2587
    .local v8, "msg":Landroid/os/Message;
    iput v9, v8, Landroid/os/Message;->what:I

    .line 2589
    iget-object v0, p0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2590
    iget-object v0, p0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_68
.end method

.method private updateNextAlarmClockLocked()V
    .registers 14

    .prologue
    .line 2119
    iget-boolean v12, p0, mNextAlarmClockMayChange:Z

    if-nez v12, :cond_5

    .line 2170
    :cond_4
    return-void

    .line 2122
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, mNextAlarmClockMayChange:Z

    .line 2124
    iget-object v10, p0, mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2125
    .local v10, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 2127
    iget-object v12, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2128
    .local v1, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_14
    if-ge v7, v1, :cond_48

    .line 2129
    iget-object v12, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 2130
    .local v5, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2132
    .local v0, "M":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v0, :cond_45

    .line 2133
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2134
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v12, :cond_42

    .line 2135
    iget v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2144
    .local v11, "userId":I
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_42

    .line 2145
    iget-object v12, v4, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2132
    .end local v11    # "userId":I
    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 2128
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 2152
    .end local v0    # "M":I
    .end local v5    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v8    # "j":I
    :cond_48
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2153
    .local v2, "NN":I
    const/4 v7, 0x0

    :goto_4d
    if-ge v7, v2, :cond_6d

    .line 2154
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2155
    .local v9, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 2156
    .restart local v11    # "userId":I
    iget-object v12, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2157
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6a

    .line 2158
    invoke-direct {p0, v11, v9}, updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2153
    :cond_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 2163
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v9    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v11    # "userId":I
    :cond_6d
    iget-object v12, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2164
    .local v3, "NNN":I
    add-int/lit8 v7, v3, -0x1

    :goto_75
    if-ltz v7, :cond_4

    .line 2165
    iget-object v12, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 2166
    .restart local v11    # "userId":I
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_87

    .line 2167
    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2164
    :cond_87
    add-int/lit8 v7, v7, -0x1

    goto :goto_75
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v2, 0x4

    .line 2174
    if-eqz p2, :cond_19

    .line 2179
    iget-object v0, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2187
    :goto_8
    iget-object v0, p0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2188
    iget-object v0, p0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2189
    iget-object v0, p0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 2190
    return-void

    .line 2184
    :cond_19
    iget-object v0, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8
.end method

.method private validateConsistencyLocked()Z
    .registers 2

    .prologue
    .line 2077
    const/4 v0, 0x1

    return v0
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method addSendAlarmToHistoryLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3620
    iget-object v2, p0, mSendAlarmHistory:[J

    iget-object v3, p0, mSendAlarmHistory:[J

    const/4 v4, 0x1

    iget v5, p0, MAX_ALARM_HISTORY:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3622
    .local v0, "time":J
    iget-object v2, p0, mSendAlarmHistory:[J

    aput-wide v0, v2, v6

    .line 3623
    return-void
.end method

.method addSetAlarmToHistoryLocked(J)V
    .registers 8
    .param p1, "when"    # J

    .prologue
    const/4 v4, 0x0

    .line 3615
    iget-object v0, p0, mSetAlarmHistory:[J

    iget-object v1, p0, mSetAlarmHistory:[J

    const/4 v2, 0x1

    iget v3, p0, MAX_ALARM_HISTORY:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3616
    iget-object v0, p0, mSetAlarmHistory:[J

    aput-wide p1, v0, v4

    .line 3617
    return-void
.end method

.method attemptCoalesceLocked(JJ)I
    .registers 14
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 854
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 855
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_29

    .line 856
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 857
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_26

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iget-wide v6, p0, mNextNonWakeup:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_26

    .line 861
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_25
    return v2

    .line 855
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 861
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_29
    const/4 v2, -0x1

    goto :goto_25
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 766
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v0, :cond_66

    .line 767
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 770
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v5, "android.intent.action.TIME_TICK"

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 771
    const/4 v2, 0x0

    .line 778
    .local v2, "alarmPrio":I
    :goto_20
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 779
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_32

    iget-object v5, p0, mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 780
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_32
    if-nez v4, :cond_46

    .line 781
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 782
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_46
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 786
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, mCurrentSeq:I

    if-eq v5, v6, :cond_5f

    .line 788
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 789
    iget v5, p0, mCurrentSeq:I

    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 766
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 772
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_57
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v5, :cond_5d

    .line 773
    const/4 v2, 0x1

    .restart local v2    # "alarmPrio":I
    goto :goto_20

    .line 775
    .end local v2    # "alarmPrio":I
    :cond_5d
    const/4 v2, 0x2

    .restart local v2    # "alarmPrio":I
    goto :goto_20

    .line 794
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5f
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v5, :cond_54

    .line 795
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_54

    .line 799
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_66
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .registers 12
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2928
    iget-boolean v3, p0, mInteractive:Z

    if-eqz v3, :cond_6

    .line 2941
    :cond_5
    :goto_5
    return v2

    .line 2931
    :cond_6
    iget-wide v4, p0, mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 2934
    iget-object v3, p0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    iget-wide v4, p0, mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-ltz v3, :cond_5

    .line 2940
    :cond_1c
    iget-wide v4, p0, mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2941
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method

.method checkReleaseWakeLock()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2275
    iget-object v2, p0, mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v2, v3

    .line 2285
    :goto_12
    return v2

    .line 2279
    :cond_13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v2, p0, mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 2280
    iget-object v2, p0, mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2281
    .local v1, "uid":I
    iget-object v2, p0, mBlockedUids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    move v2, v3

    .line 2282
    goto :goto_12

    .line 2279
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2285
    .end local v1    # "uid":I
    :cond_39
    const/4 v2, 0x1

    goto :goto_12
.end method

.method currentNonWakeupFuzzLocked(J)J
    .registers 8
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2900
    iget-wide v2, p0, mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2901
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 2903
    const-wide/32 v2, 0x1d4c0

    .line 2909
    :goto_e
    return-wide v2

    .line 2904
    :cond_f
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    .line 2906
    const-wide/32 v2, 0xdbba0

    goto :goto_e

    .line 2909
    :cond_1a
    const-wide/32 v2, 0x36ee80

    goto :goto_e
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 34
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2945
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastAlarmDeliveryTime:J

    .line 2947
    new-instance v16, Ljava/util/LinkedHashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2949
    .local v16, "canceledList":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_2ae

    .line 2950
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2951
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_bd

    const/4 v14, 0x1

    .line 2953
    .local v14, "allowWhileIdle":Z
    :goto_26
    :try_start_26
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    sget-object v5, mBackgroundIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ALARM_TARGET_TIME"

    iget-wide v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2960
    sget-boolean v5, APP_SYNC_ON:Z

    if-eqz v5, :cond_61

    move-object/from16 v0, p0

    iget-object v5, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v5, :cond_61

    .line 2961
    move-object/from16 v0, p0

    iget-object v5, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    .line 2967
    :cond_61
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_93

    .line 2968
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_93

    .line 2969
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, sendAlarmInform(I)V

    .line 2975
    :cond_93
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_c0

    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_c0

    .line 2976
    const/16 v28, 0x0

    .local v28, "wi":I
    :goto_a1
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_c8

    .line 2977
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2976
    add-int/lit8 v28, v28, 0x1

    goto :goto_a1

    .line 2951
    .end local v14    # "allowWhileIdle":Z
    .end local v28    # "wi":I
    :cond_bd
    const/4 v14, 0x0

    goto/16 :goto_26

    .line 2981
    .restart local v14    # "allowWhileIdle":Z
    :cond_c0
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2987
    :cond_c8
    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_f8

    move-object/from16 v0, p0

    iget-object v5, v0, mWhitelistPackages:Ljava/util/Set;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 2988
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send whitelist package alarm :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_f8
    iget-object v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, mBackgroundIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.ALARM_COUNT"

    iget v9, v13, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v10, 0x0

    if-eqz v14, :cond_218

    move-object/from16 v0, p0

    iget-object v11, v0, mIdleOptions:Landroid/os/Bundle;

    :goto_118
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2998
    move-object/from16 v0, p0

    iget v5, v0, mBroadcastRefCount:I

    if-eqz v5, :cond_12b

    move-object/from16 v0, p0

    iget-object v5, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_140

    .line 2999
    :cond_12b
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 3001
    move-object/from16 v0, p0

    iget-object v5, v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3003
    :cond_140
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v9, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;JI)V

    .line 3008
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v5, v0, mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3009
    move-object/from16 v0, p0

    iget v5, v0, mBroadcastRefCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, mBroadcastRefCount:I

    .line 3010
    move-object/from16 v0, p0

    iget-object v5, v0, mTriggeredUids:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    iget v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3012
    if-eqz v14, :cond_17f

    .line 3014
    move-object/from16 v0, p0

    iget-object v5, v0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-wide/from16 v0, p2

    invoke-virtual {v5, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 3017
    :cond_17f
    iget-object v15, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3018
    .local v15, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3019
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_21b

    .line 3020
    const/4 v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3021
    move-wide/from16 v0, p2

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3025
    :goto_192
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v19, v0

    .line 3026
    .local v19, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3027
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v5, :cond_237

    .line 3028
    const/4 v5, 0x1

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3029
    move-wide/from16 v0, p2

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3033
    :goto_1b1
    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1bf

    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_1bf

    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_233

    .line 3036
    :cond_1bf
    sget-boolean v5, DEBUG_MID:Z

    if-eqz v5, :cond_1db

    .line 3037
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@trigger WAKEUP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_1db
    sget-boolean v5, WAKEUP_STATS:Z

    if-eqz v5, :cond_262

    .line 3040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 3041
    .local v26, "nowRTC":J
    const-wide/32 v6, 0x5265c00

    sub-long v24, v26, v6

    .line 3042
    .local v24, "newEarliest":J
    const/16 v23, 0x0

    .line 3043
    .local v23, "n":I
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_1f2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_206

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 3044
    .local v18, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    cmp-long v5, v6, v24

    if-lez v5, :cond_24e

    .line 3047
    .end local v18    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_206
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_208
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_251

    .line 3048
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 3047
    add-int/lit8 v22, v22, 0x1

    goto :goto_208

    .line 2992
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "j":I
    .end local v23    # "n":I
    .end local v24    # "newEarliest":J
    .end local v26    # "nowRTC":J
    :cond_218
    const/4 v11, 0x0

    goto/16 :goto_118

    .line 3023
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_21b
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_221
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_221} :catch_223
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_221} :catch_243

    goto/16 :goto_192

    .line 3065
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_223
    move-exception v17

    .line 3066
    .local v17, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_233

    .line 3071
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2949
    .end local v17    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_233
    :goto_233
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 3031
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_237
    :try_start_237
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_241
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_237 .. :try_end_241} :catch_223
    .catch Ljava/lang/RuntimeException; {:try_start_237 .. :try_end_241} :catch_243

    goto/16 :goto_1b1

    .line 3074
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_243
    move-exception v17

    .line 3075
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_233

    .line 3045
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v18    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .restart local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v23    # "n":I
    .restart local v24    # "newEarliest":J
    .restart local v26    # "nowRTC":J
    :cond_24e
    add-int/lit8 v23, v23, 0x1

    .line 3046
    goto :goto_1f2

    .line 3050
    .end local v18    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .restart local v22    # "j":I
    :cond_251
    :try_start_251
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v6, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1, v2}, recordWakeupAlarms(Ljava/lang/String;IJ)V

    .line 3052
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "j":I
    .end local v23    # "n":I
    .end local v24    # "newEarliest":J
    .end local v26    # "nowRTC":J
    :cond_262
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3053
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v19

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 3054
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_2a4

    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_2a4

    .line 3055
    const/16 v28, 0x0

    .restart local v28    # "wi":I
    :goto_280
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_233

    .line 3056
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 3055
    add-int/lit8 v28, v28, 0x1

    goto :goto_280

    .line 3061
    .end local v28    # "wi":I
    :cond_2a4
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2ad
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_251 .. :try_end_2ad} :catch_223
    .catch Ljava/lang/RuntimeException; {:try_start_251 .. :try_end_2ad} :catch_243

    goto :goto_233

    .line 3079
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14    # "allowWhileIdle":Z
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v19    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_2ae
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2ee

    .line 3080
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Canceled alarm list has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entrie(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, removeCanceledLocked(Ljava/util/Set;)V

    .line 3082
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    .line 3085
    :cond_2ee
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 61
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v58, v0

    monitor-enter v58

    .line 1751
    :try_start_7
    const-string v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v5, v0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1753
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1756
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1757
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string v5, "  nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1760
    const-string v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    const-string v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1762
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1763
    const-string v5, "  mLastTimeChangeClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, mLastTimeChangeClockTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1764
    const-string v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, mLastTimeChangeClockTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    const-string v5, "  mLastTimeChangeRealtime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    iget-wide v6, v0, mLastTimeChangeRealtime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1767
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1768
    move-object/from16 v0, p0

    iget-boolean v5, v0, mInteractive:Z

    if-nez v5, :cond_f0

    .line 1769
    const-string v5, "  Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-wide v6, v0, mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1771
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1772
    const-string v5, "  Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1774
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1775
    const-string v5, "  Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    move-object/from16 v0, p0

    iget-wide v6, v0, mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1777
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1778
    const-string v5, "  Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    move-object/from16 v0, p0

    iget-wide v6, v0, mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1780
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1783
    :cond_f0
    move-object/from16 v0, p0

    iget-wide v6, v0, mNextWakeup:J

    sub-long v14, v10, v8

    add-long v42, v6, v14

    .line 1784
    .local v42, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, mNextNonWakeup:J

    sub-long v14, v10, v8

    add-long v40, v6, v14

    .line 1785
    .local v40, "nextNonWakeupRTC":J
    const-string v5, "  Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, p0

    iget-wide v6, v0, mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1787
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v40

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    const-string v5, "  Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1789
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v42

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    const-string v5, "  Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1792
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1793
    const-string v5, "  Next alarm clock information: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    new-instance v55, Ljava/util/TreeSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/TreeSet;-><init>()V

    .line 1795
    .local v55, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_16f
    move-object/from16 v0, p0

    iget-object v5, v0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_191

    .line 1796
    move-object/from16 v0, p0

    iget-object v5, v0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1795
    add-int/lit8 v29, v29, 0x1

    goto :goto_16f

    .line 1798
    :cond_191
    const/16 v29, 0x0

    :goto_193
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_1b5

    .line 1799
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1798
    add-int/lit8 v29, v29, 0x1

    goto :goto_193

    .line 1801
    :cond_1b5
    invoke-virtual/range {v55 .. v55}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_1b9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_245

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 1802
    .local v54, "user":I
    move-object/from16 v0, p0

    iget-object v5, v0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1803
    .local v38, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v38, :cond_242

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v50

    .line 1804
    .local v50, "time":J
    :goto_1db
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v39

    .line 1805
    .local v39, "pendingSend":Z
    const-string v5, "    user:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1806
    const-string v5, " pendingSend:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1807
    const-string v5, " time:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1808
    const-wide/16 v6, 0x0

    cmp-long v5, v50, v6

    if-lez v5, :cond_23a

    .line 1809
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v50

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1810
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v50

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1812
    :cond_23a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_1b9

    .line 2041
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v29    # "i":I
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v38    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v39    # "pendingSend":Z
    .end local v40    # "nextNonWakeupRTC":J
    .end local v42    # "nextWakeupRTC":J
    .end local v50    # "time":J
    .end local v54    # "user":I
    .end local v55    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :catchall_23f
    move-exception v5

    monitor-exit v58
    :try_end_241
    .catchall {:try_start_7 .. :try_end_241} :catchall_23f

    throw v5

    .line 1803
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v29    # "i":I
    .restart local v30    # "i$":Ljava/util/Iterator;
    .restart local v38    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v40    # "nextNonWakeupRTC":J
    .restart local v42    # "nextWakeupRTC":J
    .restart local v54    # "user":I
    .restart local v55    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_242
    const-wide/16 v50, 0x0

    goto :goto_1db

    .line 1814
    .end local v38    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v54    # "user":I
    :cond_245
    :try_start_245
    move-object/from16 v0, p0

    iget-object v5, v0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_294

    .line 1815
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1816
    const-string v5, "  Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v5, v0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v5, v0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_26e
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_294

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$Batch;

    .line 1819
    .local v22, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1820
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_26e

    .line 1823
    .end local v22    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_294
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v5, :cond_2a4

    move-object/from16 v0, p0

    iget-object v5, v0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2e7

    .line 1824
    :cond_2a4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1825
    const-string v5, "    Idle mode state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    const-string v5, "      Idling until: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_3fd

    .line 1828
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v13, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v15, "        "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1833
    :goto_2d5
    const-string v5, "      Pending alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v7, "      "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1836
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v5, v0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_311

    .line 1837
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1838
    const-string v5, "  Next wake from idle: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v13, v0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1842
    :cond_311
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1843
    const-string v5, "  Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1844
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_407

    .line 1845
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1850
    :goto_33d
    const-string v5, "    Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1851
    const-string v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1852
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1853
    const-string v5, "    Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1854
    const-string v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    iget-wide v6, v0, mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1856
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1858
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1859
    const-string v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1860
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1862
    const-string v5, "  mAllowWhileIdleMinTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, p0

    iget-wide v6, v0, mAllowWhileIdleMinTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1864
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1865
    move-object/from16 v0, p0

    iget-object v5, v0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-lez v5, :cond_410

    .line 1866
    const-string v5, "  Last allow while idle dispatch times:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    const/16 v29, 0x0

    :goto_3bf
    move-object/from16 v0, p0

    iget-object v5, v0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_410

    .line 1868
    const-string v5, "  UID "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v5, v0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1870
    const-string v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v5, v0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1873
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1867
    add-int/lit8 v29, v29, 0x1

    goto :goto_3bf

    .line 1831
    :cond_3fd
    const-string/jumbo v5, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2d5

    .line 1848
    :cond_407
    const-string v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_33d

    .line 1876
    :cond_410
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1878
    move-object/from16 v0, p0

    iget-object v5, v0, mLog:Lcom/android/internal/util/LocalLog;

    const-string v6, "  Recent problems"

    const-string v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_426

    .line 1879
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1882
    :cond_426
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v52, v0

    .line 1883
    .local v52, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v25, Lcom/android/server/AlarmManagerService$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1894
    .local v25, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v35, 0x0

    .line 1895
    .local v35, "len":I
    const/16 v33, 0x0

    .local v33, "iu":I
    :goto_439
    move-object/from16 v0, p0

    iget-object v5, v0, mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_4ca

    .line 1896
    move-object/from16 v0, p0

    iget-object v5, v0, mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/util/ArrayMap;

    .line 1897
    .local v53, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v31, 0x0

    .local v31, "ip":I
    :goto_453
    invoke-virtual/range {v53 .. v53}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v31

    if-ge v0, v5, :cond_4c6

    .line 1898
    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1899
    .local v23, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v32, 0x0

    .local v32, "is":I
    :goto_467
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_4c3

    .line 1900
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1901
    .local v28, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v35, :cond_4c0

    const/4 v5, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v35

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v44

    .line 1903
    .local v44, "pos":I
    :goto_48e
    if-gez v44, :cond_495

    .line 1904
    move/from16 v0, v44

    neg-int v5, v0

    add-int/lit8 v44, v5, -0x1

    .line 1906
    :cond_495
    move-object/from16 v0, v52

    array-length v5, v0

    move/from16 v0, v44

    if-ge v0, v5, :cond_4bd

    .line 1907
    move-object/from16 v0, v52

    array-length v5, v0

    sub-int v5, v5, v44

    add-int/lit8 v26, v5, -0x1

    .line 1908
    .local v26, "copylen":I
    if-lez v26, :cond_4b2

    .line 1909
    add-int/lit8 v5, v44, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v44

    move-object/from16 v2, v52

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1911
    :cond_4b2
    aput-object v28, v52, v44

    .line 1912
    move-object/from16 v0, v52

    array-length v5, v0

    move/from16 v0, v35

    if-ge v0, v5, :cond_4bd

    .line 1913
    add-int/lit8 v35, v35, 0x1

    .line 1899
    .end local v26    # "copylen":I
    :cond_4bd
    add-int/lit8 v32, v32, 0x1

    goto :goto_467

    .line 1901
    .end local v44    # "pos":I
    :cond_4c0
    const/16 v44, 0x0

    goto :goto_48e

    .line 1897
    .end local v28    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_4c3
    add-int/lit8 v31, v31, 0x1

    goto :goto_453

    .line 1895
    .end local v23    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v32    # "is":I
    :cond_4c6
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_439

    .line 1919
    .end local v31    # "ip":I
    .end local v53    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_4ca
    if-lez v35, :cond_558

    .line 1920
    const-string v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    const/16 v29, 0x0

    :goto_4d5
    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_558

    .line 1922
    aget-object v28, v52, v29

    .line 1923
    .restart local v28    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_4f1

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    :cond_4f1
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1926
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1927
    const-string v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1928
    const-string v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1929
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1931
    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1921
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_4d5

    .line 1936
    .end local v28    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_558
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    const-string v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    .local v45, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v33, 0x0

    :goto_56d
    move-object/from16 v0, p0

    iget-object v5, v0, mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_69d

    .line 1940
    move-object/from16 v0, p0

    iget-object v5, v0, mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/util/ArrayMap;

    .line 1941
    .restart local v53    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v31, 0x0

    .restart local v31    # "ip":I
    :goto_587
    invoke-virtual/range {v53 .. v53}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v31

    if-ge v0, v5, :cond_699

    .line 1942
    move-object/from16 v0, v53

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1943
    .restart local v23    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1944
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_5ad

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1945
    :cond_5ad
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1946
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1948
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1949
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1950
    const-string v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clear()V

    .line 1952
    const/16 v32, 0x0

    .restart local v32    # "is":I
    :goto_5f2
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_610

    .line 1953
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    add-int/lit8 v32, v32, 0x1

    goto :goto_5f2

    .line 1955
    :cond_610
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1956
    const/16 v29, 0x0

    :goto_619
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_695

    .line 1957
    move-object/from16 v0, v45

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1958
    .restart local v28    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1959
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_63f

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1960
    :cond_63f
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1961
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1962
    const-string v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1963
    const-string v5, " alarms, last "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1964
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1965
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1967
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1956
    add-int/lit8 v29, v29, 0x1

    goto :goto_619

    .line 1941
    .end local v28    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_695
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_587

    .line 1939
    .end local v23    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v32    # "is":I
    :cond_699
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_56d

    .line 1973
    .end local v31    # "ip":I
    .end local v53    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_69d
    sget-boolean v5, WAKEUP_STATS:Z

    if-eqz v5, :cond_727

    .line 1974
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1975
    const-string v5, "  Recent Wakeup History:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    const-wide/16 v36, -0x1

    .line 1977
    .local v36, "last":J
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6b5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_724

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 1978
    .local v27, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1979
    const/16 v5, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1980
    const-wide/16 v6, 0x0

    cmp-long v5, v36, v6

    if-gez v5, :cond_718

    .line 1981
    const/16 v5, 0x30

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1985
    :goto_6ee
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    move-wide/from16 v36, v0

    .line 1986
    const/16 v5, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1987
    const/16 v5, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_6b5

    .line 1983
    :cond_718
    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    sub-long v6, v6, v36

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_6ee

    .line 1990
    .end local v27    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_724
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1993
    .end local v36    # "last":J
    :cond_727
    move-object/from16 v0, p0

    iget-object v5, v0, mSetAlarmHistory:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-eqz v5, :cond_754

    .line 1994
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1995
    const-string v5, "  Clock package alarm set"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    const/16 v29, 0x0

    :goto_740
    move-object/from16 v0, p0

    iget v5, v0, MAX_ALARM_HISTORY:I

    move/from16 v0, v29

    if-ge v0, v5, :cond_754

    .line 1997
    move-object/from16 v0, p0

    iget-object v5, v0, mSetAlarmHistory:[J

    aget-wide v6, v5, v29

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-nez v5, :cond_821

    .line 2004
    :cond_754
    move-object/from16 v0, p0

    iget-object v5, v0, mSendAlarmHistory:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-eqz v5, :cond_781

    .line 2005
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2006
    const-string v5, "  Clock package alarm send"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    const/16 v29, 0x0

    :goto_76d
    move-object/from16 v0, p0

    iget v5, v0, MAX_ALARM_HISTORY:I

    move/from16 v0, v29

    if-ge v0, v5, :cond_781

    .line 2008
    move-object/from16 v0, p0

    iget-object v5, v0, mSendAlarmHistory:[J

    aget-wide v6, v5, v29

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-nez v5, :cond_85e

    .line 2015
    :cond_781
    const-string v5, "com.sec.android.app.clockpackage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, lookForPackageLocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a2

    .line 2016
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2017
    const-string v5, "  Clock package alarm in batch"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    const/16 v24, 0x0

    .line 2019
    .local v24, "cnt":I
    const/16 v29, 0x0

    :goto_799
    move-object/from16 v0, p0

    iget-object v5, v0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_89f

    .line 2020
    move-object/from16 v0, p0

    iget-object v5, v0, mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$Batch;

    .line 2021
    .restart local v22    # "b":Lcom/android/server/AlarmManagerService$Batch;
    const-string v5, "com.sec.android.app.clockpackage"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89b

    .line 2022
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2023
    .local v4, "N":I
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_7c5
    move/from16 v0, v34

    if-ge v0, v4, :cond_89b

    .line 2024
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2025
    .local v21, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.clockpackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81e

    .line 2026
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v14, v10, v8

    add-long v56, v6, v14

    .line 2027
    .local v56, "whenElapsed":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v56

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    add-int/lit8 v24, v24, 0x1

    .line 2023
    .end local v56    # "whenElapsed":J
    :cond_81e
    add-int/lit8 v34, v34, 0x1

    goto :goto_7c5

    .line 2000
    .end local v4    # "N":I
    .end local v21    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v22    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v24    # "cnt":I
    .end local v34    # "j":I
    :cond_821
    move-object/from16 v0, p0

    iget-object v5, v0, mSetAlarmHistory:[J

    aget-wide v6, v5, v29

    sub-long v14, v10, v8

    add-long v48, v6, v14

    .line 2001
    .local v48, "setAlarm":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v48

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_740

    .line 2011
    .end local v48    # "setAlarm":J
    :cond_85e
    move-object/from16 v0, p0

    iget-object v5, v0, mSendAlarmHistory:[J

    aget-wide v6, v5, v29

    sub-long v14, v10, v8

    add-long v46, v6, v14

    .line 2012
    .local v46, "sendAlarm":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, v46

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_76d

    .line 2019
    .end local v46    # "sendAlarm":J
    .restart local v22    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v24    # "cnt":I
    :cond_89b
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_799

    .line 2033
    .end local v22    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_89f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2037
    .end local v24    # "cnt":I
    :cond_8a2
    sget-boolean v5, APP_SYNC_ON:Z

    if-eqz v5, :cond_8b7

    move-object/from16 v0, p0

    iget-object v5, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v5, :cond_8b7

    .line 2038
    move-object/from16 v0, p0

    iget-object v5, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const-string v6, ""

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2041
    :cond_8b7
    monitor-exit v58
    :try_end_8b8
    .catchall {:try_start_245 .. :try_end_8b8} :catchall_23f

    .line 2042
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1165
    :try_start_0
    iget-wide v0, p0, mNativeData:J

    invoke-direct {p0, v0, v1}, close(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 1167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1169
    return-void

    .line 1167
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAlarmLocked(I)Z
    .registers 8
    .param p1, "hashCode"    # I

    .prologue
    .line 978
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2e

    .line 979
    iget-object v5, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 980
    .local v2, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 981
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_16
    if-ge v4, v0, :cond_2b

    .line 982
    invoke-virtual {v2, v4}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v1

    .line 983
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    if-nez v1, :cond_21

    .line 981
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 985
    :cond_21
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_1e

    const/4 v5, 0x1

    .line 988
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "j":I
    :goto_2a
    return v5

    .line 978
    .restart local v0    # "N":I
    .restart local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v4    # "j":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 988
    .end local v0    # "N":I
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "j":I
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2a
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2110
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2111
    :try_start_3
    iget-object v0, p0, mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v1

    return-object v0

    .line 2112
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getNextWakeFromIdleTimeImpl()J
    .registers 4

    .prologue
    .line 2104
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2105
    :try_start_3
    iget-object v0, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_d

    iget-object v0, p0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :goto_b
    monitor-exit v2

    return-wide v0

    :cond_d
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b

    .line 2106
    :catchall_13
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .registers 12
    .param p1, "interactive"    # Z

    .prologue
    .line 2522
    iget-boolean v6, p0, mInteractive:Z

    if-eq v6, p1, :cond_43

    .line 2523
    iput-boolean p1, p0, mInteractive:Z

    .line 2524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2525
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_44

    .line 2526
    iget-object v6, p0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2f

    .line 2527
    iget-wide v6, p0, mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 2528
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, mTotalDelayTime:J

    .line 2529
    iget-wide v6, p0, mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_25

    .line 2530
    iput-wide v4, p0, mMaxDelayTime:J

    .line 2532
    :cond_25
    iget-object v6, p0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2, v3}, deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 2533
    iget-object v6, p0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2535
    .end local v4    # "thisDelayTime":J
    :cond_2f
    iget-wide v6, p0, mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_43

    .line 2536
    iget-wide v6, p0, mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 2537
    .local v0, "dur":J
    iget-wide v6, p0, mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_43

    .line 2538
    iput-wide v0, p0, mNonInteractiveTime:J

    .line 2545
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_43
    :goto_43
    return-void

    .line 2542
    .restart local v2    # "nowELAPSED":J
    :cond_44
    iput-wide v2, p0, mNonInteractiveStartTime:J

    goto :goto_43
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2549
    iget-object v2, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2550
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v3

    .line 2559
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_19
    return v2

    .line 2548
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2554
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iget-object v2, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2555
    iget-object v2, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v3

    .line 2556
    goto :goto_19

    .line 2554
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2559
    :cond_3f
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 1157
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_11

    .line 1158
    iget-object v0, p0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1160
    :cond_11
    return-void
.end method

.method public onStart()V
    .registers 15

    .prologue
    .line 1077
    invoke-direct {p0}, init()J

    move-result-wide v10

    iput-wide v10, p0, mNativeData:J

    .line 1078
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mNextNonWakeup:J

    iput-wide v10, p0, mNextRtcWakeup:J

    iput-wide v10, p0, mNextWakeup:J

    .line 1082
    const-string/jumbo v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, setTimeZoneImpl(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 1085
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v9, 0x1

    const-string v10, "*alarm*"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1087
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.TIME_TICK"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x50000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v9, v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, mTimeTickSender:Landroid/app/PendingIntent;

    .line 1092
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x4000000

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v9, v10, v5, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, mDateChangeSender:Landroid/app/PendingIntent;

    .line 1098
    new-instance v9, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1099
    iget-object v9, p0, mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1100
    iget-object v9, p0, mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1101
    new-instance v9, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 1102
    new-instance v9, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 1105
    new-instance v9, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, mFactoryOnOffControlReceiver:Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

    .line 1109
    const/4 v3, 0x0

    .line 1114
    .local v3, "cscWhiteList":Ljava/lang/String;
    if-eqz v3, :cond_a2

    .line 1115
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "appLists":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_96
    if-ge v4, v6, :cond_a2

    aget-object v0, v2, v4

    .line 1118
    .local v0, "app":Ljava/lang/String;
    iget-object v9, p0, mWhitelistPackages:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1117
    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 1123
    .end local v0    # "app":Ljava/lang/String;
    .end local v1    # "appLists":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_a2
    iget-object v9, p0, mWhitelistPackages:Ljava/util/Set;

    const-string v10, "com.android.mms"

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1124
    iget-object v9, p0, mWhitelistPackages:Ljava/util/Set;

    const-string v10, "com.samsung.android.app.aodservice"

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v9, p0, mWhitelistPackages:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1126
    .restart local v0    # "app":Ljava/lang/String;
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Make whitelist package :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 1131
    .end local v0    # "app":Ljava/lang/String;
    :cond_db
    invoke-direct {p0}, SetSyncScheduler()V

    .line 1132
    sget-boolean v9, APP_SYNC_ON:Z

    if-eqz v9, :cond_f3

    .line 1133
    new-instance v9, Lcom/android/server/AlarmManagerServiceExt;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, mLock:Ljava/lang/Object;

    invoke-direct {v9, v10, p0, v11}, Lcom/android/server/AlarmManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerServiceExt;->getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v9

    iput-object v9, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 1137
    :cond_f3
    iget-wide v10, p0, mNativeData:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_140

    .line 1138
    new-instance v8, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v8, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1139
    .local v8, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1145
    .end local v8    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_103
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_127

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_127

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_138

    .line 1147
    :cond_127
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v9

    iput-object v9, p0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 1148
    new-instance v9, Lcom/android/server/AlarmManagerService$EmergencyReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$EmergencyReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, mEmergencyReceiver:Lcom/android/server/AlarmManagerService$EmergencyReceiver;

    .line 1152
    :cond_138
    const-string v9, "alarm"

    iget-object v10, p0, mService:Landroid/os/IBinder;

    invoke-virtual {p0, v9, v10}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1153
    return-void

    .line 1141
    :cond_140
    const-string v9, "AlarmManager"

    const-string v10, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 15
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 914
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 915
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0, v1, v4}, convertToElapsed(JI)J

    move-result-wide v2

    .line 917
    .local v2, "whenElapsed":J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_1e

    .line 919
    move-wide v6, v2

    .line 928
    .local v6, "maxElapsed":J
    :goto_15
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 929
    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 930
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 931
    return-void

    .line 924
    .end local v6    # "maxElapsed":J
    :cond_1e
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_29

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v6, v2, v0

    .restart local v6    # "maxElapsed":J
    :goto_28
    goto :goto_15

    .end local v6    # "maxElapsed":J
    :cond_29
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, maxTriggerTime(JJJ)J

    move-result-wide v6

    goto :goto_28
.end method

.method rebatchAllAlarms()V
    .registers 3

    .prologue
    .line 880
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, rebatchAllAlarmsLocked(Z)V

    .line 882
    monitor-exit v1

    .line 883
    return-void

    .line 882
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .registers 14
    .param p1, "doValidate"    # Z

    .prologue
    .line 886
    iget-object v9, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 887
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 889
    iget-object v9, p0, mOperationsMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 891
    iget-object v7, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 892
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 893
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 894
    .local v6, "oldBatches":I
    const/4 v2, 0x0

    .local v2, "batchNum":I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 895
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 896
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 897
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    if-ge v3, v0, :cond_36

    .line 898
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5, p1}, reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 897
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 894
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 901
    .end local v0    # "N":I
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "i":I
    :cond_39
    if-eqz v7, :cond_6a

    iget-object v9, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v7, v9, :cond_6a

    .line 902
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rebatching: idle until changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v9, p0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v9, :cond_6a

    .line 906
    invoke-virtual {p0}, restorePendingWhileIdleAlarmsLocked()V

    .line 909
    :cond_6a
    invoke-virtual {p0}, rescheduleKernelAlarmsLocked()V

    .line 910
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 911
    return-void
.end method

.method recordWakeupAlarms(Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "nowRTC"    # J

    .prologue
    .line 2894
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    invoke-direct {v0, p3, p4, p2, p1}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 2895
    .local v0, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v1, p0, mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2896
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .registers 16
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2875
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2876
    .local v6, "numBatches":I
    const/4 v4, 0x0

    .local v4, "nextBatch":I
    :goto_5
    if-ge v4, v6, :cond_13

    .line 2877
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2878
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v7, v8, p2

    if-lez v7, :cond_14

    .line 2891
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_13
    return-void

    .line 2882
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_14
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2883
    .local v5, "numAlarms":I
    const/4 v3, 0x0

    .local v3, "nextAlarm":I
    :goto_1b
    if-ge v3, v5, :cond_42

    .line 2884
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2885
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v2, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p4, p5, v7, v8}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 2888
    .local v2, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v7, p0, mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2883
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 2876
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method removeCanceledLocked(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2406
    .local p1, "operations":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x0

    .line 2407
    .local v2, "didRemove":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 2408
    .local v4, "operation":Landroid/app/PendingIntent;
    iget-object v5, p0, mOperationsMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2409
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v0, :cond_5

    .line 2410
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->batch:Lcom/android/server/AlarmManagerService$Batch;

    .line 2412
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v5, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2413
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.clockpackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2414
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {p0, v6, v7}, removeSetAlarmFromHistoryLocked(J)V

    .line 2416
    :cond_3e
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_47

    .line 2417
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mNextRtcWakeup:J

    .line 2419
    :cond_47
    invoke-virtual {v1, v0}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 2420
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 2421
    iget-object v5, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2426
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "operation":Landroid/app/PendingIntent;
    :cond_58
    if-eqz v2, :cond_7f

    .line 2428
    sget-boolean v5, APP_SYNC_ON:Z

    if-eqz v5, :cond_78

    iget-object v5, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v5, :cond_78

    .line 2429
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 2430
    .restart local v4    # "operation":Landroid/app/PendingIntent;
    iget-object v5, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v5, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    goto :goto_66

    .line 2437
    .end local v4    # "operation":Landroid/app/PendingIntent;
    :cond_78
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, rebatchAllAlarmsLocked(Z)V

    .line 2438
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 2440
    :cond_7f
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1208
    if-nez p1, :cond_3

    .line 1217
    :goto_2
    return-void

    .line 1211
    :cond_3
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1214
    const/4 v0, 0x1

    :try_start_7
    invoke-direct {p0, p1, v0}, removeLocked(Landroid/app/PendingIntent;Z)V

    .line 1216
    monitor-exit v1

    goto :goto_2

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method

.method removeLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2444
    const/4 v1, 0x0

    .line 2445
    .local v1, "didRemove":Z
    const/4 v3, 0x0

    .line 2446
    .local v3, "needRebatch":Z
    iget-object v4, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_29

    .line 2447
    iget-object v4, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2448
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2449
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    if-nez v4, :cond_27

    .line 2450
    iget-object v4, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2446
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2452
    :cond_27
    const/4 v3, 0x1

    goto :goto_24

    .line 2455
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_29
    iget-object v4, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_31
    if-ltz v2, :cond_4f

    .line 2456
    iget-object v4, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2458
    iget-object v4, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2455
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 2462
    :cond_4f
    if-eqz v1, :cond_6a

    .line 2464
    sget-boolean v4, APP_SYNC_ON:Z

    if-eqz v4, :cond_5e

    iget-object v4, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v4, :cond_5e

    .line 2465
    iget-object v4, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v4, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Ljava/lang/String;)V

    .line 2471
    :cond_5e
    if-eqz v3, :cond_64

    .line 2472
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, rebatchAllAlarmsLocked(Z)V

    .line 2474
    :cond_64
    invoke-virtual {p0}, rescheduleKernelAlarmsLocked()V

    .line 2475
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 2477
    :cond_6a
    return-void
.end method

.method removeSetAlarmFromHistoryLocked(J)V
    .registers 10
    .param p1, "when"    # J

    .prologue
    .line 3604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, MAX_ALARM_HISTORY:I

    if-ge v0, v1, :cond_f

    .line 3605
    iget-object v1, p0, mSetAlarmHistory:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    .line 3612
    :cond_f
    :goto_f
    return-void

    .line 3607
    :cond_10
    iget-object v1, p0, mSetAlarmHistory:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_27

    .line 3608
    iget-object v1, p0, mSetAlarmHistory:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, mSetAlarmHistory:[J

    iget v4, p0, MAX_ALARM_HISTORY:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_f

    .line 3604
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method removeUserLocked(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 2480
    const/4 v1, 0x0

    .line 2481
    .local v1, "didRemove":Z
    const/4 v3, 0x0

    .line 2482
    .local v3, "needRebatch":Z
    iget-object v4, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_29

    .line 2483
    iget-object v4, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2484
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2485
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    if-nez v4, :cond_27

    .line 2486
    iget-object v4, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2482
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2488
    :cond_27
    const/4 v3, 0x1

    goto :goto_24

    .line 2491
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_29
    iget-object v4, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_31
    if-ltz v2, :cond_4f

    .line 2492
    iget-object v4, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_4c

    .line 2495
    iget-object v4, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2491
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 2498
    :cond_4f
    iget-object v4, p0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_57
    if-ltz v2, :cond_6d

    .line 2499
    iget-object v4, p0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_6a

    .line 2500
    iget-object v4, p0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2498
    :cond_6a
    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    .line 2504
    :cond_6d
    if-eqz v1, :cond_88

    .line 2506
    sget-boolean v4, APP_SYNC_ON:Z

    if-eqz v4, :cond_7c

    iget-object v4, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v4, :cond_7c

    .line 2507
    iget-object v4, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v4, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(I)V

    .line 2513
    :cond_7c
    if-eqz v3, :cond_82

    .line 2514
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, rebatchAllAlarmsLocked(Z)V

    .line 2516
    :cond_82
    invoke-virtual {p0}, rescheduleKernelAlarmsLocked()V

    .line 2517
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 2519
    :cond_88
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 2241
    const-wide/16 v4, 0x0

    .line 2242
    .local v4, "nextNonWakeup":J
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    .line 2243
    invoke-direct {p0}, findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v2

    .line 2244
    .local v2, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v3, p0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2245
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-direct {p0}, findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 2247
    .local v1, "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v2, :cond_31

    iget-wide v8, p0, mNextWakeup:J

    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_31

    .line 2248
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v8, p0, mNextWakeup:J

    .line 2249
    const/4 v3, 0x2

    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v3, v8, v9}, setLocked(IJ)V

    .line 2251
    :cond_31
    if-eqz v1, :cond_4d

    iget-wide v8, p0, mNextRtcWakeup:J

    iget-wide v10, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4d

    .line 2252
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v8, p0, mNextRtcWakeup:J

    .line 2253
    iget-wide v8, p0, mNextRtcWakeup:J

    invoke-virtual {v1, v8, v9}, Lcom/android/server/AlarmManagerService$Batch;->getWhenByElapsedTime(J)J

    move-result-wide v6

    .line 2255
    .local v6, "when":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_4d

    .line 2256
    const/4 v3, 0x5

    invoke-direct {p0, v3, v6, v7}, setLocked(IJ)V

    .line 2259
    .end local v6    # "when":J
    :cond_4d
    if-eq v0, v2, :cond_51

    .line 2260
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 2263
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_51
    iget-object v3, p0, mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_65

    .line 2264
    cmp-long v3, v4, v12

    if-eqz v3, :cond_63

    iget-wide v8, p0, mNextNonWakeupDeliveryTime:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_65

    .line 2265
    :cond_63
    iget-wide v4, p0, mNextNonWakeupDeliveryTime:J

    .line 2268
    :cond_65
    cmp-long v3, v4, v12

    if-eqz v3, :cond_75

    iget-wide v8, p0, mNextNonWakeup:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_75

    .line 2269
    iput-wide v4, p0, mNextNonWakeup:J

    .line 2270
    const/4 v3, 0x3

    invoke-direct {p0, v3, v4, v5}, setLocked(IJ)V

    .line 2272
    :cond_75
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .registers 7

    .prologue
    .line 935
    iget-object v3, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 936
    iget-object v1, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 937
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 939
    .local v4, "nowElapsed":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_2a

    .line 940
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 941
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v4, v5, v3}, reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 939
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 946
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v2    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_2a
    iget-object v3, p0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 949
    invoke-virtual {p0}, rescheduleKernelAlarmsLocked()V

    .line 950
    invoke-direct {p0}, updateNextAlarmClockLocked()V

    .line 954
    :try_start_35
    iget-object v3, p0, mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_3a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 957
    :goto_3a
    return-void

    .line 955
    :catch_3b
    move-exception v3

    goto :goto_3a
.end method

.method public rollbackAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;ZZ)V
    .registers 29
    .param p1, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "isStandalone"    # Z
    .param p3, "doValidate"    # Z

    .prologue
    .line 992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 993
    .local v2, "nNowElapsed":J
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-static {v6, v7, v8}, convertToElapsed(JI)J

    move-result-wide v4

    .line 994
    .local v4, "nWhenElapsed":J
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_68

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    add-long v14, v4, v6

    .line 997
    .local v14, "nMaxElapsed":J
    :goto_20
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    if-eqz p2, :cond_71

    const/16 v19, 0x1

    :goto_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move/from16 v23, v0

    move-object/from16 v6, p0

    move-wide v10, v4

    move/from16 v20, p3

    invoke-direct/range {v6 .. v23}, setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v24

    .line 1001
    .local v24, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->pid:I

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    .line 1002
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move-object/from16 v0, v24

    iput v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 1004
    return-void

    .line 994
    .end local v14    # "nMaxElapsed":J
    .end local v24    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_68
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    invoke-static/range {v2 .. v7}, maxTriggerTime(JJJ)J

    move-result-wide v14

    goto :goto_20

    .line 997
    .restart local v14    # "nMaxElapsed":J
    :cond_71
    const/16 v19, 0x0

    goto :goto_3c
.end method

.method sendAlarmInform(I)V
    .registers 6
    .param p1, "uId"    # I

    .prologue
    .line 3105
    iget-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_13

    .line 3106
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    .line 3108
    :cond_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3109
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "uId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3110
    const-string/jumbo v2, "type"

    const-string v3, "alarm_wakeup_locator"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3113
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3114
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3116
    iget-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 3117
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .registers 57
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "flags"    # I
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "callingUid"    # I

    .prologue
    .line 1307
    if-nez p8, :cond_b

    .line 1308
    const-string v9, "AlarmManager"

    const-string/jumbo v10, "set/setRepeating ignored because there is no intent"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :goto_a
    return-void

    .line 1313
    :cond_b
    sget v9, FACTORY_ON:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_54

    .line 1314
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Turn off alarm wake up : type= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " triggerAtTime= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    if-nez p1, :cond_e3

    .line 1317
    const/16 p1, 0x1

    .line 1320
    :cond_3a
    :goto_3a
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Alarm Changed : type= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_54
    const-wide/32 v10, 0x2932e00

    cmp-long v9, p4, v10

    if-lez v9, :cond_7f

    .line 1327
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Window length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-wide/32 p4, 0x36ee80

    .line 1334
    :cond_7f
    move-object/from16 v0, p0

    iget-object v9, v0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    move-wide/from16 v36, v0

    .line 1335
    .local v36, "minInterval":J
    const-wide/16 v10, 0x0

    cmp-long v9, p6, v10

    if-lez v9, :cond_c1

    cmp-long v9, p6, v36

    if-gez v9, :cond_c1

    .line 1336
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Suspiciously short interval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " millis; expanding to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    div-long v12, v36, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    move-wide/from16 p6, v36

    .line 1342
    :cond_c1
    if-ltz p1, :cond_c8

    const/4 v9, 0x5

    move/from16 v0, p1

    if-le v0, v9, :cond_ec

    .line 1343
    :cond_c8
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid alarm type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1318
    .end local v36    # "minInterval":J
    :cond_e3
    const/4 v9, 0x2

    move/from16 v0, p1

    if-ne v0, v9, :cond_3a

    .line 1319
    const/16 p1, 0x3

    goto/16 :goto_3a

    .line 1346
    .restart local v36    # "minInterval":J
    :cond_ec
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-gez v9, :cond_12d

    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v42, v0

    .line 1348
    .local v42, "what":J
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid alarm trigger time! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p12

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const-wide/16 p2, 0x0

    .line 1353
    .end local v42    # "what":J
    :cond_12d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1354
    .local v4, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, convertToElapsed(JI)J

    move-result-wide v40

    .line 1356
    .local v40, "nominalTrigger":J
    move-object/from16 v0, p0

    iget-object v9, v0, mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v10, v9, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v38, v4, v10

    .line 1357
    .local v38, "minTrigger":J
    cmp-long v9, v40, v38

    if-lez v9, :cond_20f

    move-wide/from16 v6, v40

    .line 1360
    .local v6, "triggerElapsed":J
    :goto_147
    const-wide/16 v10, 0x0

    cmp-long v9, p4, v10

    if-nez v9, :cond_213

    .line 1361
    move-wide/from16 v16, v6

    .line 1371
    .local v16, "maxElapsed":J
    :goto_14f
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_173

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_173

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_229

    :cond_173
    move-object/from16 v0, p0

    iget-object v9, v0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v9, :cond_229

    move-object/from16 v0, p0

    iget-object v9, v0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_229

    .line 1373
    move-object/from16 v0, p0

    iget-object v9, v0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_229

    .line 1374
    move-object/from16 v0, p0

    iget-object v9, v0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/emergencymode/EmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_229

    .line 1375
    new-instance v8, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide v12, v6

    move-wide/from16 v14, p4

    move-wide/from16 v18, p6

    move-object/from16 v20, p8

    move-object/from16 v21, p10

    move/from16 v22, p9

    move-object/from16 v23, p11

    move/from16 v24, p12

    invoke-direct/range {v8 .. v24}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 1376
    .local v8, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip rejected app(Screen["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v11}, Lcom/sec/android/emergencymode/EmergencyManager;->isScreenOn()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]) : pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " act="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    new-instance v10, Lcom/android/server/AlarmManagerService$PrevAlarm;

    and-int/lit8 v9, p9, 0x1

    if-eqz v9, :cond_227

    const/4 v9, 0x1

    :goto_203
    move-object/from16 v0, p0

    invoke-direct {v10, v0, v8, v9}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V

    goto/16 :goto_a

    .end local v6    # "triggerElapsed":J
    .end local v8    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v16    # "maxElapsed":J
    :cond_20f
    move-wide/from16 v6, v38

    .line 1357
    goto/16 :goto_147

    .line 1362
    .restart local v6    # "triggerElapsed":J
    :cond_213
    const-wide/16 v10, 0x0

    cmp-long v9, p4, v10

    if-gez v9, :cond_223

    move-wide/from16 v8, p6

    .line 1363
    invoke-static/range {v4 .. v9}, maxTriggerTime(JJJ)J

    move-result-wide v16

    .line 1365
    .restart local v16    # "maxElapsed":J
    sub-long p4, v16, v6

    goto/16 :goto_14f

    .line 1367
    .end local v16    # "maxElapsed":J
    :cond_223
    add-long v16, v6, p4

    .restart local v16    # "maxElapsed":J
    goto/16 :goto_14f

    .line 1378
    .restart local v8    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_227
    const/4 v9, 0x0

    goto :goto_203

    .line 1385
    .end local v8    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_229
    move-object/from16 v0, p0

    iget-object v10, v0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1387
    const/4 v9, 0x1

    :try_start_22f
    sput-boolean v9, APP_SYNC_NewAlarm:Z

    .line 1396
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.sec.android.app.clockpackage"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_246

    .line 1397
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, mRecordClockHistory:Z

    .line 1398
    move-object/from16 v0, p0

    iput-wide v6, v0, mClockelapse:J

    .line 1402
    :cond_246
    invoke-direct/range {p0 .. p0}, checkMaliciousAppLocked()V

    .line 1405
    const/16 v32, 0x1

    move-object/from16 v18, p0

    move/from16 v19, p1

    move-wide/from16 v20, p2

    move-wide/from16 v22, v6

    move-wide/from16 v24, p4

    move-wide/from16 v26, v16

    move-wide/from16 v28, p6

    move-object/from16 v30, p8

    move/from16 v31, p9

    move-object/from16 v33, p10

    move-object/from16 v34, p11

    move/from16 v35, p12

    invoke-direct/range {v18 .. v35}, setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)Lcom/android/server/AlarmManagerService$Alarm;

    .line 1407
    monitor-exit v10

    goto/16 :goto_a

    :catchall_269
    move-exception v9

    monitor-exit v10
    :try_end_26b
    .catchall {:try_start_22f .. :try_end_26b} :catchall_269

    throw v9
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .registers 10
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1205
    :cond_6
    :goto_6
    return-void

    .line 1176
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 1179
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 1180
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1181
    :try_start_d
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 1186
    :cond_20
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v3, 0x1

    .line 1188
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1194
    .local v1, "gmtOffset":I
    iget-wide v6, p0, mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, setKernelTimezone(JI)I

    .line 1195
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_d .. :try_end_66} :catchall_8d

    .line 1197
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1199
    if-eqz v3, :cond_6

    .line 1200
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1202
    const-string/jumbo v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .line 1195
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "gmtOffset":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_8d
    move-exception v5

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 10
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    .prologue
    .line 3255
    :try_start_0
    iget-object v2, p0, mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v2, :cond_1f

    const/4 v1, 0x1

    .line 3256
    .local v1, "unimportant":Z
    :goto_5
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 3257
    if-nez p5, :cond_10

    iget-boolean v2, p0, mLastWakeLockUnimportantForLogging:Z

    if-eqz v2, :cond_21

    .line 3258
    :cond_10
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 3262
    :goto_15
    iput-boolean v1, p0, mLastWakeLockUnimportantForLogging:Z

    .line 3263
    if-eqz p2, :cond_2a

    .line 3264
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3278
    .end local v1    # "unimportant":Z
    :goto_1e
    return-void

    .line 3255
    :cond_1f
    const/4 v1, 0x0

    goto :goto_5

    .line 3260
    .restart local v1    # "unimportant":Z
    :cond_21
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    goto :goto_15

    .line 3276
    .end local v1    # "unimportant":Z
    :catch_28
    move-exception v2

    goto :goto_1e

    .line 3268
    .restart local v1    # "unimportant":Z
    :cond_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 3270
    .local v0, "uid":I
    if-ltz v0, :cond_43

    .line 3271
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_1e

    .line 3275
    :cond_43
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_28

    goto :goto_1e
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .registers 46
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 2639
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v29, 0x0

    .line 2640
    .local v29, "hasWakeup":Z
    const/16 v33, 0x1

    .line 2644
    .local v33, "isFirstbatch":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f4

    .line 2645
    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/AlarmManagerService$Batch;

    .line 2646
    .local v28, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_10b

    .line 2648
    if-eqz v33, :cond_f4

    .line 2649
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No more alarm at this time. Why did you wake up?. nowELAPSED="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " batch.start="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_f4

    .line 2651
    const-string v5, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Batch 1 size = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", Batch 2 size = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", Batch 3 size = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    .end local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_f4
    move-object/from16 v0, p0

    iget v4, v0, mCurrentSeq:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, mCurrentSeq:I

    .line 2746
    invoke-virtual/range {p0 .. p1}, calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2755
    return v29

    .line 2659
    .restart local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_10b
    move-object/from16 v0, p0

    iget-object v4, v0, mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2660
    const/16 v33, 0x0

    .line 2662
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v26

    .line 2663
    .local v26, "N":I
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_11b
    move/from16 v0, v32

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 2664
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v27

    .line 2666
    .local v27, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_169

    .line 2669
    move-object/from16 v0, p0

    iget-object v4, v0, mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v34

    .line 2670
    .local v34, "lastTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, mAllowWhileIdleMinTime:J

    add-long v36, v34, v4

    .line 2671
    .local v36, "minTime":J
    cmp-long v4, p2, v36

    if-gez v4, :cond_169

    .line 2675
    move-wide/from16 v0, v36

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2676
    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, v36

    if-gez v4, :cond_15d

    .line 2677
    move-wide/from16 v0, v36

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2679
    :cond_15d
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4, v5}, setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2663
    .end local v34    # "lastTime":J
    .end local v36    # "minTime":J
    :cond_166
    :goto_166
    add-int/lit8 v32, v32, 0x1

    goto :goto_11b

    .line 2684
    :cond_169
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2685
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2687
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.clockpackage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_188

    .line 2688
    invoke-virtual/range {p0 .. p0}, addSendAlarmToHistoryLocked()V

    .line 2690
    :cond_188
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_19e

    .line 2691
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_295

    const/4 v4, 0x1

    :goto_197
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 2694
    :cond_19e
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v27

    if-ne v4, v0, :cond_1b4

    .line 2695
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2696
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, rebatchAllAlarmsLocked(Z)V

    .line 2697
    invoke-virtual/range {p0 .. p0}, restorePendingWhileIdleAlarmsLocked()V

    .line 2699
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v4, v0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v27

    if-ne v4, v0, :cond_1c7

    .line 2700
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2701
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, rebatchAllAlarmsLocked(Z)V

    .line 2706
    :cond_1c7
    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_280

    .line 2708
    sget-boolean v4, APP_SYNC_ON:Z

    if-eqz v4, :cond_203

    move-object/from16 v0, p0

    iget-object v4, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    if-eqz v4, :cond_203

    .line 2709
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v4

    if-eqz v4, :cond_203

    .line 2710
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppSync scheduleAlarms: changed --- "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_203
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v27

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v8, p2, v8

    move-object/from16 v0, v27

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    long-to-int v4, v4

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2719
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v27

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v30, v4, v8

    .line 2720
    .local v30, "delta":J
    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v6, v4, v30

    .line 2722
    .local v6, "nextElapsed":J
    move-object/from16 v0, v27

    iget v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v10, v4, v30

    move-object/from16 v0, v27

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    invoke-static/range {v4 .. v9}, maxTriggerTime(JJJ)J

    move-result-wide v16

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v23, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v25, v0

    move-object/from16 v8, p0

    move v9, v12

    move-wide v12, v6

    invoke-direct/range {v8 .. v25}, setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v38

    .line 2727
    .local v38, "repeat":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    .line 2728
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 2732
    .end local v6    # "nextElapsed":J
    .end local v30    # "delta":J
    .end local v38    # "repeat":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_280
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v4, :cond_288

    .line 2733
    const/16 v29, 0x1

    .line 2737
    :cond_288
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_166

    .line 2738
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mNextAlarmClockMayChange:Z

    goto/16 :goto_166

    .line 2691
    :cond_295
    const/4 v4, 0x0

    goto/16 :goto_197
.end method
