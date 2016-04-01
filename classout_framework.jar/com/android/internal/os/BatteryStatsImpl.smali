.class public final Lcom/android/internal/os/BatteryStatsImpl;
.super Landroid/os/BatteryStats;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid;,
        Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;,
        Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;,
        Lcom/android/internal/os/BatteryStatsImpl$Timer;,
        Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;,
        Lcom/android/internal/os/BatteryStatsImpl$Counter;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBase;,
        Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;,
        Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;,
        Lcom/android/internal/os/BatteryStatsImpl$MyHandler;,
        Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    }
.end annotation


# static fields
.field static final BATTERY_DELTA_LEVEL_FLAG:I = 0x1

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DEBUG_ENERGY:Z = false

.field private static final DEBUG_ENERGY_CPU:Z = false

.field private static final DEBUG_HISTORY:Z = false

.field static final DELAY_UPDATE_WAKELOCKS:J = 0x1388L

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x80000

.field static final DELTA_EVENT_FLAG:I = 0x800000

.field static final DELTA_STATE2_FLAG:I = 0x200000

.field static final DELTA_STATE_FLAG:I = 0x100000

.field static final DELTA_STATE_MASK:I = -0x1000000

.field static final DELTA_TIME_ABS:I = 0x7fffd

.field static final DELTA_TIME_INT:I = 0x7fffe

.field static final DELTA_TIME_LONG:I = 0x7ffff

.field static final DELTA_TIME_MASK:I = 0x7ffff

.field static final DELTA_WAKELOCK_FLAG:I = 0x400000

.field private static final MAGIC:I = -0x458a8b8b

.field static final MAX_DAILY_ITEMS:I = 0xa

.field static final MAX_HISTORY_BUFFER:I = 0x40000

.field private static final MAX_HISTORY_ITEMS:I = 0x7d0

.field static final MAX_LEVEL_STEPS:I = 0xc8

.field static final MAX_MAX_HISTORY_BUFFER:I = 0x50000

.field private static final MAX_MAX_HISTORY_ITEMS:I = 0xbb8

.field private static final MAX_WAKELOCKS_PER_UID:I = 0x64

.field static final MSG_REPORT_CHARGING:I = 0x3

.field static final MSG_REPORT_POWER_CHANGE:I = 0x2

.field static final MSG_UPDATE_WAKELOCKS:I = 0x1

.field private static final NETWORK_STATS_DELTA:I = 0x2

.field private static final NETWORK_STATS_LAST:I = 0x0

.field private static final NETWORK_STATS_NEXT:I = 0x1

.field static final STATE_BATTERY_HEALTH_MASK:I = 0x7

.field static final STATE_BATTERY_HEALTH_SHIFT:I = 0x1a

.field static final STATE_BATTERY_PLUG_MASK:I = 0x3

.field static final STATE_BATTERY_PLUG_SHIFT:I = 0x18

.field static final STATE_BATTERY_STATUS_MASK:I = 0x7

.field static final STATE_BATTERY_STATUS_SHIFT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "BatteryStatsImpl"

.field private static final USE_OLD_HISTORY:Z = false

.field private static final VERSION:I = 0x84


# instance fields
.field private final CHARGE_TIME_PATH:Ljava/lang/String;

.field final mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

.field mActiveHistoryStates:I

.field mActiveHistoryStates2:I

.field mAudioOnNesting:I

.field mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mAudioTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

.field mCameraOnNesting:I

.field mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mCameraTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mChangedStates:I

.field mChangedStates2:I

.field final mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mCharging:Z

.field public final mCheckinFile:Lcom/android/internal/os/AtomicFile;

.field final mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mCurStepCpuSystemTime:J

.field mCurStepCpuUserTime:J

.field mCurStepMode:I

.field mCurStepStatIOWaitTime:J

.field mCurStepStatIdleTime:J

.field mCurStepStatIrqTime:J

.field mCurStepStatSoftIrqTime:J

.field mCurStepStatSystemTime:J

.field mCurStepStatUserTime:J

.field mCurrentBatteryLevel:I

.field final mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field final mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field public final mDailyFile:Lcom/android/internal/os/AtomicFile;

.field final mDailyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$DailyItem;",
            ">;"
        }
    .end annotation
.end field

.field mDailyPackageChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end field

.field mDailyStartTime:J

.field mDeviceIdleModeEnabled:Z

.field mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDeviceIdling:Z

.field mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mDischargeAmountScreenOff:I

.field mDischargeAmountScreenOffSinceCharge:I

.field mDischargeAmountScreenOn:I

.field mDischargeAmountScreenOnSinceCharge:I

.field mDischargeCurrentLevel:I

.field mDischargePlugLevel:I

.field mDischargeScreenOffUnplugLevel:I

.field mDischargeScreenOnUnplugLevel:I

.field mDischargeStartLevel:I

.field final mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

.field mDischargeUnplugLevel:I

.field mDistributeWakelockCpu:Z

.field final mDrawTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mEndPlatformVersion:Ljava/lang/String;

.field private final mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

.field private mFeatureComputeChargeTimeModel:Z

.field private final mFile:Lcom/android/internal/util/JournaledFile;

.field mFlashlightOnNesting:I

.field mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mFlashlightTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mFullWifiLockTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalWifiRunning:Z

.field mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpsNesting:I

.field public final mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

.field private mHasBluetoothEnergyReporting:Z

.field private mHasWifiEnergyReporting:Z

.field mHaveBatteryLevel:Z

.field mHighDischargeAmountSinceCharge:I

.field mHistory:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryBaseTime:J

.field final mHistoryBuffer:Landroid/os/Parcel;

.field mHistoryBufferLastPos:I

.field mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

.field private mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

.field mHistoryOverflow:Z

.field final mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

.field final mHistoryTagPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/BatteryStats$HistoryTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInitStepMode:I

.field private mInitialAcquireWakeName:Ljava/lang/String;

.field private mInitialAcquireWakeUid:I

.field mInteractive:Z

.field mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mIteratingHistory:Z

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKernelWakelockStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastChargeStepLevel:I

.field mLastChargingStateLevel:I

.field mLastDischargeStepLevel:I

.field mLastHistoryElapsedRealtime:J

.field mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mLastHistoryStepLevel:B

.field final mLastPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepCpuSystemTime:J

.field mLastStepCpuUserTime:J

.field mLastStepStatIOWaitTime:J

.field mLastStepStatIdleTime:J

.field mLastStepStatIrqTime:J

.field mLastStepStatSoftIrqTime:J

.field mLastStepStatSystemTime:J

.field mLastStepStatUserTime:J

.field mLastWakeupReason:Ljava/lang/String;

.field mLastWakeupUptimeMs:J

.field mLastWriteTime:J

.field private mLoadedNumConnectivityChange:I

.field mLowDischargeAmountSinceCharge:I

.field mMaxChargeStepLevel:I

.field mMinDischargeStepLevel:I

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mMobileNetworkStats:[Landroid/net/NetworkStats;

.field mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveStartTime:J

.field mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioPowerState:I

.field mModStepMode:I

.field final mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field mNextHistoryTagIdx:I

.field mNextMaxDailyDeadline:J

.field mNextMinDailyDeadline:J

.field mNoAutoReset:Z

.field private mNumConnectivityChange:I

.field mNumHistoryItems:I

.field mNumHistoryTagChars:I

.field mOnBattery:Z

.field mOnBatteryInternal:Z

.field final mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPartialTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mPendingWrite:Landroid/os/Parcel;

.field mPhoneDataConnectionType:I

.field final mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneOn:Z

.field mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneServiceState:I

.field private mPhoneServiceStateRaw:I

.field mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mPhoneSignalStrengthBin:I

.field mPhoneSignalStrengthBinRaw:I

.field final mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mPhoneSimStateRaw:I

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mPowerSaveModeEnabled:Z

.field mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mReadHistoryChars:I

.field final mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field mReadHistoryStrings:[Ljava/lang/String;

.field mReadHistoryUids:[I

.field private mReadOverflow:Z

.field mRealtime:J

.field mRealtimeStart:J

.field public mRecordAllHistory:Z

.field mRecordingHistory:Z

.field mScreenBrightnessBin:I

.field final mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mScreenState:I

.field mSensorNesting:I

.field final mSensorTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mShuttingDown:Z

.field mStartClockTime:J

.field mStartCount:I

.field mStartPlatformVersion:Ljava/lang/String;

.field mTempTotalCpuSystemTimeUs:J

.field mTempTotalCpuUserTimeUs:J

.field final mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field mTrackRunningHistoryElapsedRealtime:J

.field mTrackRunningHistoryUptime:J

.field final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            ">;"
        }
    .end annotation
.end field

.field private mUnpluggedNumConnectivityChange:I

.field mUptime:J

.field mUptimeStart:J

.field mVideoOnNesting:I

.field mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mVideoTurnedOnTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockImportant:Z

.field mWakeLockNesting:I

.field private final mWakeupReasonStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mWifiBatchedScanTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field mWifiFullLockNesting:I

.field private mWifiIfaces:[Ljava/lang/String;

.field mWifiMulticastNesting:I

.field final mWifiMulticastTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiNetworkStats:[Landroid/net/NetworkStats;

.field mWifiOn:Z

.field mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRadioPowerState:I

.field final mWifiRunningTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiScanNesting:I

.field final mWifiScanTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mWifiSignalStrengthBin:I

.field final mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiState:I

.field final mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiSupplState:I

.field final mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWindowTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10228
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$5;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$5;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .prologue
    const/16 v8, 0x32

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 498
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 134
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 136
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 197
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUidStats:Landroid/util/SparseArray;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPartialTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFullTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWindowTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDrawTimers:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSensorTimers:Landroid/util/SparseArray;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiRunningTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiScanTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLastPartialTimers:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 233
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 241
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 244
    iput-boolean v6, p0, mHaveBatteryLevel:Z

    .line 245
    iput-boolean v6, p0, mRecordingHistory:Z

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 253
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mHistoryTagPool:Ljava/util/HashMap;

    .line 259
    iput v6, p0, mNextHistoryTagIdx:I

    .line 260
    iput v6, p0, mNumHistoryTagChars:I

    .line 261
    iput v2, p0, mHistoryBufferLastPos:I

    .line 262
    iput-boolean v6, p0, mHistoryOverflow:Z

    .line 263
    iput v2, p0, mActiveHistoryStates:I

    .line 264
    iput v2, p0, mActiveHistoryStates2:I

    .line 265
    iput-wide v4, p0, mLastHistoryElapsedRealtime:J

    .line 266
    iput-wide v4, p0, mTrackRunningHistoryElapsedRealtime:J

    .line 267
    iput-wide v4, p0, mTrackRunningHistoryUptime:J

    .line 269
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 277
    iput-object v7, p0, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    iput-byte v6, p0, mLastHistoryStepLevel:B

    .line 279
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 280
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 281
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 329
    iput v6, p0, mScreenState:I

    .line 332
    iput v2, p0, mScreenBrightnessBin:I

    .line 333
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 362
    iput v2, p0, mPhoneSignalStrengthBin:I

    .line 363
    iput v2, p0, mPhoneSignalStrengthBinRaw:I

    .line 364
    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 369
    iput v2, p0, mPhoneDataConnectionType:I

    .line 370
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 381
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 390
    iput v2, p0, mWifiState:I

    .line 391
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 393
    iput v2, p0, mWifiSupplState:I

    .line 394
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 396
    iput v2, p0, mWifiSignalStrengthBin:I

    .line 397
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 400
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mMobileRadioPowerState:I

    .line 408
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mWifiRadioPowerState:I

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, mCharging:Z

    .line 442
    iput v6, p0, mInitStepMode:I

    .line 443
    iput v6, p0, mCurStepMode:I

    .line 444
    iput v6, p0, mModStepMode:I

    .line 448
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 449
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 454
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 455
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 459
    iput-wide v4, p0, mDailyStartTime:J

    .line 460
    iput-wide v4, p0, mNextMinDailyDeadline:J

    .line 461
    iput-wide v4, p0, mNextMaxDailyDeadline:J

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDailyItems:Ljava/util/ArrayList;

    .line 465
    iput-wide v4, p0, mLastWriteTime:J

    .line 467
    iput v2, p0, mPhoneServiceState:I

    .line 468
    iput v2, p0, mPhoneServiceStateRaw:I

    .line 469
    iput v2, p0, mPhoneSimStateRaw:I

    .line 475
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 478
    iput-boolean v6, p0, mHasWifiEnergyReporting:Z

    .line 479
    iput-boolean v6, p0, mHasBluetoothEnergyReporting:Z

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKernelWakelockStats:Ljava/util/HashMap;

    .line 490
    iput-object v7, p0, mLastWakeupReason:Ljava/lang/String;

    .line 491
    iput-wide v4, p0, mLastWakeupUptimeMs:J

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mWakeupReasonStats:Ljava/util/HashMap;

    .line 2375
    iput v6, p0, mChangedStates:I

    .line 2376
    iput v6, p0, mChangedStates2:I

    .line 2781
    iput v2, p0, mInitialAcquireWakeUid:I

    .line 3928
    iput v6, p0, mWifiFullLockNesting:I

    .line 3958
    iput v6, p0, mWifiScanNesting:I

    .line 4000
    iput v6, p0, mWifiMulticastNesting:I

    .line 7643
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    .line 7644
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, mWifiIfaces:[Ljava/lang/String;

    .line 7646
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7652
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    iput-object v0, p0, mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7658
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    iput-object v0, p0, mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8733
    const/4 v0, 0x1

    iput-boolean v0, p0, mFeatureComputeChargeTimeModel:Z

    .line 8734
    const-string v0, "/sys/class/power_supply/battery/time_to_full_now"

    iput-object v0, p0, CHARGE_TIME_PATH:Ljava/lang/String;

    .line 8991
    iput-object v7, p0, mPendingWrite:Landroid/os/Parcel;

    .line 8992
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 499
    iput-object v7, p0, mFile:Lcom/android/internal/util/JournaledFile;

    .line 500
    iput-object v7, p0, mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 501
    iput-object v7, p0, mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 502
    iput-object v7, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 503
    iput-object v7, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 504
    invoke-virtual {p0}, clearHistoryLocked()V

    .line 505
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/16 v8, 0x32

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 6942
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 134
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 136
    new-instance v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v0, p0, mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 197
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUidStats:Landroid/util/SparseArray;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPartialTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFullTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWindowTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDrawTimers:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSensorTimers:Landroid/util/SparseArray;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiRunningTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWifiScanTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLastPartialTimers:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 233
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 241
    new-instance v0, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 244
    iput-boolean v6, p0, mHaveBatteryLevel:Z

    .line 245
    iput-boolean v6, p0, mRecordingHistory:Z

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    .line 251
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 253
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mHistoryTagPool:Ljava/util/HashMap;

    .line 259
    iput v6, p0, mNextHistoryTagIdx:I

    .line 260
    iput v6, p0, mNumHistoryTagChars:I

    .line 261
    iput v2, p0, mHistoryBufferLastPos:I

    .line 262
    iput-boolean v6, p0, mHistoryOverflow:Z

    .line 263
    iput v2, p0, mActiveHistoryStates:I

    .line 264
    iput v2, p0, mActiveHistoryStates2:I

    .line 265
    iput-wide v4, p0, mLastHistoryElapsedRealtime:J

    .line 266
    iput-wide v4, p0, mTrackRunningHistoryElapsedRealtime:J

    .line 267
    iput-wide v4, p0, mTrackRunningHistoryUptime:J

    .line 269
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 277
    iput-object v7, p0, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    iput-byte v6, p0, mLastHistoryStepLevel:B

    .line 279
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 280
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 281
    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 329
    iput v6, p0, mScreenState:I

    .line 332
    iput v2, p0, mScreenBrightnessBin:I

    .line 333
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 362
    iput v2, p0, mPhoneSignalStrengthBin:I

    .line 363
    iput v2, p0, mPhoneSignalStrengthBinRaw:I

    .line 364
    sget v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 369
    iput v2, p0, mPhoneDataConnectionType:I

    .line 370
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 373
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 381
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 390
    iput v2, p0, mWifiState:I

    .line 391
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 393
    iput v2, p0, mWifiSupplState:I

    .line 394
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 396
    iput v2, p0, mWifiSignalStrengthBin:I

    .line 397
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 400
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mMobileRadioPowerState:I

    .line 408
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mWifiRadioPowerState:I

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, mCharging:Z

    .line 442
    iput v6, p0, mInitStepMode:I

    .line 443
    iput v6, p0, mCurStepMode:I

    .line 444
    iput v6, p0, mModStepMode:I

    .line 448
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 449
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 454
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 455
    new-instance v0, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v0, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 459
    iput-wide v4, p0, mDailyStartTime:J

    .line 460
    iput-wide v4, p0, mNextMinDailyDeadline:J

    .line 461
    iput-wide v4, p0, mNextMaxDailyDeadline:J

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDailyItems:Ljava/util/ArrayList;

    .line 465
    iput-wide v4, p0, mLastWriteTime:J

    .line 467
    iput v2, p0, mPhoneServiceState:I

    .line 468
    iput v2, p0, mPhoneServiceStateRaw:I

    .line 469
    iput v2, p0, mPhoneSimStateRaw:I

    .line 475
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v0, p0, mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 478
    iput-boolean v6, p0, mHasWifiEnergyReporting:Z

    .line 479
    iput-boolean v6, p0, mHasBluetoothEnergyReporting:Z

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKernelWakelockStats:Ljava/util/HashMap;

    .line 490
    iput-object v7, p0, mLastWakeupReason:Ljava/lang/String;

    .line 491
    iput-wide v4, p0, mLastWakeupUptimeMs:J

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mWakeupReasonStats:Ljava/util/HashMap;

    .line 2375
    iput v6, p0, mChangedStates:I

    .line 2376
    iput v6, p0, mChangedStates2:I

    .line 2781
    iput v2, p0, mInitialAcquireWakeUid:I

    .line 3928
    iput v6, p0, mWifiFullLockNesting:I

    .line 3958
    iput v6, p0, mWifiScanNesting:I

    .line 4000
    iput v6, p0, mWifiMulticastNesting:I

    .line 7643
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    .line 7644
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, mWifiIfaces:[Ljava/lang/String;

    .line 7646
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7652
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    iput-object v0, p0, mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7658
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/NetworkStats;

    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v2, v0, v1

    iput-object v0, p0, mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8733
    const/4 v0, 0x1

    iput-boolean v0, p0, mFeatureComputeChargeTimeModel:Z

    .line 8734
    const-string v0, "/sys/class/power_supply/battery/time_to_full_now"

    iput-object v0, p0, CHARGE_TIME_PATH:Ljava/lang/String;

    .line 8991
    iput-object v7, p0, mPendingWrite:Landroid/os/Parcel;

    .line 8992
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6943
    iput-object v7, p0, mFile:Lcom/android/internal/util/JournaledFile;

    .line 6944
    iput-object v7, p0, mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6945
    iput-object v7, p0, mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 6946
    iput-object v7, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6947
    iput-object v7, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 6948
    invoke-virtual {p0}, clearHistoryLocked()V

    .line 6949
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 6950
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V
    .registers 15
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "externalSync"    # Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .prologue
    .line 6868
    invoke-direct {p0}, Landroid/os/BatteryStats;-><init>()V

    .line 133
    new-instance v1, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v1, p0, mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 134
    new-instance v1, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v1}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v1, p0, mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 136
    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v1, p0, mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 197
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    .line 202
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mUidStats:Landroid/util/SparseArray;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mPartialTimers:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mFullTimers:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mWindowTimers:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mDrawTimers:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mSensorTimers:Landroid/util/SparseArray;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mWifiRunningTimers:Ljava/util/ArrayList;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mWifiScanTimers:Ljava/util/ArrayList;

    .line 218
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mAudioTurnedOnTimers:Ljava/util/ArrayList;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mVideoTurnedOnTimers:Ljava/util/ArrayList;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mCameraTurnedOnTimers:Ljava/util/ArrayList;

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mLastPartialTimers:Ljava/util/ArrayList;

    .line 229
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 233
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v1, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 241
    new-instance v1, Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryEventTracker;-><init>()V

    iput-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    .line 244
    const/4 v1, 0x0

    iput-boolean v1, p0, mHaveBatteryLevel:Z

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, mRecordingHistory:Z

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, mHistoryBuffer:Landroid/os/Parcel;

    .line 251
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 252
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    .line 253
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 254
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mHistoryTagPool:Ljava/util/HashMap;

    .line 259
    const/4 v1, 0x0

    iput v1, p0, mNextHistoryTagIdx:I

    .line 260
    const/4 v1, 0x0

    iput v1, p0, mNumHistoryTagChars:I

    .line 261
    const/4 v1, -0x1

    iput v1, p0, mHistoryBufferLastPos:I

    .line 262
    const/4 v1, 0x0

    iput-boolean v1, p0, mHistoryOverflow:Z

    .line 263
    const/4 v1, -0x1

    iput v1, p0, mActiveHistoryStates:I

    .line 264
    const/4 v1, -0x1

    iput v1, p0, mActiveHistoryStates2:I

    .line 265
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mLastHistoryElapsedRealtime:J

    .line 266
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mTrackRunningHistoryElapsedRealtime:J

    .line 267
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mTrackRunningHistoryUptime:J

    .line 269
    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 278
    const/4 v1, 0x0

    iput-byte v1, p0, mLastHistoryStepLevel:B

    .line 279
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 280
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 281
    new-instance v1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v1, p0, mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 329
    const/4 v1, 0x0

    iput v1, p0, mScreenState:I

    .line 332
    const/4 v1, -0x1

    iput v1, p0, mScreenBrightnessBin:I

    .line 333
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 362
    const/4 v1, -0x1

    iput v1, p0, mPhoneSignalStrengthBin:I

    .line 363
    const/4 v1, -0x1

    iput v1, p0, mPhoneSignalStrengthBinRaw:I

    .line 364
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 369
    const/4 v1, -0x1

    iput v1, p0, mPhoneDataConnectionType:I

    .line 370
    const/16 v1, 0x11

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 373
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 375
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 378
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 381
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 390
    const/4 v1, -0x1

    iput v1, p0, mWifiState:I

    .line 391
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 393
    const/4 v1, -0x1

    iput v1, p0, mWifiSupplState:I

    .line 394
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 396
    const/4 v1, -0x1

    iput v1, p0, mWifiSignalStrengthBin:I

    .line 397
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 400
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, mMobileRadioPowerState:I

    .line 408
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v1, p0, mWifiRadioPowerState:I

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, p0, mCharging:Z

    .line 442
    const/4 v1, 0x0

    iput v1, p0, mInitStepMode:I

    .line 443
    const/4 v1, 0x0

    iput v1, p0, mCurStepMode:I

    .line 444
    const/4 v1, 0x0

    iput v1, p0, mModStepMode:I

    .line 448
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0xc8

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 449
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0x190

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 454
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0xc8

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 455
    new-instance v1, Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v6, 0x190

    invoke-direct {v1, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    iput-object v1, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    .line 459
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mDailyStartTime:J

    .line 460
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mNextMinDailyDeadline:J

    .line 461
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mNextMaxDailyDeadline:J

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mDailyItems:Ljava/util/ArrayList;

    .line 465
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mLastWriteTime:J

    .line 467
    const/4 v1, -0x1

    iput v1, p0, mPhoneServiceState:I

    .line 468
    const/4 v1, -0x1

    iput v1, p0, mPhoneServiceStateRaw:I

    .line 469
    const/4 v1, -0x1

    iput v1, p0, mPhoneSimStateRaw:I

    .line 475
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, mHasWifiEnergyReporting:Z

    .line 479
    const/4 v1, 0x0

    iput-boolean v1, p0, mHasBluetoothEnergyReporting:Z

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mKernelWakelockStats:Ljava/util/HashMap;

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, mLastWakeupReason:Ljava/lang/String;

    .line 491
    const-wide/16 v6, 0x0

    iput-wide v6, p0, mLastWakeupUptimeMs:J

    .line 492
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mWakeupReasonStats:Ljava/util/HashMap;

    .line 2375
    const/4 v1, 0x0

    iput v1, p0, mChangedStates:I

    .line 2376
    const/4 v1, 0x0

    iput v1, p0, mChangedStates2:I

    .line 2781
    const/4 v1, -0x1

    iput v1, p0, mInitialAcquireWakeUid:I

    .line 3928
    const/4 v1, 0x0

    iput v1, p0, mWifiFullLockNesting:I

    .line 3958
    const/4 v1, 0x0

    iput v1, p0, mWifiScanNesting:I

    .line 4000
    const/4 v1, 0x0

    iput v1, p0, mWifiMulticastNesting:I

    .line 7643
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v1, p0, mMobileIfaces:[Ljava/lang/String;

    .line 7644
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v1, p0, mWifiIfaces:[Ljava/lang/String;

    .line 7646
    new-instance v1, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v1, p0, mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 7652
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/NetworkStats;

    const/4 v6, 0x0

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x32

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v7, v1, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x32

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v7, v1, v6

    const/4 v6, 0x2

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x32

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v7, v1, v6

    iput-object v1, p0, mMobileNetworkStats:[Landroid/net/NetworkStats;

    .line 7658
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/NetworkStats;

    const/4 v6, 0x0

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x32

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v7, v1, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x32

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v7, v1, v6

    const/4 v6, 0x2

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x32

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    aput-object v7, v1, v6

    iput-object v1, p0, mWifiNetworkStats:[Landroid/net/NetworkStats;

    .line 8733
    const/4 v1, 0x1

    iput-boolean v1, p0, mFeatureComputeChargeTimeModel:Z

    .line 8734
    const-string v1, "/sys/class/power_supply/battery/time_to_full_now"

    iput-object v1, p0, CHARGE_TIME_PATH:Ljava/lang/String;

    .line 8991
    const/4 v1, 0x0

    iput-object v1, p0, mPendingWrite:Landroid/os/Parcel;

    .line 8992
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6869
    if-eqz p1, :cond_2d3

    .line 6870
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "batterystats.bin"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v8, "batterystats.bin.tmp"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, mFile:Lcom/android/internal/util/JournaledFile;

    .line 6875
    :goto_282
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "batterystats-checkin.bin"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 6876
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v7, "batterystats-daily.xml"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, mDailyFile:Lcom/android/internal/os/AtomicFile;

    .line 6877
    iput-object p3, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .line 6878
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    .line 6879
    iget v1, p0, mStartCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mStartCount:I

    .line 6880
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2be
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2d7

    .line 6882
    iget-object v1, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int/lit8 v8, v0, -0x64

    const/4 v9, 0x0

    iget-object v10, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6881
    add-int/lit8 v0, v0, 0x1

    goto :goto_2be

    .line 6873
    .end local v0    # "i":I
    :cond_2d3
    const/4 v1, 0x0

    iput-object v1, p0, mFile:Lcom/android/internal/util/JournaledFile;

    goto :goto_282

    .line 6884
    .restart local v0    # "i":I
    :cond_2d7
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0xa

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6885
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6886
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0xb

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6887
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0xc

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6888
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x3

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6889
    const/4 v0, 0x0

    :goto_317
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v0, v1, :cond_32d

    .line 6890
    iget-object v1, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0xc8

    const/4 v9, 0x0

    iget-object v10, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6889
    add-int/lit8 v0, v0, 0x1

    goto :goto_317

    .line 6893
    :cond_32d
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0xc7

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6894
    const/4 v0, 0x0

    :goto_33b
    const/16 v1, 0x11

    if-ge v0, v1, :cond_351

    .line 6895
    iget-object v1, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x12c

    const/4 v9, 0x0

    iget-object v10, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6894
    add-int/lit8 v0, v0, 0x1

    goto :goto_33b

    .line 6898
    :cond_351
    const/4 v0, 0x0

    :goto_352
    const/4 v1, 0x4

    if-ge v0, v1, :cond_36e

    .line 6899
    iget-object v1, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6900
    iget-object v1, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6898
    add-int/lit8 v0, v0, 0x1

    goto :goto_352

    .line 6902
    :cond_36e
    const/4 v0, 0x0

    :goto_36f
    const/4 v1, 0x4

    if-ge v0, v1, :cond_38b

    .line 6903
    iget-object v1, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6904
    iget-object v1, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v7, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6902
    add-int/lit8 v0, v0, 0x1

    goto :goto_36f

    .line 6906
    :cond_38b
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x190

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6907
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x191

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6908
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6909
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6910
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6911
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x4

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6912
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x5

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6913
    const/4 v0, 0x0

    :goto_3d9
    const/16 v1, 0x8

    if-ge v0, v1, :cond_3ef

    .line 6914
    iget-object v1, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x258

    const/4 v9, 0x0

    iget-object v10, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6913
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d9

    .line 6916
    :cond_3ef
    const/4 v0, 0x0

    :goto_3f0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_406

    .line 6917
    iget-object v1, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x2bc

    const/4 v9, 0x0

    iget-object v10, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6916
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f0

    .line 6919
    :cond_406
    const/4 v0, 0x0

    :goto_407
    const/4 v1, 0x5

    if-ge v0, v1, :cond_41c

    .line 6920
    iget-object v1, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    rsub-int v8, v0, -0x320

    const/4 v9, 0x0

    iget-object v10, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v6, v1, v0

    .line 6919
    add-int/lit8 v0, v0, 0x1

    goto :goto_407

    .line 6923
    :cond_41c
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x7

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6924
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x8

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6925
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0x9

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6926
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/16 v7, -0xd

    const/4 v8, 0x0

    iget-object v9, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6927
    const/4 v1, 0x0

    iput-boolean v1, p0, mOnBatteryInternal:Z

    iput-boolean v1, p0, mOnBattery:Z

    .line 6928
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .line 6929
    .local v4, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 6930
    .local v2, "realtime":J
    invoke-virtual {p0, v4, v5, v2, v3}, initTimes(JJ)V

    .line 6931
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, mEndPlatformVersion:Ljava/lang/String;

    iput-object v1, p0, mStartPlatformVersion:Ljava/lang/String;

    .line 6932
    const/4 v1, 0x0

    iput v1, p0, mDischargeStartLevel:I

    .line 6933
    const/4 v1, 0x0

    iput v1, p0, mDischargeUnplugLevel:I

    .line 6934
    const/4 v1, -0x1

    iput v1, p0, mDischargePlugLevel:I

    .line 6935
    const/4 v1, 0x0

    iput v1, p0, mDischargeCurrentLevel:I

    .line 6936
    const/4 v1, 0x0

    iput v1, p0, mCurrentBatteryLevel:I

    .line 6937
    invoke-virtual {p0}, initDischarge()V

    .line 6938
    invoke-virtual {p0}, clearHistoryLocked()V

    .line 6939
    invoke-virtual {p0}, updateDailyDeadlineLocked()V

    .line 6940
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 97
    iget-object v0, p0, mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 97
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method private addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 12
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v4, 0x0

    .line 2356
    iget-boolean v0, p0, mIteratingHistory:Z

    if-eqz v0, :cond_d

    .line 2357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t do this while iterating history!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :cond_d
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, mHistoryBufferLastPos:I

    .line 2360
    iget-object v0, p0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2361
    iget-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, p0, mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2362
    iget-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v2, p0, mActiveHistoryStates:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2363
    iget-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v2, p0, mActiveHistoryStates2:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2364
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v2, p0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v0, v1, v2}, writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V

    .line 2365
    iput-wide p1, p0, mLastHistoryElapsedRealtime:J

    .line 2366
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2367
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2368
    const/4 v0, 0x0

    iput v0, p6, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2369
    iput-object v4, p6, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2373
    return-void
.end method

.method private addPackageChange(Landroid/os/BatteryStats$PackageChange;)V
    .registers 3
    .param p1, "pc"    # Landroid/os/BatteryStats$PackageChange;

    .prologue
    .line 3306
    iget-object v0, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 3307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    .line 3309
    :cond_b
    iget-object v0, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3310
    return-void
.end method

.method private buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 5
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1990
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, -0x2000000

    and-int/2addr v0, v1

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    shl-int/lit8 v1, v1, 0xe

    const v2, 0x1ff8000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7fff

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 6
    .param p1, "h"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1996
    const/4 v0, 0x0

    .line 1997
    .local v0, "plugType":I
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    .line 1998
    const/4 v0, 0x1

    .line 2004
    :cond_8
    :goto_8
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1d

    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v1, v2

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    .line 1999
    :cond_22
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2a

    .line 2000
    const/4 v0, 0x2

    goto :goto_8

    .line 2001
    :cond_2a
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 2002
    const/4 v0, 0x3

    goto :goto_8
.end method

.method private computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V
    .registers 16
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryStepDetails;
    .param p2, "last"    # Landroid/os/BatteryStats$HistoryStepDetails;

    .prologue
    const/4 v12, 0x0

    .line 2012
    if-eqz p2, :cond_26

    iget-object v2, p0, mTmpHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2016
    .local v2, "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    :goto_5
    invoke-direct {p0}, requestImmediateCpuUpdate()V

    .line 2018
    if-nez p2, :cond_4c

    .line 2021
    iget-object v7, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2022
    .local v0, "NU":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_28

    .line 2023
    iget-object v7, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2024
    .local v6, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 2025
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    .line 2022
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .end local v0    # "NU":I
    .end local v1    # "i":I
    .end local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_26
    move-object v2, p1

    .line 2012
    goto :goto_5

    .line 2027
    .restart local v0    # "NU":I
    .restart local v1    # "i":I
    .restart local v2    # "tmp":Landroid/os/BatteryStats$HistoryStepDetails;
    :cond_28
    iget-wide v8, p0, mCurStepCpuUserTime:J

    iput-wide v8, p0, mLastStepCpuUserTime:J

    .line 2028
    iget-wide v8, p0, mCurStepCpuSystemTime:J

    iput-wide v8, p0, mLastStepCpuSystemTime:J

    .line 2029
    iget-wide v8, p0, mCurStepStatUserTime:J

    iput-wide v8, p0, mLastStepStatUserTime:J

    .line 2030
    iget-wide v8, p0, mCurStepStatSystemTime:J

    iput-wide v8, p0, mLastStepStatSystemTime:J

    .line 2031
    iget-wide v8, p0, mCurStepStatIOWaitTime:J

    iput-wide v8, p0, mLastStepStatIOWaitTime:J

    .line 2032
    iget-wide v8, p0, mCurStepStatIrqTime:J

    iput-wide v8, p0, mLastStepStatIrqTime:J

    .line 2033
    iget-wide v8, p0, mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, mLastStepStatSoftIrqTime:J

    .line 2034
    iget-wide v8, p0, mCurStepStatIdleTime:J

    iput-wide v8, p0, mLastStepStatIdleTime:J

    .line 2035
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    .line 2100
    :goto_4b
    return-void

    .line 2048
    .end local v0    # "NU":I
    .end local v1    # "i":I
    :cond_4c
    iget-wide v8, p0, mCurStepCpuUserTime:J

    iget-wide v10, p0, mLastStepCpuUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 2049
    iget-wide v8, p0, mCurStepCpuSystemTime:J

    iget-wide v10, p0, mLastStepCpuSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 2050
    iget-wide v8, p0, mCurStepStatUserTime:J

    iget-wide v10, p0, mLastStepStatUserTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 2051
    iget-wide v8, p0, mCurStepStatSystemTime:J

    iget-wide v10, p0, mLastStepStatSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 2052
    iget-wide v8, p0, mCurStepStatIOWaitTime:J

    iget-wide v10, p0, mLastStepStatIOWaitTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 2053
    iget-wide v8, p0, mCurStepStatIrqTime:J

    iget-wide v10, p0, mLastStepStatIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 2054
    iget-wide v8, p0, mCurStepStatSoftIrqTime:J

    iget-wide v10, p0, mLastStepStatSoftIrqTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 2055
    iget-wide v8, p0, mCurStepStatIdleTime:J

    iget-wide v10, p0, mLastStepStatIdleTime:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 2056
    const/4 v7, -0x1

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 2057
    iput v12, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v12, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v12, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 2058
    iput v12, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v12, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v12, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 2059
    iget-object v7, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2060
    .restart local v0    # "NU":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a6
    if-ge v1, v0, :cond_111

    .line 2061
    iget-object v7, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2062
    .restart local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    .line 2063
    .local v5, "totalUTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iget-wide v10, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    .line 2064
    .local v3, "totalSTime":I
    add-int v4, v5, v3

    .line 2065
    .local v4, "totalTime":I
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 2066
    iget-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    iput-wide v8, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    .line 2067
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_d0

    .line 2060
    :goto_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    .line 2070
    :cond_d0
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_e0

    .line 2071
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 2072
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 2073
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_cd

    .line 2075
    :cond_e0
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 2076
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 2077
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 2078
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v8, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int/2addr v7, v8

    if-gt v4, v7, :cond_fc

    .line 2079
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 2080
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 2081
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_cd

    .line 2083
    :cond_fc
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 2084
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 2085
    iget v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 2086
    iget v7, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    iput v7, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 2087
    iput v5, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 2088
    iput v3, p1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    goto :goto_cd

    .line 2092
    .end local v3    # "totalSTime":I
    .end local v4    # "totalTime":I
    .end local v5    # "totalUTime":I
    .end local v6    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_111
    iget-wide v8, p0, mCurStepCpuUserTime:J

    iput-wide v8, p0, mLastStepCpuUserTime:J

    .line 2093
    iget-wide v8, p0, mCurStepCpuSystemTime:J

    iput-wide v8, p0, mLastStepCpuSystemTime:J

    .line 2094
    iget-wide v8, p0, mCurStepStatUserTime:J

    iput-wide v8, p0, mLastStepStatUserTime:J

    .line 2095
    iget-wide v8, p0, mCurStepStatSystemTime:J

    iput-wide v8, p0, mLastStepStatSystemTime:J

    .line 2096
    iget-wide v8, p0, mCurStepStatIOWaitTime:J

    iput-wide v8, p0, mLastStepStatIOWaitTime:J

    .line 2097
    iget-wide v8, p0, mCurStepStatIrqTime:J

    iput-wide v8, p0, mLastStepStatIrqTime:J

    .line 2098
    iget-wide v8, p0, mCurStepStatSoftIrqTime:J

    iput-wide v8, p0, mLastStepStatSoftIrqTime:J

    .line 2099
    iget-wide v8, p0, mCurStepStatIdleTime:J

    iput-wide v8, p0, mLastStepStatIdleTime:J

    goto/16 :goto_4b
.end method

.method private computeTimePerLevel([JI)J
    .registers 11
    .param p1, "steps"    # [J
    .param p2, "numSteps"    # I

    .prologue
    .line 8658
    if-gtz p2, :cond_5

    .line 8659
    const-wide/16 v4, -0x1

    .line 8665
    :goto_4
    return-wide v4

    .line 8661
    :cond_5
    const-wide/16 v2, 0x0

    .line 8662
    .local v2, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, p2, :cond_16

    .line 8663
    aget-wide v4, p1, v0

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 8662
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 8665
    :cond_16
    int-to-long v4, p2

    div-long v4, v2, v4

    goto :goto_4
.end method

.method private static excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4098
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4099
    .local v0, "index":I
    if-ltz v0, :cond_20

    .line 4100
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 4101
    .local v1, "newArray":[Ljava/lang/String;
    if-lez v0, :cond_11

    .line 4102
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4104
    :cond_11
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1f

    .line 4105
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4109
    .end local v1    # "newArray":[Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-object v1

    :cond_20
    move-object v1, p0

    goto :goto_1f
.end method

.method private fixPhoneServiceState(II)I
    .registers 5
    .param p1, "state"    # I
    .param p2, "signalBin"    # I

    .prologue
    const/4 v1, 0x1

    .line 3351
    iget v0, p0, mPhoneSimStateRaw:I

    if-ne v0, v1, :cond_a

    .line 3354
    if-ne p1, v1, :cond_a

    if-lez p2, :cond_a

    .line 3356
    const/4 p1, 0x0

    .line 3360
    :cond_a
    return p1
.end method

.method private getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 11
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "networkStatsBuffer"    # [Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 7671
    const-string/jumbo v2, "net.qtaguid_enabled"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 7683
    :goto_d
    return-object v1

    .line 7676
    :cond_e
    iget-object v2, p0, mNetworkStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v3, -0x1

    aget-object v4, p2, v7

    invoke-virtual {v2, v3, p1, v5, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 7678
    .local v0, "stats":Landroid/net/NetworkStats;
    aget-object v2, p2, v5

    aget-object v3, p2, v6

    invoke-static {v0, v2, v1, v1, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    aput-object v1, p2, v6

    .line 7681
    aget-object v1, p2, v5

    aput-object v1, p2, v7

    .line 7682
    aput-object v0, p2, v5

    .line 7683
    aget-object v1, p2, v6

    goto :goto_d
.end method

.method private static includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4088
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_8

    .line 4094
    .end local p0    # "array":[Ljava/lang/String;
    :goto_7
    return-object p0

    .line 4091
    .restart local p0    # "array":[Ljava/lang/String;
    :cond_8
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 4092
    .local v0, "newArray":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4093
    array-length v1, p0

    aput-object p1, v0, v1

    move-object p0, v0

    .line 4094
    goto :goto_7
.end method

.method private initActiveHistoryEventsLocked(JJ)V
    .registers 18
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 7594
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v1, 0x13

    if-ge v6, v1, :cond_4c

    .line 7595
    iget-boolean v1, p0, mRecordAllHistory:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    if-ne v6, v1, :cond_f

    .line 7594
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7599
    :cond_f
    iget-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 7600
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_c

    .line 7603
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 7604
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 7605
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_32
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_1f

    .line 7606
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 7605
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    .line 7611
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_4c
    return-void
.end method

.method private readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 7144
    :cond_3
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    if-eq v3, v4, :cond_b

    if-ne v3, v7, :cond_3

    .line 7148
    :cond_b
    if-eq v3, v4, :cond_30

    .line 7149
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_16} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_16} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_16} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_16} :catch_ab
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_16} :catch_e1

    .line 7169
    .end local v3    # "type":I
    :catch_16
    move-exception v0

    .line 7170
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing daily "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7182
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2f
    :goto_2f
    return-void

    .line 7152
    .restart local v3    # "type":I
    :cond_30
    :try_start_30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 7154
    .local v1, "outerDepth":I
    :cond_34
    :goto_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v7, :cond_2f

    if-ne v3, v8, :cond_42

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_2f

    .line 7155
    :cond_42
    if-eq v3, v8, :cond_34

    const/4 v4, 0x4

    if-eq v3, v4, :cond_34

    .line 7159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7160
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 7161
    invoke-virtual {p0, p1}, readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_56
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_56} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_56} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_56} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_56} :catch_ab
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_56} :catch_c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_56} :catch_e1

    goto :goto_34

    .line 7171
    .end local v1    # "outerDepth":I
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "type":I
    :catch_57
    move-exception v0

    .line 7172
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing daily "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 7163
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_71
    :try_start_71
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <daily-items>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7165
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_90
    .catch Ljava/lang/IllegalStateException; {:try_start_71 .. :try_end_90} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_71 .. :try_end_90} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_90} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_90} :catch_ab
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_90} :catch_c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_71 .. :try_end_90} :catch_e1

    goto :goto_34

    .line 7173
    .end local v1    # "outerDepth":I
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "type":I
    :catch_91
    move-exception v0

    .line 7174
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing daily "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 7175
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_ab
    move-exception v0

    .line 7176
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing daily "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 7177
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_c6
    move-exception v0

    .line 7178
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing daily "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 7179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e1
    move-exception v0

    .line 7180
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing daily "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f
.end method

.method private readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1830
    iget-object v0, p0, mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1831
    iget-object v0, p0, mReadHistoryUids:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1832
    iput p1, p2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1833
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)J
    .registers 12
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 8736
    const-wide/16 v4, -0x1

    .line 8737
    .local v4, "time":J
    const/4 v0, 0x0

    .line 8738
    .local v0, "buf":Ljava/io/BufferedReader;
    iget-boolean v6, p0, mFeatureComputeChargeTimeModel:Z

    if-nez v6, :cond_13

    .line 8739
    const-string v6, "BatteryStatsImpl"

    const-string v7, "This device is not supported own charge time."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8740
    const-wide/16 v6, -0x1

    .line 8764
    :goto_12
    return-wide v6

    .line 8744
    :cond_13
    :try_start_13
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_3d
    .catchall {:try_start_13 .. :try_end_1f} :catchall_4c

    .line 8745
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_2d

    .line 8746
    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 8747
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_2d

    .line 8748
    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_5b
    .catchall {:try_start_21 .. :try_end_2c} :catchall_58

    move-result-wide v4

    .line 8755
    .end local v3    # "str":Ljava/lang/String;
    :cond_2d
    if-eqz v1, :cond_5e

    .line 8757
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_37

    move-object v0, v1

    .line 8764
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_33
    :goto_33
    mul-long v6, v4, v8

    mul-long/2addr v6, v8

    goto :goto_12

    .line 8758
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_37
    move-exception v2

    .line 8759
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 8760
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_33

    .line 8751
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3d
    move-exception v2

    .line 8752
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3e
    const/4 v6, 0x0

    :try_start_3f
    iput-boolean v6, p0, mFeatureComputeChargeTimeModel:Z
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_4c

    .line 8755
    if-eqz v0, :cond_33

    .line 8757
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_33

    .line 8758
    :catch_47
    move-exception v2

    .line 8759
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .line 8755
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4c
    move-exception v6

    :goto_4d
    if-eqz v0, :cond_52

    .line 8757
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 8760
    :cond_52
    :goto_52
    throw v6

    .line 8758
    :catch_53
    move-exception v2

    .line 8759
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 8755
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_58
    move-exception v6

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4d

    .line 8751
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_5b
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3e

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_5e
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_33
.end method

.method private recordCurrentTimeChangeLocked(JJJ)V
    .registers 16
    .param p1, "currentTime"    # J
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .prologue
    .line 8431
    iget-boolean v0, p0, mRecordingHistory:Z

    if-eqz v0, :cond_17

    .line 8432
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput-wide p1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8433
    const/4 v6, 0x5

    iget-object v7, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v7}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8435
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8437
    :cond_17
    return-void
.end method

.method private recordShutdownLocked(JJ)V
    .registers 14
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 8440
    iget-boolean v0, p0, mRecordingHistory:Z

    if-eqz v0, :cond_1c

    .line 8441
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8442
    const/16 v6, 0x8

    iget-object v7, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8444
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8446
    :cond_1c
    return-void
.end method

.method private requestImmediateCpuUpdate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2732
    iget-object v0, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2733
    iget-object v0, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 2734
    return-void
.end method

.method private requestWakelockCpuUpdate()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2725
    iget-object v1, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2726
    iget-object v1, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2727
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2729
    .end local v0    # "m":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private resetAllStatsLocked()V
    .registers 11

    .prologue
    .line 7507
    const/4 v3, 0x0

    iput v3, p0, mStartCount:I

    .line 7508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, initTimes(JJ)V

    .line 7509
    iget-object v3, p0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    const/4 v3, 0x5

    if-ge v0, v3, :cond_29

    .line 7511
    iget-object v3, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 7513
    :cond_29
    iget-object v3, p0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7514
    iget-object v3, p0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7515
    iget-object v3, p0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7516
    iget-object v3, p0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7517
    iget-object v3, p0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7518
    iget-object v3, p0, mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7519
    iget-object v3, p0, mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7520
    iget-object v3, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7521
    iget-object v3, p0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7522
    const/4 v0, 0x0

    :goto_60
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v0, v3, :cond_6f

    .line 7523
    iget-object v3, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7522
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 7525
    :cond_6f
    iget-object v3, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7526
    const/4 v0, 0x0

    :goto_76
    const/16 v3, 0x11

    if-ge v0, v3, :cond_85

    .line 7527
    iget-object v3, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7526
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 7529
    :cond_85
    const/4 v0, 0x0

    :goto_86
    const/4 v3, 0x4

    if-ge v0, v3, :cond_9c

    .line 7530
    iget-object v3, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7531
    iget-object v3, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7529
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 7533
    :cond_9c
    iget-object v3, p0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7534
    iget-object v3, p0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7535
    iget-object v3, p0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7536
    iget-object v3, p0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7537
    iget-object v3, p0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7538
    iget-object v3, p0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7539
    iget-object v3, p0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7540
    const/4 v0, 0x0

    :goto_c7
    const/16 v3, 0x8

    if-ge v0, v3, :cond_d6

    .line 7541
    iget-object v3, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7540
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 7543
    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    const/16 v3, 0xd

    if-ge v0, v3, :cond_e6

    .line 7544
    iget-object v3, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7543
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 7546
    :cond_e6
    const/4 v0, 0x0

    :goto_e7
    const/4 v3, 0x5

    if-ge v0, v3, :cond_f5

    .line 7547
    iget-object v3, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    .line 7546
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 7549
    :cond_f5
    const/4 v0, 0x0

    :goto_f6
    const/4 v3, 0x4

    if-ge v0, v3, :cond_10c

    .line 7550
    iget-object v3, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7551
    iget-object v3, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 7549
    add-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 7553
    :cond_10c
    const/4 v3, 0x0

    iput v3, p0, mUnpluggedNumConnectivityChange:I

    iput v3, p0, mLoadedNumConnectivityChange:I

    iput v3, p0, mNumConnectivityChange:I

    .line 7555
    const/4 v0, 0x0

    :goto_114
    iget-object v3, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_13a

    .line 7556
    iget-object v3, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reset()Z

    move-result v3

    if-eqz v3, :cond_137

    .line 7557
    iget-object v3, p0, mUidStats:Landroid/util/SparseArray;

    iget-object v4, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 7558
    add-int/lit8 v0, v0, -0x1

    .line 7555
    :cond_137
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 7562
    :cond_13a
    iget-object v3, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_163

    .line 7563
    iget-object v3, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7564
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_14c

    .line 7566
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_15e
    iget-object v3, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7569
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_163
    iget-object v3, p0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_18c

    .line 7570
    iget-object v3, p0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_175
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_187

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 7571
    .restart local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v3, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    goto :goto_175

    .line 7573
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_187
    iget-object v3, p0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7576
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_18c
    const/4 v3, 0x0

    iput-object v3, p0, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 7577
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mLastStepCpuSystemTime:J

    iput-wide v4, p0, mLastStepCpuUserTime:J

    .line 7578
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepCpuSystemTime:J

    iput-wide v4, p0, mCurStepCpuUserTime:J

    .line 7579
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepCpuUserTime:J

    iput-wide v4, p0, mLastStepCpuUserTime:J

    .line 7580
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepCpuSystemTime:J

    iput-wide v4, p0, mLastStepCpuSystemTime:J

    .line 7581
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepStatUserTime:J

    iput-wide v4, p0, mLastStepStatUserTime:J

    .line 7582
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepStatSystemTime:J

    iput-wide v4, p0, mLastStepStatSystemTime:J

    .line 7583
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepStatIOWaitTime:J

    iput-wide v4, p0, mLastStepStatIOWaitTime:J

    .line 7584
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepStatIrqTime:J

    iput-wide v4, p0, mLastStepStatIrqTime:J

    .line 7585
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepStatSoftIrqTime:J

    iput-wide v4, p0, mLastStepStatSoftIrqTime:J

    .line 7586
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mCurStepStatIdleTime:J

    iput-wide v4, p0, mLastStepStatIdleTime:J

    .line 7588
    invoke-virtual {p0}, initDischarge()V

    .line 7590
    invoke-virtual {p0}, clearHistoryLocked()V

    .line 7591
    return-void
.end method

.method private scheduleSyncExternalStatsLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8449
    iget-object v0, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_9

    .line 8450
    iget-object v0, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSync(Ljava/lang/String;)V

    .line 8452
    :cond_9
    return-void
.end method

.method private scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8455
    iget-object v0, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v0, :cond_9

    .line 8456
    iget-object v0, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleWifiSync(Ljava/lang/String;)V

    .line 8458
    :cond_9
    return-void
.end method

.method private startRecordingHistory(JJZ)V
    .registers 15
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "reset"    # Z

    .prologue
    .line 8418
    const/4 v0, 0x1

    iput-boolean v0, p0, mRecordingHistory:Z

    .line 8419
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8420
    if-eqz p5, :cond_22

    const/4 v6, 0x7

    :goto_e
    iget-object v7, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 8423
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 8424
    if-eqz p5, :cond_21

    .line 8425
    invoke-direct {p0, p1, p2, p3, p4}, initActiveHistoryEventsLocked(JJ)V

    .line 8427
    :cond_21
    return-void

    .line 8420
    :cond_22
    const/4 v6, 0x5

    goto :goto_e
.end method

.method private updateAllPhoneStateLocked(III)V
    .registers 13
    .param p1, "state"    # I
    .param p2, "simState"    # I
    .param p3, "strengthBin"    # I

    .prologue
    const/4 v7, 0x1

    .line 3364
    const/4 v3, 0x0

    .line 3365
    .local v3, "scanning":Z
    const/4 v2, 0x0

    .line 3367
    .local v2, "newHistory":Z
    iput p1, p0, mPhoneServiceStateRaw:I

    .line 3368
    iput p2, p0, mPhoneSimStateRaw:I

    .line 3369
    iput p3, p0, mPhoneSignalStrengthBinRaw:I

    .line 3371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3372
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3374
    .local v4, "uptime":J
    if-ne p2, v7, :cond_18

    .line 3377
    if-ne p1, v7, :cond_18

    if-lez p3, :cond_18

    .line 3379
    const/4 p1, 0x0

    .line 3384
    :cond_18
    const/4 v6, 0x3

    if-ne p1, v6, :cond_84

    .line 3385
    const/4 p3, -0x1

    .line 3405
    :cond_1c
    :goto_1c
    if-nez v3, :cond_36

    .line 3407
    iget-object v6, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 3408
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x200001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3411
    const/4 v2, 0x1

    .line 3412
    iget-object v6, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3416
    :cond_36
    iget v6, p0, mPhoneServiceState:I

    if-eq v6, p1, :cond_4a

    .line 3417
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v7, v7, -0x1c1

    shl-int/lit8 v8, p1, 0x6

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3421
    const/4 v2, 0x1

    .line 3422
    iput p1, p0, mPhoneServiceState:I

    .line 3425
    :cond_4a
    iget v6, p0, mPhoneSignalStrengthBin:I

    if-eq v6, p3, :cond_7e

    .line 3426
    iget v6, p0, mPhoneSignalStrengthBin:I

    if-ltz v6, :cond_5b

    .line 3427
    iget-object v6, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v7, p0, mPhoneSignalStrengthBin:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3430
    :cond_5b
    if-ltz p3, :cond_a3

    .line 3431
    iget-object v6, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 3432
    iget-object v6, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v6, v6, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3434
    :cond_6e
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v7, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v7, v7, -0x39

    shl-int/lit8 v8, p3, 0x3

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3438
    const/4 v2, 0x1

    .line 3442
    :goto_7c
    iput p3, p0, mPhoneSignalStrengthBin:I

    .line 3445
    :cond_7e
    if-eqz v2, :cond_83

    .line 3446
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3448
    :cond_83
    return-void

    .line 3388
    :cond_84
    if-eqz p1, :cond_1c

    .line 3393
    if-ne p1, v7, :cond_1c

    .line 3394
    const/4 v3, 0x1

    .line 3395
    const/4 p3, 0x0

    .line 3396
    iget-object v6, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 3397
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3398
    const/4 v2, 0x1

    .line 3401
    iget-object v6, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto/16 :goto_1c

    .line 3440
    :cond_a3
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, stopAllPhoneSignalStrengthTimersLocked(I)V

    goto :goto_7c
.end method

.method private writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 7071
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7072
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7073
    const-string v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7074
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v5, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_aa

    .line 7075
    iget-object v5, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$DailyItem;

    .line 7076
    .local v0, "dit":Landroid/os/BatteryStats$DailyItem;
    const-string v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7077
    const-string/jumbo v5, "start"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7078
    const-string v5, "end"

    iget-wide v6, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7079
    const-string v5, "dis"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    .line 7080
    const-string v5, "chg"

    iget-object v6, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {p0, p1, v5, v6, v4}, writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V

    .line 7081
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-eqz v5, :cond_a1

    .line 7082
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_55
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a1

    .line 7083
    iget-object v5, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$PackageChange;

    .line 7084
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v5, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v5, :cond_8c

    .line 7085
    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7086
    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7087
    const-string/jumbo v5, "ver"

    iget v6, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7088
    const-string/jumbo v5, "upd"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7082
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 7090
    :cond_8c
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7091
    const-string/jumbo v5, "pkg"

    iget-object v6, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7092
    const-string/jumbo v5, "rem"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_89

    .line 7096
    .end local v2    # "j":I
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_a1
    const-string v5, "item"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7074
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 7098
    .end local v0    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_aa
    const-string v5, "daily-items"

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7099
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 7100
    return-void
.end method

.method private writeDailyLevelSteps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "tmpBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7104
    if-eqz p3, :cond_3a

    .line 7105
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7106
    const-string/jumbo v1, "n"

    iget v2, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v1, p3, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-ge v0, v1, :cond_37

    .line 7108
    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7109
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7110
    invoke-virtual {p3, v0, p4}, Landroid/os/BatteryStats$LevelStepTracker;->encodeEntryAt(ILjava/lang/StringBuilder;)V

    .line 7111
    const-string/jumbo v1, "v"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7112
    const-string/jumbo v1, "s"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7107
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 7114
    :cond_37
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7116
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method private writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I
    .registers 7
    .param p1, "tag"    # Landroid/os/BatteryStats$HistoryTag;

    .prologue
    .line 1813
    iget-object v3, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1815
    .local v1, "idxObj":Ljava/lang/Integer;
    if-eqz v1, :cond_f

    .line 1816
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1826
    .local v0, "idx":I
    :goto_e
    return v0

    .line 1818
    .end local v0    # "idx":I
    :cond_f
    iget v0, p0, mNextHistoryTagIdx:I

    .line 1819
    .restart local v0    # "idx":I
    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 1820
    .local v2, "key":Landroid/os/BatteryStats$HistoryTag;
    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 1821
    iput v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1822
    iget-object v3, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget v3, p0, mNextHistoryTagIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mNextHistoryTagIdx:I

    .line 1824
    iget v3, p0, mNumHistoryTagChars:I

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, mNumHistoryTagChars:I

    goto :goto_e
.end method


# virtual methods
.method addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 27
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2237
    move-object/from16 v0, p0

    iget-boolean v3, v0, mHaveBatteryLevel:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, mRecordingHistory:Z

    if-nez v3, :cond_d

    .line 2352
    :cond_c
    :goto_c
    return-void

    .line 2241
    :cond_d
    move-object/from16 v0, p0

    iget-wide v4, v0, mHistoryBaseTime:J

    add-long v4, v4, p1

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v18, v4, v6

    .line 2242
    .local v18, "timeDiff":J
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget v5, v0, mActiveHistoryStates:I

    and-int/2addr v4, v5

    xor-int v12, v3, v4

    .line 2243
    .local v12, "diffStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget v5, v0, mActiveHistoryStates2:I

    and-int/2addr v4, v5

    xor-int v13, v3, v4

    .line 2244
    .local v13, "diffStates2":I
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int v14, v3, v4

    .line 2245
    .local v14, "lastDiffStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v4, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int v15, v3, v4

    .line 2251
    .local v15, "lastDiffStates2":I
    move-object/from16 v0, p0

    iget v3, v0, mHistoryBufferLastPos:I

    if-ltz v3, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v3, :cond_182

    const-wide/16 v4, 0x3e8

    cmp-long v3, v18, v4

    if-gez v3, :cond_182

    and-int v3, v12, v14

    if-nez v3, :cond_182

    and-int v3, v13, v15

    if-nez v3, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_83

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_182

    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_91

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v3, :cond_182

    :cond_91
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-nez v3, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_a7

    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-nez v3, :cond_182

    :cond_a7
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v3, v4, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v3, v4, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v3, v4, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p5

    iget-short v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v3, v4, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p5

    iget-char v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v3, v4, :cond_182

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p0

    iget v4, v0, mHistoryBufferLastPos:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2272
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, mHistoryBufferLastPos:I

    .line 2273
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v6, v0, mHistoryBaseTime:J

    sub-long p1, v4, v6

    .line 2277
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_133

    .line 2278
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2279
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2284
    :cond_133
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_150

    .line 2285
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2286
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2291
    :cond_150
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_177

    .line 2292
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, p5

    iput v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2293
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2294
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    .line 2296
    :cond_177
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2299
    :cond_182
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v11

    .line 2300
    .local v11, "dataSize":I
    const/high16 v3, 0x40000

    if-lt v11, v3, :cond_25f

    .line 2301
    move-object/from16 v0, p0

    iget-boolean v3, v0, mHistoryOverflow:Z

    if-nez v3, :cond_1b3

    .line 2302
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mHistoryOverflow:Z

    .line 2303
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2304
    const/4 v8, 0x6

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    goto/16 :goto_c

    .line 2309
    :cond_1b3
    const/16 v17, 0x0

    .line 2310
    .local v17, "writeAnyway":Z
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, -0x190000

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, mActiveHistoryStates:I

    and-int v2, v3, v4

    .line 2312
    .local v2, "curStates":I
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-eq v3, v2, :cond_1e8

    .line 2315
    move-object/from16 v0, p0

    iget v0, v0, mActiveHistoryStates:I

    move/from16 v16, v0

    .line 2316
    .local v16, "old":I
    move-object/from16 v0, p0

    iget v3, v0, mActiveHistoryStates:I

    const v4, 0x18ffff

    or-int/2addr v4, v2

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, mActiveHistoryStates:I

    .line 2317
    move-object/from16 v0, p0

    iget v3, v0, mActiveHistoryStates:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_25b

    const/4 v3, 0x1

    :goto_1e6
    or-int v17, v17, v3

    .line 2319
    .end local v16    # "old":I
    :cond_1e8
    move-object/from16 v0, p5

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x687f0000

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, mActiveHistoryStates2:I

    and-int v10, v3, v4

    .line 2321
    .local v10, "curStates2":I
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-eq v3, v10, :cond_21b

    .line 2324
    move-object/from16 v0, p0

    iget v0, v0, mActiveHistoryStates2:I

    move/from16 v16, v0

    .line 2325
    .restart local v16    # "old":I
    move-object/from16 v0, p0

    iget v3, v0, mActiveHistoryStates2:I

    const v4, -0x687f0001

    or-int/2addr v4, v10

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, mActiveHistoryStates2:I

    .line 2326
    move-object/from16 v0, p0

    iget v3, v0, mActiveHistoryStates2:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_25d

    const/4 v3, 0x1

    :goto_219
    or-int v17, v17, v3

    .line 2333
    .end local v16    # "old":I
    :cond_21b
    if-nez v17, :cond_24d

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p5

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v3, v4, :cond_24d

    const/high16 v3, 0x50000

    if-ge v11, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    xor-int/2addr v3, v4

    const/high16 v4, 0x180000

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget v3, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p5

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    xor-int/2addr v3, v4

    const/high16 v4, -0x68800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 2342
    :cond_24d
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    goto/16 :goto_c

    .line 2317
    .end local v10    # "curStates2":I
    .restart local v16    # "old":I
    :cond_25b
    const/4 v3, 0x0

    goto :goto_1e6

    .line 2326
    .restart local v10    # "curStates2":I
    :cond_25d
    const/4 v3, 0x0

    goto :goto_219

    .line 2346
    .end local v2    # "curStates":I
    .end local v10    # "curStates2":I
    .end local v16    # "old":I
    .end local v17    # "writeAnyway":Z
    :cond_25f
    if-nez v11, :cond_275

    .line 2348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    iput-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2349
    const/4 v8, 0x7

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2351
    :cond_275
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    goto/16 :goto_c
.end method

.method public addHistoryEventLocked(JJILjava/lang/String;I)V
    .registers 11
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "code"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "uid"    # I

    .prologue
    .line 2462
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iput p5, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2463
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2464
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p6, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2465
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iput p7, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2466
    invoke-virtual {p0, p1, p2, p3, p4}, addHistoryRecordLocked(JJ)V

    .line 2467
    return-void
.end method

.method addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V
    .registers 7
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2399
    invoke-virtual/range {p0 .. p5}, addHistoryBufferLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2402
    return-void
.end method

.method addHistoryRecordLocked(JJ)V
    .registers 26
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J

    .prologue
    .line 2379
    move-object/from16 v0, p0

    iget-wide v4, v0, mTrackRunningHistoryElapsedRealtime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_59

    .line 2380
    move-object/from16 v0, p0

    iget-wide v4, v0, mTrackRunningHistoryElapsedRealtime:J

    sub-long v16, p1, v4

    .line 2381
    .local v16, "diffElapsed":J
    move-object/from16 v0, p0

    iget-wide v4, v0, mTrackRunningHistoryUptime:J

    sub-long v18, p3, v4

    .line 2382
    .local v18, "diffUptime":J
    const-wide/16 v4, 0x14

    sub-long v4, v16, v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_59

    .line 2383
    sub-long v4, v16, v18

    sub-long v6, p1, v4

    .line 2384
    .local v6, "wakeElapsedTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v0, p0

    iget-object v5, v0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2385
    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2386
    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2387
    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2388
    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, 0x7fffffff

    and-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2389
    move-object/from16 v0, p0

    iget-object v10, v0, mHistoryAddTmp:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2392
    .end local v6    # "wakeElapsedTime":J
    .end local v16    # "diffElapsed":J
    .end local v18    # "diffUptime":J
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v8, -0x80000000

    or-int/2addr v5, v8

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2393
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, mTrackRunningHistoryElapsedRealtime:J

    .line 2394
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, mTrackRunningHistoryUptime:J

    .line 2395
    move-object/from16 v0, p0

    iget-object v14, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, addHistoryRecordInnerLocked(JJLandroid/os/BatteryStats$HistoryItem;)V

    .line 2396
    return-void
.end method

.method addHistoryRecordLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 12
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "uptimeMs"    # J
    .param p5, "cmd"    # B
    .param p6, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2470
    iget-object v0, p0, mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2471
    .local v0, "rec":Landroid/os/BatteryStats$HistoryItem;
    if-eqz v0, :cond_12

    .line 2472
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, mHistoryCache:Landroid/os/BatteryStats$HistoryItem;

    .line 2476
    :goto_8
    iget-wide v2, p0, mHistoryBaseTime:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Landroid/os/BatteryStats$HistoryItem;->setTo(JBLandroid/os/BatteryStats$HistoryItem;)V

    .line 2478
    invoke-virtual {p0, v0}, addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2479
    return-void

    .line 2474
    :cond_12
    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    .end local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v0    # "rec":Landroid/os/BatteryStats$HistoryItem;
    goto :goto_8
.end method

.method addHistoryRecordLocked(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 3
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2482
    iget v0, p0, mNumHistoryItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumHistoryItems:I

    .line 2483
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2484
    iget-object v0, p0, mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object v0, p0, mHistoryLastEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2485
    iget-object v0, p0, mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_18

    .line 2486
    iget-object v0, p0, mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    .line 2487
    iput-object p1, p0, mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    .line 2491
    :goto_17
    return-void

    .line 2489
    :cond_18
    iput-object p1, p0, mHistoryEnd:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, mHistory:Landroid/os/BatteryStats$HistoryItem;

    goto :goto_17
.end method

.method public addIsolatedUidLocked(II)V
    .registers 4
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2540
    iget-object v0, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2541
    return-void
.end method

.method aggregateLastWakeupUptimeLocked(J)V
    .registers 10
    .param p1, "uptimeMs"    # J

    .prologue
    .line 2912
    iget-object v3, p0, mLastWakeupReason:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 2913
    iget-wide v4, p0, mLastWakeupUptimeMs:J

    sub-long v0, p1, v4

    .line 2914
    .local v0, "deltaUptime":J
    iget-object v3, p0, mLastWakeupReason:Ljava/lang/String;

    invoke-virtual {p0, v3}, getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v2

    .line 2915
    .local v2, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedCount(I)V

    .line 2916
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->addCurrentReportedTotalTime(J)V

    .line 2917
    const/4 v3, 0x0

    iput-object v3, p0, mLastWakeupReason:Ljava/lang/String;

    .line 2919
    .end local v0    # "deltaUptime":J
    .end local v2    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_1b
    return-void
.end method

.method clearHistoryLocked()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2504
    iput-wide v0, p0, mHistoryBaseTime:J

    .line 2505
    iput-wide v0, p0, mLastHistoryElapsedRealtime:J

    .line 2506
    iput-wide v0, p0, mTrackRunningHistoryElapsedRealtime:J

    .line 2507
    iput-wide v0, p0, mTrackRunningHistoryUptime:J

    .line 2509
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2510
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2511
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2512
    iget-object v0, p0, mHistoryLastLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2513
    iget-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 2514
    iget-object v0, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2515
    iput v2, p0, mNextHistoryTagIdx:I

    .line 2516
    iput v2, p0, mNumHistoryTagChars:I

    .line 2517
    iput v3, p0, mHistoryBufferLastPos:I

    .line 2518
    iput-boolean v2, p0, mHistoryOverflow:Z

    .line 2519
    iput v3, p0, mActiveHistoryStates:I

    .line 2520
    iput v3, p0, mActiveHistoryStates2:I

    .line 2521
    return-void
.end method

.method public commitCurrentHistoryBatchLocked()V
    .registers 3

    .prologue
    .line 2233
    iget-object v0, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v1, -0x1

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2234
    return-void
.end method

.method public commitPendingDataToDisk()V
    .registers 6

    .prologue
    .line 9034
    monitor-enter p0

    .line 9035
    :try_start_1
    iget-object v1, p0, mPendingWrite:Landroid/os/Parcel;

    .line 9036
    .local v1, "next":Landroid/os/Parcel;
    const/4 v3, 0x0

    iput-object v3, p0, mPendingWrite:Landroid/os/Parcel;

    .line 9037
    if-nez v1, :cond_a

    .line 9038
    monitor-exit p0

    .line 9058
    :goto_9
    return-void

    .line 9041
    :cond_a
    iget-object v3, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9042
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_39

    .line 9045
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9046
    .local v2, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 9047
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 9048
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 9049
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 9050
    iget-object v3, p0, mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_30} :catch_3c
    .catchall {:try_start_10 .. :try_end_30} :catchall_52

    .line 9055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9056
    iget-object v3, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_9

    .line 9042
    .end local v1    # "next":Landroid/os/Parcel;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3

    .line 9051
    .restart local v1    # "next":Landroid/os/Parcel;
    :catch_3c
    move-exception v0

    .line 9052
    .local v0, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v3, "BatteryStats"

    const-string v4, "Error writing battery statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9053
    iget-object v3, p0, mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_52

    .line 9055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9056
    iget-object v3, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_9

    .line 9055
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9056
    iget-object v4, p0, mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public computeBatteryRealtime(JI)J
    .registers 7
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8643
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffRealtime(JI)J
    .registers 7
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8653
    iget-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryScreenOffUptime(JI)J
    .registers 7
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8648
    iget-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeBatteryTimeRemaining(J)J
    .registers 9
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 8696
    iget-boolean v4, p0, mOnBattery:Z

    if-nez v4, :cond_7

    .line 8719
    :cond_6
    :goto_6
    return-wide v2

    .line 8712
    :cond_7
    iget-object v4, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v4, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6

    .line 8715
    iget-object v4, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v4}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v0

    .line 8716
    .local v0, "msPerLevel":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    .line 8719
    iget v2, p0, mCurrentBatteryLevel:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_6
.end method

.method public computeBatteryUptime(JI)J
    .registers 7
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8638
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeChargeTimeRemaining(J)J
    .registers 13
    .param p1, "curTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    .line 8771
    const-string v6, "/sys/class/power_supply/battery/time_to_full_now"

    invoke-direct {p0, v6}, readOneLine(Ljava/lang/String;)J

    move-result-wide v0

    .line 8772
    .local v0, "chargeTime":J
    iget-boolean v6, p0, mFeatureComputeChargeTimeModel:Z

    if-eqz v6, :cond_14

    .line 8773
    cmp-long v6, v0, v8

    if-gez v6, :cond_13

    move-wide v0, v4

    .line 8804
    .end local v0    # "chargeTime":J
    :cond_13
    :goto_13
    return-wide v0

    .line 8780
    .restart local v0    # "chargeTime":J
    :cond_14
    iget-boolean v6, p0, mOnBattery:Z

    if-eqz v6, :cond_1a

    move-wide v0, v4

    .line 8782
    goto :goto_13

    .line 8797
    :cond_1a
    iget-object v6, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_23

    move-wide v0, v4

    .line 8798
    goto :goto_13

    .line 8800
    :cond_23
    iget-object v6, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v6}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimePerLevel()J

    move-result-wide v2

    .line 8801
    .local v2, "msPerLevel":J
    cmp-long v6, v2, v8

    if-gtz v6, :cond_2f

    move-wide v0, v4

    .line 8802
    goto :goto_13

    .line 8804
    :cond_2f
    iget v4, p0, mCurrentBatteryLevel:I

    rsub-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    goto :goto_13
.end method

.method public computeRealtime(JI)J
    .registers 9
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8628
    packed-switch p3, :pswitch_data_1c

    .line 8633
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 8629
    :pswitch_6
    iget-wide v0, p0, mRealtime:J

    iget-wide v2, p0, mRealtimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 8630
    :pswitch_e
    iget-wide v0, p0, mRealtimeStart:J

    sub-long v0, p1, v0

    goto :goto_5

    .line 8631
    :pswitch_13
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_5

    .line 8628
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .registers 9
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    .prologue
    .line 8618
    packed-switch p3, :pswitch_data_1c

    .line 8623
    const-wide/16 v0, 0x0

    :goto_5
    return-wide v0

    .line 8619
    :pswitch_6
    iget-wide v0, p0, mUptime:J

    iget-wide v2, p0, mUptimeStart:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    goto :goto_5

    .line 8620
    :pswitch_e
    iget-wide v0, p0, mUptimeStart:J

    sub-long v0, p1, v0

    goto :goto_5

    .line 8621
    :pswitch_13
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptimeStart()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_5

    .line 8618
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_13
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 9108
    const/4 v0, 0x0

    return v0
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 10308
    invoke-super/range {p0 .. p6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 10309
    return-void
.end method

.method ensureStartClockTime(J)Z
    .registers 12
    .param p1, "currentTime"    # J

    .prologue
    const-wide v4, 0x757b12c00L

    .line 2581
    const-wide v0, 0x757b12c00L

    .line 2582
    .local v0, "ABOUT_ONE_YEAR":J
    cmp-long v2, p1, v4

    if-lez v2, :cond_26

    iget-wide v2, p0, mStartClockTime:J

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_26

    .line 2586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, mRealtimeStart:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, mStartClockTime:J

    .line 2587
    const/4 v2, 0x1

    .line 2589
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public finishAddingCpuLocked(IIIIIIII)V
    .registers 13
    .param p1, "totalUTime"    # I
    .param p2, "totalSTime"    # I
    .param p3, "statUserTime"    # I
    .param p4, "statSystemTime"    # I
    .param p5, "statIOWaitTime"    # I
    .param p6, "statIrqTime"    # I
    .param p7, "statSoftIrqTime"    # I
    .param p8, "statIdleTime"    # I

    .prologue
    .line 2947
    iget-wide v0, p0, mCurStepCpuUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepCpuUserTime:J

    .line 2948
    iget-wide v0, p0, mCurStepCpuSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepCpuSystemTime:J

    .line 2949
    iget-wide v0, p0, mCurStepStatUserTime:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepStatUserTime:J

    .line 2950
    iget-wide v0, p0, mCurStepStatSystemTime:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepStatSystemTime:J

    .line 2951
    iget-wide v0, p0, mCurStepStatIOWaitTime:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepStatIOWaitTime:J

    .line 2952
    iget-wide v0, p0, mCurStepStatIrqTime:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepStatIrqTime:J

    .line 2953
    iget-wide v0, p0, mCurStepStatSoftIrqTime:J

    int-to-long v2, p7

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepStatSoftIrqTime:J

    .line 2954
    iget-wide v0, p0, mCurStepStatIdleTime:J

    int-to-long v2, p8

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurStepStatIdleTime:J

    .line 2955
    return-void
.end method

.method public finishIteratingHistoryLocked()V
    .registers 3

    .prologue
    .line 7431
    const/4 v0, 0x0

    iput-boolean v0, p0, mIteratingHistory:Z

    .line 7432
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7433
    const/4 v0, 0x0

    iput-object v0, p0, mReadHistoryStrings:[Ljava/lang/String;

    .line 7434
    return-void
.end method

.method public finishIteratingOldHistoryLocked()V
    .registers 3

    .prologue
    .line 7350
    const/4 v0, 0x0

    iput-boolean v0, p0, mIteratingHistory:Z

    .line 7351
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    iget-object v1, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7352
    const/4 v0, 0x0

    iput-object v0, p0, mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7353
    return-void
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .prologue
    .line 8609
    invoke-virtual {p0}, getBatteryUptimeLocked()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, computeBatteryUptime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 5

    .prologue
    .line 8613
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, getAwakeTimeBattery()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getBatteryRealtime(J)J
    .registers 6
    .param p1, "curTime"    # J

    .prologue
    .line 8833
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUptime(J)J
    .registers 6
    .param p1, "curTime"    # J

    .prologue
    .line 8828
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getBatteryUptimeLocked()J
    .registers 7

    .prologue
    .line 8823
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBluetoothControllerActivity(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4288
    if-ltz p1, :cond_10

    iget-object v0, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_10

    .line 4289
    iget-object v0, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4291
    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public getCameraOnTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4317
    iget-object v0, p0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    .prologue
    .line 8809
    iget-object v0, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getCurrentDailyStartTime()J
    .registers 3

    .prologue
    .line 7288
    iget-wide v0, p0, mDailyStartTime:J

    return-wide v0
.end method

.method public getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    .prologue
    .line 8814
    iget-object v0, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    .prologue
    .line 8729
    iget-object v0, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
    .registers 4
    .param p1, "daysAgo"    # I

    .prologue
    .line 7282
    iget-object v1, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 7283
    .local v0, "index":I
    if-ltz v0, :cond_15

    iget-object v1, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$DailyItem;

    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getDailyPackageChanges()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8819
    iget-object v0, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceIdleModeEnabledCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4170
    iget-object v0, p0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getDeviceIdleModeEnabledTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4166
    iget-object v0, p0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceIdlingCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4178
    iget-object v0, p0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getDeviceIdlingTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4174
    iget-object v0, p0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDischargeAmount(I)I
    .registers 5
    .param p1, "which"    # I

    .prologue
    .line 8882
    if-nez p1, :cond_a

    invoke-virtual {p0}, getHighDischargeAmountSinceCharge()I

    move-result v0

    .line 8885
    .local v0, "dischargeAmount":I
    :goto_6
    if-gez v0, :cond_9

    .line 8886
    const/4 v0, 0x0

    .line 8888
    :cond_9
    return v0

    .line 8882
    .end local v0    # "dischargeAmount":I
    :cond_a
    invoke-virtual {p0}, getDischargeStartLevel()I

    move-result v1

    invoke-virtual {p0}, getDischargeCurrentLevel()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_6
.end method

.method public getDischargeAmountScreenOff()I
    .registers 4

    .prologue
    .line 8914
    monitor-enter p0

    .line 8915
    :try_start_1
    iget v0, p0, mDischargeAmountScreenOff:I

    .line 8916
    .local v0, "val":I
    iget-boolean v1, p0, mOnBattery:Z

    if-eqz v1, :cond_18

    iget v1, p0, mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    iget v1, p0, mDischargeCurrentLevel:I

    iget v2, p0, mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_18

    .line 8918
    iget v1, p0, mDischargeScreenOffUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 8920
    :cond_18
    monitor-exit p0

    return v0

    .line 8921
    .end local v0    # "val":I
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getDischargeAmountScreenOffSinceCharge()I
    .registers 4

    .prologue
    .line 8925
    monitor-enter p0

    .line 8926
    :try_start_1
    iget v0, p0, mDischargeAmountScreenOffSinceCharge:I

    .line 8927
    .local v0, "val":I
    iget-boolean v1, p0, mOnBattery:Z

    if-eqz v1, :cond_18

    iget v1, p0, mScreenState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    iget v1, p0, mDischargeCurrentLevel:I

    iget v2, p0, mDischargeScreenOffUnplugLevel:I

    if-ge v1, v2, :cond_18

    .line 8929
    iget v1, p0, mDischargeScreenOffUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 8931
    :cond_18
    monitor-exit p0

    return v0

    .line 8932
    .end local v0    # "val":I
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getDischargeAmountScreenOn()I
    .registers 4

    .prologue
    .line 8892
    monitor-enter p0

    .line 8893
    :try_start_1
    iget v0, p0, mDischargeAmountScreenOn:I

    .line 8894
    .local v0, "val":I
    iget-boolean v1, p0, mOnBattery:Z

    if-eqz v1, :cond_18

    iget v1, p0, mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    iget v1, p0, mDischargeCurrentLevel:I

    iget v2, p0, mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_18

    .line 8896
    iget v1, p0, mDischargeScreenOnUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 8898
    :cond_18
    monitor-exit p0

    return v0

    .line 8899
    .end local v0    # "val":I
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getDischargeAmountScreenOnSinceCharge()I
    .registers 4

    .prologue
    .line 8903
    monitor-enter p0

    .line 8904
    :try_start_1
    iget v0, p0, mDischargeAmountScreenOnSinceCharge:I

    .line 8905
    .local v0, "val":I
    iget-boolean v1, p0, mOnBattery:Z

    if-eqz v1, :cond_18

    iget v1, p0, mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    iget v1, p0, mDischargeCurrentLevel:I

    iget v2, p0, mDischargeScreenOnUnplugLevel:I

    if-ge v1, v2, :cond_18

    .line 8907
    iget v1, p0, mDischargeScreenOnUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 8909
    :cond_18
    monitor-exit p0

    return v0

    .line 8910
    .end local v0    # "val":I
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getDischargeCurrentLevel()I
    .registers 2

    .prologue
    .line 8849
    monitor-enter p0

    .line 8850
    :try_start_1
    invoke-virtual {p0}, getDischargeCurrentLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 8851
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDischargeCurrentLevelLocked()I
    .registers 2

    .prologue
    .line 8855
    iget v0, p0, mDischargeCurrentLevel:I

    return v0
.end method

.method public getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
    .registers 2

    .prologue
    .line 8724
    iget-object v0, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    return-object v0
.end method

.method public getDischargeStartLevel()I
    .registers 2

    .prologue
    .line 8838
    monitor-enter p0

    .line 8839
    :try_start_1
    invoke-virtual {p0}, getDischargeStartLevelLocked()I

    move-result v0

    monitor-exit p0

    return v0

    .line 8840
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDischargeStartLevelLocked()I
    .registers 2

    .prologue
    .line 8844
    iget v0, p0, mDischargeUnplugLevel:I

    return v0
.end method

.method public getEndPlatformVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4358
    iget-object v0, p0, mEndPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashlightOnCount(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 4312
    iget-object v0, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFlashlightOnTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4307
    iget-object v0, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalWifiRunningTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4250
    iget-object v0, p0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighDischargeAmountSinceCharge()I
    .registers 4

    .prologue
    .line 8871
    monitor-enter p0

    .line 8872
    :try_start_1
    iget v0, p0, mHighDischargeAmountSinceCharge:I

    .line 8873
    .local v0, "val":I
    iget-boolean v1, p0, mOnBattery:Z

    if-eqz v1, :cond_13

    iget v1, p0, mDischargeCurrentLevel:I

    iget v2, p0, mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_13

    .line 8874
    iget v1, p0, mDischargeUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 8876
    :cond_13
    monitor-exit p0

    return v0

    .line 8877
    .end local v0    # "val":I
    :catchall_15
    move-exception v1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getHistoryBaseTime()J
    .registers 3

    .prologue
    .line 7438
    iget-wide v0, p0, mHistoryBaseTime:J

    return-wide v0
.end method

.method public getHistoryStringPoolBytes()I
    .registers 3

    .prologue
    .line 7395
    iget-object v0, p0, mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, mReadHistoryChars:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getHistoryStringPoolSize()I
    .registers 2

    .prologue
    .line 7388
    iget-object v0, p0, mReadHistoryStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getHistoryTagPoolString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 7400
    iget-object v0, p0, mReadHistoryStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHistoryTagPoolUid(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 7405
    iget-object v0, p0, mReadHistoryUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getHistoryTotalSize()I
    .registers 2

    .prologue
    .line 7356
    const/high16 v0, 0x40000

    return v0
.end method

.method public getHistoryUsedSize()I
    .registers 2

    .prologue
    .line 7360
    iget-object v0, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0
.end method

.method public getInteractiveTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4154
    iget-object v0, p0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsOnBattery()Z
    .registers 2

    .prologue
    .line 4366
    iget-boolean v0, p0, mOnBattery:Z

    return v0
.end method

.method public getKernelWakelockStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, mKernelWakelockStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1804
    iget-object v1, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1805
    .local v0, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_17

    .line 1806
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1807
    .restart local v0    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    :cond_17
    return-object v0
.end method

.method public getLowDischargeAmountSinceCharge()I
    .registers 4

    .prologue
    .line 8860
    monitor-enter p0

    .line 8861
    :try_start_1
    iget v0, p0, mLowDischargeAmountSinceCharge:I

    .line 8862
    .local v0, "val":I
    iget-boolean v1, p0, mOnBattery:Z

    if-eqz v1, :cond_15

    iget v1, p0, mDischargeCurrentLevel:I

    iget v2, p0, mDischargeUnplugLevel:I

    if-ge v1, v2, :cond_15

    .line 8863
    iget v1, p0, mDischargeUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 8865
    :cond_15
    monitor-exit p0

    return v0

    .line 8866
    .end local v0    # "val":I
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getMobileRadioActiveAdjustedTime(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 4234
    iget-object v0, p0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4230
    iget-object v0, p0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getMobileRadioActiveTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4226
    iget-object v0, p0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileRadioActiveUnknownCount(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 4242
    iget-object v0, p0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMobileRadioActiveUnknownTime(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 4238
    iget-object v0, p0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkActivityBytes(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4323
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 4326
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4328
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public getNetworkActivityPackets(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4335
    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 4338
    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4340
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 12
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7410
    iget-object v8, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 7411
    .local v1, "pos":I
    if-nez v1, :cond_d

    .line 7412
    invoke-virtual {p1}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 7414
    :cond_d
    iget-object v8, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    if-lt v1, v8, :cond_19

    move v0, v7

    .line 7415
    .local v0, "end":Z
    :goto_16
    if-eqz v0, :cond_1b

    .line 7426
    :goto_18
    return v6

    .end local v0    # "end":Z
    :cond_19
    move v0, v6

    .line 7414
    goto :goto_16

    .line 7419
    .restart local v0    # "end":Z
    :cond_1b
    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 7420
    .local v2, "lastRealtime":J
    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 7421
    .local v4, "lastWalltime":J
    iget-object v6, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0, v6, p1}, readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 7422
    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v6, v8, :cond_3a

    iget-byte v6, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-eq v6, v8, :cond_3a

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_3a

    .line 7424
    iget-wide v8, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v8, v2

    add-long/2addr v8, v4

    iput-wide v8, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_3a
    move v6, v7

    .line 7426
    goto :goto_18
.end method

.method public getNextMaxDailyDeadline()J
    .registers 3

    .prologue
    .line 7298
    iget-wide v0, p0, mNextMaxDailyDeadline:J

    return-wide v0
.end method

.method public getNextMinDailyDeadline()J
    .registers 3

    .prologue
    .line 7293
    iget-wide v0, p0, mNextMinDailyDeadline:J

    return-wide v0
.end method

.method public getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 12
    .param p1, "out"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7317
    iget-object v1, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iget-object v3, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-lt v1, v3, :cond_3b

    move v8, v7

    .line 7318
    .local v8, "end":Z
    :goto_13
    if-nez v8, :cond_29

    .line 7319
    iget-object v1, p0, mHistoryBuffer:Landroid/os/Parcel;

    iget-object v3, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p0, v1, v3}, readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V

    .line 7320
    iget-boolean v3, p0, mReadOverflow:Z

    iget-object v1, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v1, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x6

    if-ne v1, v9, :cond_3d

    move v1, v7

    :goto_26
    or-int/2addr v1, v3

    iput-boolean v1, p0, mReadOverflow:Z

    .line 7322
    :cond_29
    iget-object v0, p0, mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7323
    .local v0, "cur":Landroid/os/BatteryStats$HistoryItem;
    if-nez v0, :cond_3f

    .line 7324
    iget-boolean v1, p0, mReadOverflow:Z

    if-nez v1, :cond_3a

    if-nez v8, :cond_3a

    .line 7325
    const-string v1, "BatteryStatsImpl"

    const-string v3, "Old history ends before new history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7345
    :cond_3a
    :goto_3a
    return v6

    .end local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "end":Z
    :cond_3b
    move v8, v6

    .line 7317
    goto :goto_13

    .restart local v8    # "end":Z
    :cond_3d
    move v1, v6

    .line 7320
    goto :goto_26

    .line 7329
    .restart local v0    # "cur":Landroid/os/BatteryStats$HistoryItem;
    :cond_3f
    invoke-virtual {p1, v0}, Landroid/os/BatteryStats$HistoryItem;->setTo(Landroid/os/BatteryStats$HistoryItem;)V

    .line 7330
    iget-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->next:Landroid/os/BatteryStats$HistoryItem;

    iput-object v1, p0, mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    .line 7331
    iget-boolean v1, p0, mReadOverflow:Z

    if-nez v1, :cond_53

    .line 7332
    if-eqz v8, :cond_55

    .line 7333
    const-string v1, "BatteryStatsImpl"

    const-string v3, "New history ends before old history!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    move v6, v7

    .line 7345
    goto :goto_3a

    .line 7334
    :cond_55
    iget-object v1, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {p1, v1}, Landroid/os/BatteryStats$HistoryItem;->same(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 7335
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const/4 v3, 0x5

    const-string v9, "BatteryStatsImpl"

    invoke-direct {v1, v3, v9}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7336
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string v1, "Histories differ!"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7337
    const-string v1, "Old history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7338
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7339
    const-string v1, "New history:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7340
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    iget-object v3, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7342
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_53
.end method

.method public getNumConnectivityChange(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 4182
    iget v0, p0, mNumConnectivityChange:I

    .line 4183
    .local v0, "val":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 4184
    iget v1, p0, mLoadedNumConnectivityChange:I

    sub-int/2addr v0, v1

    .line 4188
    :cond_8
    :goto_8
    return v0

    .line 4185
    :cond_9
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 4186
    iget v1, p0, mUnpluggedNumConnectivityChange:I

    sub-int/2addr v0, v1

    goto :goto_8
.end method

.method public getPackageStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 8970
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 8971
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8972
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v1

    return-object v1
.end method

.method public getParcelVersion()I
    .registers 2

    .prologue
    .line 4362
    const/16 v0, 0x84

    return v0
.end method

.method public getPhoneDataConnectionCount(II)I
    .registers 4
    .param p1, "dataType"    # I
    .param p2, "which"    # I

    .prologue
    .line 4222
    iget-object v0, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneDataConnectionTime(IJI)J
    .registers 7
    .param p1, "dataType"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4217
    iget-object v0, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneOnCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4196
    iget-object v0, p0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneOnTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4192
    iget-object v0, p0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalScanningTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4207
    iget-object v0, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneSignalStrengthCount(II)I
    .registers 4
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4212
    iget-object v0, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrengthTime(IJI)J
    .registers 7
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4201
    iget-object v0, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerSaveModeEnabledCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4162
    iget-object v0, p0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getPowerSaveModeEnabledTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4158
    iget-object v0, p0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 8960
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 8961
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8962
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    return-object v1
.end method

.method public getProcessWakeTime(IIJ)J
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 2966
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2967
    iget-object v4, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2968
    .local v1, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v1, :cond_25

    .line 2969
    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 2970
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_25

    .line 2971
    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_24

    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v2, p3, v2

    :cond_24
    add-long/2addr v2, v4

    .line 2974
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_25
    return-wide v2
.end method

.method public getScreenBrightnessTime(IJI)J
    .registers 7
    .param p1, "brightnessBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4149
    iget-object v0, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenOnCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4144
    iget-object v0, p0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getScreenOnTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4140
    iget-object v0, p0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 8980
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 8981
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 8982
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    return-object v1
.end method

.method public getStartClockTime()J
    .registers 9

    .prologue
    .line 4345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4346
    .local v2, "currentTime":J
    invoke-virtual {p0, v2, v3}, ensureStartClockTime(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, recordCurrentTimeChangeLocked(JJJ)V

    .line 4350
    :cond_16
    iget-wide v0, p0, mStartClockTime:J

    return-wide v0
.end method

.method public getStartCount()I
    .registers 2

    .prologue
    .line 7443
    iget v0, p0, mStartCount:I

    return v0
.end method

.method public getStartPlatformVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4354
    iget-object v0, p0, mStartPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUidStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4370
    iget-object v0, p0, mUidStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 8939
    iget-object v1, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 8940
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-nez v0, :cond_14

    .line 8941
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 8942
    .restart local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v1, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8944
    :cond_14
    return-object v0
.end method

.method public getWakeupReasonStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/internal/os/BatteryStatsImpl$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, mWakeupReasonStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1791
    iget-object v1, p0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 1792
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v0, :cond_17

    .line 1793
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 1794
    .restart local v0    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v1, p0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    :cond_17
    return-object v0
.end method

.method public getWifiControllerActivity(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4299
    if-ltz p1, :cond_10

    iget-object v0, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_10

    .line 4300
    iget-object v0, p0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4302
    :goto_f
    return-wide v0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_f
.end method

.method public getWifiOnTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4246
    iget-object v0, p0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSignalStrengthCount(II)I
    .registers 4
    .param p1, "strengthBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 4280
    iget-object v0, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSignalStrengthTime(IJI)J
    .registers 7
    .param p1, "strengthBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4275
    iget-object v0, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiStateCount(II)I
    .registers 4
    .param p1, "wifiState"    # I
    .param p2, "which"    # I

    .prologue
    .line 4260
    iget-object v0, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiStateTime(IJI)J
    .registers 7
    .param p1, "wifiState"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4255
    iget-object v0, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiSupplStateCount(II)I
    .registers 4
    .param p1, "state"    # I
    .param p2, "which"    # I

    .prologue
    .line 4270
    iget-object v0, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiSupplStateTime(IJI)J
    .registers 7
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 4265
    iget-object v0, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasBluetoothActivityReporting()Z
    .registers 2

    .prologue
    .line 4284
    iget-boolean v0, p0, mHasBluetoothEnergyReporting:Z

    return v0
.end method

.method public hasWifiActivityReporting()Z
    .registers 2

    .prologue
    .line 4295
    iget-boolean v0, p0, mHasWifiEnergyReporting:Z

    return v0
.end method

.method initDischarge()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7469
    iput v0, p0, mLowDischargeAmountSinceCharge:I

    .line 7470
    iput v0, p0, mHighDischargeAmountSinceCharge:I

    .line 7471
    iput v0, p0, mDischargeAmountScreenOn:I

    .line 7472
    iput v0, p0, mDischargeAmountScreenOnSinceCharge:I

    .line 7473
    iput v0, p0, mDischargeAmountScreenOff:I

    .line 7474
    iput v0, p0, mDischargeAmountScreenOffSinceCharge:I

    .line 7475
    iget-object v0, p0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7476
    iget-object v0, p0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v0}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7477
    return-void
.end method

.method initTimes(JJ)V
    .registers 10
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 7459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartClockTime:J

    .line 7460
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7461
    iget-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 7462
    iput-wide v2, p0, mRealtime:J

    .line 7463
    iput-wide v2, p0, mUptime:J

    .line 7464
    iput-wide p3, p0, mRealtimeStart:J

    .line 7465
    iput-wide p1, p0, mUptimeStart:J

    .line 7466
    return-void
.end method

.method public isCharging()Z
    .registers 2

    .prologue
    .line 7451
    iget-boolean v0, p0, mCharging:Z

    return v0
.end method

.method public isOnBattery()Z
    .registers 2

    .prologue
    .line 7447
    iget-boolean v0, p0, mOnBattery:Z

    return v0
.end method

.method public isScreenOn()Z
    .registers 3

    .prologue
    .line 7455
    iget v0, p0, mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public mapUid(I)I
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2566
    iget-object v1, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2567
    .local v0, "isolated":I
    if-lez v0, :cond_a

    .end local v0    # "isolated":I
    :goto_9
    return v0

    .restart local v0    # "isolated":I
    :cond_a
    move v0, p1

    goto :goto_9
.end method

.method public noteActivityPausedLocked(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 3668
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3669
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    .line 3670
    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 3663
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3664
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    .line 3665
    return-void
.end method

.method public noteAlarmFinishLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x400d

    .line 2712
    iget-boolean v0, p0, mRecordAllHistory:Z

    if-nez v0, :cond_7

    .line 2722
    :cond_6
    :goto_6
    return-void

    .line 2715
    :cond_7
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2717
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2718
    .local v4, "uptime":J
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2721
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_6
.end method

.method public noteAlarmStartLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x800d

    .line 2699
    iget-boolean v0, p0, mRecordAllHistory:Z

    if-nez v0, :cond_8

    .line 2709
    :cond_7
    :goto_7
    return-void

    .line 2702
    :cond_8
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2703
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2704
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2705
    .local v4, "uptime":J
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2708
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_7
.end method

.method public noteAudioOffLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3580
    iget v4, p0, mAudioOnNesting:I

    if-nez v4, :cond_5

    .line 3594
    :goto_4
    return-void

    .line 3583
    :cond_5
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3585
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3586
    .local v2, "uptime":J
    iget v4, p0, mAudioOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mAudioOnNesting:I

    if-nez v4, :cond_2b

    .line 3587
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3590
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3591
    iget-object v4, p0, mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3593
    :cond_2b
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOffLocked(J)V

    goto :goto_4
.end method

.method public noteAudioOnLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3565
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3567
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3568
    .local v2, "uptime":J
    iget v4, p0, mAudioOnNesting:I

    if-nez v4, :cond_21

    .line 3569
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3572
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3573
    iget-object v4, p0, mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3575
    :cond_21
    iget v4, p0, mAudioOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mAudioOnNesting:I

    .line 3576
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteAudioTurnedOnLocked(J)V

    .line 3577
    return-void
.end method

.method public noteCameraOffLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3728
    iget v4, p0, mCameraOnNesting:I

    if-nez v4, :cond_5

    .line 3742
    :goto_4
    return-void

    .line 3731
    :cond_5
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3733
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3734
    .local v2, "uptime":J
    iget v4, p0, mCameraOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mCameraOnNesting:I

    if-nez v4, :cond_2b

    .line 3735
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x400001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3738
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3739
    iget-object v4, p0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3741
    :cond_2b
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOffLocked(J)V

    goto :goto_4
.end method

.method public noteCameraOnLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3714
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3715
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3716
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3717
    .local v2, "uptime":J
    iget v4, p0, mCameraOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, mCameraOnNesting:I

    if-nez v4, :cond_25

    .line 3718
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3721
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3722
    iget-object v4, p0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3724
    :cond_25
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteCameraTurnedOnLocked(J)V

    .line 3725
    return-void
.end method

.method public noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 28
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 2885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2886
    .local v10, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2890
    .local v12, "uptime":J
    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    .line 2891
    .local v2, "NN":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    if-ge v15, v2, :cond_27

    .line 2892
    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    move-object/from16 v3, p0

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v3 .. v13}, noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2891
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 2895
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/WorkSource;->size()I

    move-result v14

    .line 2896
    .local v14, "NO":I
    const/4 v15, 0x0

    :goto_2c
    if-ge v15, v14, :cond_44

    .line 2897
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v13}, noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2896
    add-int/lit8 v15, v15, 0x1

    goto :goto_2c

    .line 2899
    :cond_44
    return-void
.end method

.method public noteConnectivityChangedLocked(ILjava/lang/String;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 3174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3175
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3176
    .local v4, "uptime":J
    const/16 v6, 0x9

    move-object v1, p0

    move-object v7, p2

    move v8, p1

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3178
    iget v0, p0, mNumConnectivityChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumConnectivityChange:I

    .line 3179
    return-void
.end method

.method public noteCurrentTimeChangedLocked()V
    .registers 9

    .prologue
    .line 2593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2594
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2595
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, "uptime":J
    move-object v1, p0

    .line 2596
    invoke-direct/range {v1 .. v7}, recordCurrentTimeChangeLocked(JJJ)V

    .line 2597
    invoke-virtual {p0, v2, v3}, ensureStartClockTime(J)Z

    .line 2598
    return-void
.end method

.method public noteDeviceIdleModeLocked(ZLjava/lang/String;I)V
    .registers 14
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .prologue
    .line 3244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3245
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3246
    .local v4, "uptime":J
    move v0, p1

    .line 3247
    .local v0, "nowIdling":Z
    iget-boolean v1, p0, mDeviceIdling:Z

    if-eqz v1, :cond_12

    if-nez p1, :cond_12

    if-nez p2, :cond_12

    .line 3250
    const/4 v0, 0x1

    .line 3252
    :cond_12
    iget-boolean v1, p0, mDeviceIdling:Z

    if-eq v1, v0, :cond_34

    .line 3253
    iput-boolean v0, p0, mDeviceIdling:Z

    .line 3254
    if-eqz v0, :cond_58

    const/16 v9, 0x8

    .line 3255
    .local v9, "stepState":I
    :goto_1c
    iget v1, p0, mModStepMode:I

    iget v6, p0, mCurStepMode:I

    and-int/lit8 v6, v6, 0x8

    xor-int/2addr v6, v9

    or-int/2addr v1, v6

    iput v1, p0, mModStepMode:I

    .line 3256
    iget v1, p0, mCurStepMode:I

    and-int/lit8 v1, v1, -0x9

    or-int/2addr v1, v9

    iput v1, p0, mCurStepMode:I

    .line 3257
    if-eqz p1, :cond_5a

    .line 3258
    iget-object v1, p0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3263
    .end local v9    # "stepState":I
    :cond_34
    :goto_34
    iget-boolean v1, p0, mDeviceIdleModeEnabled:Z

    if-eq v1, p1, :cond_57

    .line 3264
    iput-boolean p1, p0, mDeviceIdleModeEnabled:Z

    .line 3265
    const/16 v6, 0xa

    if-eqz p2, :cond_60

    move-object v7, p2

    :goto_3f
    move-object v1, p0

    move v8, p3

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3267
    if-eqz p1, :cond_63

    .line 3268
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3271
    iget-object v1, p0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3278
    :goto_54
    invoke-virtual {p0, v2, v3, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3280
    :cond_57
    return-void

    .line 3254
    :cond_58
    const/4 v9, 0x0

    goto :goto_1c

    .line 3260
    .restart local v9    # "stepState":I
    :cond_5a
    iget-object v1, p0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_34

    .line 3265
    .end local v9    # "stepState":I
    :cond_60
    const-string v7, ""

    goto :goto_3f

    .line 3273
    :cond_63
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3276
    iget-object v1, p0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_54
.end method

.method public noteEventLocked(ILjava/lang/String;I)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2571
    invoke-virtual {p0, p3}, mapUid(I)I

    move-result p3

    .line 2572
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2578
    :goto_d
    return-void

    .line 2575
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2576
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    .line 2577
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_d
.end method

.method public noteFlashlightOffLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3697
    iget v4, p0, mFlashlightOnNesting:I

    if-nez v4, :cond_5

    .line 3711
    :goto_4
    return-void

    .line 3700
    :cond_5
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3702
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3703
    .local v2, "uptime":J
    iget v4, p0, mFlashlightOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mFlashlightOnNesting:I

    if-nez v4, :cond_2b

    .line 3704
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3707
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3708
    iget-object v4, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3710
    :cond_2b
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOffLocked(J)V

    goto :goto_4
.end method

.method public noteFlashlightOnLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3683
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3685
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3686
    .local v2, "uptime":J
    iget v4, p0, mFlashlightOnNesting:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, mFlashlightOnNesting:I

    if-nez v4, :cond_25

    .line 3687
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3690
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3691
    iget-object v4, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3693
    :cond_25
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFlashlightTurnedOnLocked(J)V

    .line 3694
    return-void
.end method

.method public noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4032
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4033
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4034
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteFullWifiLockAcquiredLocked(I)V

    .line 4033
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4036
    :cond_11
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3931
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3932
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3933
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3934
    .local v2, "uptime":J
    iget v4, p0, mWifiFullLockNesting:I

    if-nez v4, :cond_1c

    .line 3935
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3938
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3940
    :cond_1c
    iget v4, p0, mWifiFullLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mWifiFullLockNesting:I

    .line 3941
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockAcquiredLocked(J)V

    .line 3942
    return-void
.end method

.method public noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4039
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4040
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4041
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteFullWifiLockReleasedLocked(I)V

    .line 4040
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4043
    :cond_11
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3945
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3947
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3948
    .local v2, "uptime":J
    iget v4, p0, mWifiFullLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mWifiFullLockNesting:I

    .line 3949
    iget v4, p0, mWifiFullLockNesting:I

    if-nez v4, :cond_23

    .line 3950
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3953
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3955
    :cond_23
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteFullWifiLockReleasedLocked(J)V

    .line 3956
    return-void
.end method

.method public noteInteractiveLocked(Z)V
    .registers 5
    .param p1, "interactive"    # Z

    .prologue
    .line 3161
    iget-boolean v2, p0, mInteractive:Z

    if-eq v2, p1, :cond_11

    .line 3162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3163
    .local v0, "elapsedRealtime":J
    iput-boolean p1, p0, mInteractive:Z

    .line 3165
    if-eqz p1, :cond_12

    .line 3166
    iget-object v2, p0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3171
    .end local v0    # "elapsedRealtime":J
    :cond_11
    :goto_11
    return-void

    .line 3168
    .restart local v0    # "elapsedRealtime":J
    :cond_12
    iget-object v2, p0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_11
.end method

.method public noteJobFinishLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4006

    .line 2688
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2690
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2691
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopJobLocked(Ljava/lang/String;J)V

    .line 2692
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2696
    :goto_1e
    return-void

    :cond_1f
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2695
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_1e
.end method

.method public noteJobStartLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8006

    .line 2677
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2679
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2680
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartJobLocked(Ljava/lang/String;J)V

    .line 2681
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2685
    :goto_1f
    return-void

    :cond_20
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2684
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_1f
.end method

.method public noteMobileRadioPowerState(IJ)V
    .registers 16
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3183
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3184
    .local v8, "uptime":J
    iget v1, p0, mMobileRadioPowerState:I

    if-eq v1, p1, :cond_34

    .line 3186
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_14

    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_35

    :cond_14
    const/4 v0, 0x1

    .line 3189
    .local v0, "active":Z
    :goto_15
    if-eqz v0, :cond_37

    .line 3190
    move-wide v6, v2

    .local v6, "realElapsedRealtimeMs":J
    iput-wide v2, p0, mMobileRadioActiveStartTime:J

    .line 3191
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3207
    :goto_23
    invoke-virtual {p0, v2, v3, v8, v9}, addHistoryRecordLocked(JJ)V

    .line 3208
    iput p1, p0, mMobileRadioPowerState:I

    .line 3209
    if-eqz v0, :cond_7c

    .line 3210
    iget-object v1, p0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3211
    iget-object v1, p0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3218
    .end local v0    # "active":Z
    .end local v6    # "realElapsedRealtimeMs":J
    :cond_34
    :goto_34
    return-void

    .line 3186
    :cond_35
    const/4 v0, 0x0

    goto :goto_15

    .line 3193
    .restart local v0    # "active":Z
    :cond_37
    const-wide/32 v10, 0xf4240

    div-long v6, p2, v10

    .line 3194
    .restart local v6    # "realElapsedRealtimeMs":J
    iget-wide v4, p0, mMobileRadioActiveStartTime:J

    .line 3195
    .local v4, "lastUpdateTimeMs":J
    cmp-long v1, v6, v4

    if-gez v1, :cond_70

    .line 3196
    const-string v1, "BatteryStatsImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Data connection inactive timestamp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is before start time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    move-wide v6, v2

    .line 3203
    :cond_65
    :goto_65
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v11, -0x2000001

    and-int/2addr v10, v11

    iput v10, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_23

    .line 3199
    :cond_70
    cmp-long v1, v6, v2

    if-gez v1, :cond_65

    .line 3200
    iget-object v1, p0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    sub-long v10, v2, v6

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_65

    .line 3213
    .end local v4    # "lastUpdateTimeMs":J
    :cond_7c
    iget-object v1, p0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3214
    invoke-virtual {p0, v6, v7}, updateMobileRadioStateLocked(J)V

    .line 3215
    iget-object v1, p0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_34
.end method

.method public noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 4113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4128
    :goto_6
    return-void

    .line 4114
    :cond_7
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4115
    iget-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    .line 4121
    :goto_15
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4122
    iget-object v0, p0, mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, includeInStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mWifiIfaces:[Ljava/lang/String;

    goto :goto_6

    .line 4118
    :cond_24
    iget-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mMobileIfaces:[Ljava/lang/String;

    goto :goto_15

    .line 4125
    :cond_2d
    iget-object v0, p0, mWifiIfaces:[Ljava/lang/String;

    invoke-static {v0, p1}, excludeFromStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mWifiIfaces:[Ljava/lang/String;

    goto :goto_6
.end method

.method public noteNetworkStatsEnabledLocked()V
    .registers 4

    .prologue
    .line 4134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4135
    .local v0, "elapsedRealtimeMs":J
    invoke-virtual {p0, v0, v1}, updateMobileRadioStateLocked(J)V

    .line 4136
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 4137
    return-void
.end method

.method public notePackageInstalledLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 3283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3284
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3285
    .local v4, "uptime":J
    const/16 v6, 0xb

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3287
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 3288
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 3289
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 3290
    iput p2, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 3291
    invoke-direct {p0, v0}, addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    .line 3292
    return-void
.end method

.method public notePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3296
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3297
    .local v4, "uptime":J
    const/16 v6, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3299
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 3300
    .local v0, "pc":Landroid/os/BatteryStats$PackageChange;
    iput-object p1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 3301
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 3302
    invoke-direct {p0, v0}, addPackageChange(Landroid/os/BatteryStats$PackageChange;)V

    .line 3303
    return-void
.end method

.method public notePhoneDataConnectionStateLocked(IZ)V
    .registers 11
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 3465
    const/4 v0, 0x0

    .line 3466
    .local v0, "bin":I
    if-eqz p2, :cond_8

    .line 3467
    packed-switch p1, :pswitch_data_62

    .line 3514
    const/16 v0, 0x10

    .line 3519
    :cond_8
    :goto_8
    iget v1, p0, mPhoneDataConnectionType:I

    if-eq v1, v0, :cond_3a

    .line 3520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3521
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3522
    .local v4, "uptime":J
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v6, v6, -0x3e01

    shl-int/lit8 v7, v0, 0x9

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3526
    invoke-virtual {p0, v2, v3, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3527
    iget v1, p0, mPhoneDataConnectionType:I

    if-ltz v1, :cond_31

    .line 3528
    iget-object v1, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, mPhoneDataConnectionType:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3531
    :cond_31
    iput v0, p0, mPhoneDataConnectionType:I

    .line 3532
    iget-object v1, p0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3534
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3a
    return-void

    .line 3469
    :pswitch_3b
    const/4 v0, 0x2

    .line 3470
    goto :goto_8

    .line 3472
    :pswitch_3d
    const/4 v0, 0x1

    .line 3473
    goto :goto_8

    .line 3475
    :pswitch_3f
    const/4 v0, 0x3

    .line 3476
    goto :goto_8

    .line 3478
    :pswitch_41
    const/4 v0, 0x4

    .line 3479
    goto :goto_8

    .line 3481
    :pswitch_43
    const/4 v0, 0x5

    .line 3482
    goto :goto_8

    .line 3484
    :pswitch_45
    const/4 v0, 0x6

    .line 3485
    goto :goto_8

    .line 3487
    :pswitch_47
    const/4 v0, 0x7

    .line 3488
    goto :goto_8

    .line 3490
    :pswitch_49
    const/16 v0, 0x8

    .line 3491
    goto :goto_8

    .line 3493
    :pswitch_4c
    const/16 v0, 0x9

    .line 3494
    goto :goto_8

    .line 3496
    :pswitch_4f
    const/16 v0, 0xa

    .line 3497
    goto :goto_8

    .line 3499
    :pswitch_52
    const/16 v0, 0xb

    .line 3500
    goto :goto_8

    .line 3502
    :pswitch_55
    const/16 v0, 0xc

    .line 3503
    goto :goto_8

    .line 3505
    :pswitch_58
    const/16 v0, 0xd

    .line 3506
    goto :goto_8

    .line 3508
    :pswitch_5b
    const/16 v0, 0xe

    .line 3509
    goto :goto_8

    .line 3511
    :pswitch_5e
    const/16 v0, 0xf

    .line 3512
    goto :goto_8

    .line 3467
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3b
        :pswitch_3f
        :pswitch_41
        :pswitch_43
        :pswitch_45
        :pswitch_47
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
    .end packed-switch
.end method

.method public notePhoneOffLocked()V
    .registers 8

    .prologue
    .line 3326
    iget-boolean v4, p0, mPhoneOn:Z

    if-eqz v4, :cond_21

    .line 3327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3328
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3329
    .local v2, "uptime":J
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x1000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3332
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3333
    const/4 v4, 0x0

    iput-boolean v4, p0, mPhoneOn:Z

    .line 3334
    iget-object v4, p0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3336
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_21
    return-void
.end method

.method public notePhoneOnLocked()V
    .registers 8

    .prologue
    .line 3313
    iget-boolean v4, p0, mPhoneOn:Z

    if-nez v4, :cond_20

    .line 3314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3315
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3316
    .local v2, "uptime":J
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3319
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3320
    const/4 v4, 0x1

    iput-boolean v4, p0, mPhoneOn:Z

    .line 3321
    iget-object v4, p0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3323
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_20
    return-void
.end method

.method public notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    .registers 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 3460
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 3461
    .local v0, "bin":I
    iget v1, p0, mPhoneServiceStateRaw:I

    iget v2, p0, mPhoneSimStateRaw:I

    invoke-direct {p0, v1, v2, v0}, updateAllPhoneStateLocked(III)V

    .line 3462
    return-void
.end method

.method public notePhoneStateLocked(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "simState"    # I

    .prologue
    .line 3455
    iget v0, p0, mPhoneSignalStrengthBinRaw:I

    invoke-direct {p0, p1, p2, v0}, updateAllPhoneStateLocked(III)V

    .line 3456
    return-void
.end method

.method public notePowerSaveMode(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .prologue
    .line 3221
    iget-boolean v3, p0, mPowerSaveModeEnabled:Z

    if-eq v3, p1, :cond_35

    .line 3222
    if-eqz p1, :cond_36

    const/4 v2, 0x4

    .line 3223
    .local v2, "stepState":I
    :goto_7
    iget v3, p0, mModStepMode:I

    iget v6, p0, mCurStepMode:I

    and-int/lit8 v6, v6, 0x4

    xor-int/2addr v6, v2

    or-int/2addr v3, v6

    iput v3, p0, mModStepMode:I

    .line 3224
    iget v3, p0, mCurStepMode:I

    and-int/lit8 v3, v3, -0x5

    or-int/2addr v3, v2

    iput v3, p0, mCurStepMode:I

    .line 3225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3226
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3227
    .local v4, "uptime":J
    iput-boolean p1, p0, mPowerSaveModeEnabled:Z

    .line 3228
    if-eqz p1, :cond_38

    .line 3229
    iget-object v3, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3232
    iget-object v3, p0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3239
    :goto_32
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3241
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "stepState":I
    .end local v4    # "uptime":J
    :cond_35
    return-void

    .line 3222
    :cond_36
    const/4 v2, 0x0

    goto :goto_7

    .line 3234
    .restart local v0    # "elapsedRealtime":J
    .restart local v2    # "stepState":I
    .restart local v4    # "uptime":J
    :cond_38
    iget-object v3, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3237
    iget-object v3, p0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_32
.end method

.method public noteProcessAnrLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2626
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2627
    invoke-virtual {p0}, isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2628
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2629
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumAnrsLocked()V

    .line 2631
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_15
    return-void
.end method

.method public noteProcessCrashLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2618
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2619
    invoke-virtual {p0}, isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2620
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2621
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incNumCrashesLocked()V

    .line 2623
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_15
    return-void
.end method

.method public noteProcessDiedLocked(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2958
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2959
    iget-object v1, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2960
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_13

    .line 2961
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2963
    :cond_13
    return-void
.end method

.method public noteProcessFinishLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4001

    .line 2640
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2641
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2652
    :cond_f
    :goto_f
    return-void

    .line 2644
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2645
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2646
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2648
    iget-boolean v0, p0, mRecordAllHistory:Z

    if-eqz v0, :cond_f

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2651
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_f
.end method

.method public noteProcessStartLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8001

    .line 2601
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2602
    invoke-virtual {p0}, isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2603
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    .line 2604
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->incStartsLocked()V

    .line 2606
    .end local v0    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_18
    iget-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, p1, p2, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2615
    :cond_21
    :goto_21
    return-void

    .line 2609
    :cond_22
    iget-boolean v1, p0, mRecordAllHistory:Z

    if-eqz v1, :cond_21

    .line 2612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2613
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "uptime":J
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2614
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_21
.end method

.method public noteProcessStateLocked(Ljava/lang/String;II)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 2634
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2636
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateProcessStateLocked(Ljava/lang/String;IJ)V

    .line 2637
    return-void
.end method

.method public noteResetAudioLocked()V
    .registers 10

    .prologue
    .line 3629
    iget v6, p0, mAudioOnNesting:I

    if-lez v6, :cond_38

    .line 3630
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3631
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3632
    .local v4, "uptime":J
    const/4 v6, 0x0

    iput v6, p0, mAudioOnNesting:I

    .line 3633
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3636
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3637
    iget-object v6, p0, mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3638
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_38

    .line 3639
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3640
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetAudioLocked(J)V

    .line 3638
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3643
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_38
    return-void
.end method

.method public noteResetCameraLocked()V
    .registers 10

    .prologue
    .line 3745
    iget v6, p0, mCameraOnNesting:I

    if-lez v6, :cond_38

    .line 3746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3747
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3748
    .local v4, "uptime":J
    const/4 v6, 0x0

    iput v6, p0, mCameraOnNesting:I

    .line 3749
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x400001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3752
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3753
    iget-object v6, p0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_38

    .line 3755
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3756
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetCameraLocked(J)V

    .line 3754
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3759
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_38
    return-void
.end method

.method public noteResetFlashlightLocked()V
    .registers 10

    .prologue
    .line 3762
    iget v6, p0, mFlashlightOnNesting:I

    if-lez v6, :cond_38

    .line 3763
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3764
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3765
    .local v4, "uptime":J
    const/4 v6, 0x0

    iput v6, p0, mFlashlightOnNesting:I

    .line 3766
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x8000001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3769
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3770
    iget-object v6, p0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3771
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_38

    .line 3772
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3773
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetFlashlightLocked(J)V

    .line 3771
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3776
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_38
    return-void
.end method

.method public noteResetVideoLocked()V
    .registers 10

    .prologue
    .line 3646
    iget v6, p0, mVideoOnNesting:I

    if-lez v6, :cond_38

    .line 3647
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3648
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3649
    .local v4, "uptime":J
    const/4 v6, 0x0

    iput v6, p0, mAudioOnNesting:I

    .line 3650
    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr v7, v8

    iput v7, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3653
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3654
    iget-object v6, p0, mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3655
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_38

    .line 3656
    iget-object v6, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3657
    .local v3, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteResetVideoLocked(J)V

    .line 3655
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3660
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "i":I
    .end local v3    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v4    # "uptime":J
    :cond_38
    return-void
.end method

.method public noteScreenBrightnessLocked(I)V
    .registers 10
    .param p1, "brightness"    # I

    .prologue
    .line 3125
    div-int/lit8 v0, p1, 0x33

    .line 3126
    .local v0, "bin":I
    if-gez v0, :cond_3d

    const/4 v0, 0x0

    .line 3128
    :cond_5
    :goto_5
    iget v1, p0, mScreenBrightnessBin:I

    if-eq v1, v0, :cond_3c

    .line 3129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3130
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3131
    .local v4, "uptime":J
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v6, v6, -0x8

    shl-int/lit8 v7, v0, 0x0

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3135
    invoke-virtual {p0, v2, v3, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3136
    iget v1, p0, mScreenState:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3a

    .line 3137
    iget v1, p0, mScreenBrightnessBin:I

    if-ltz v1, :cond_33

    .line 3138
    iget-object v1, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, mScreenBrightnessBin:I

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3140
    :cond_33
    iget-object v1, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3142
    :cond_3a
    iput v0, p0, mScreenBrightnessBin:I

    .line 3144
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_3c
    return-void

    .line 3127
    :cond_3d
    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_5
.end method

.method public noteScreenStateLocked(I)V
    .registers 15
    .param p1, "state"    # I

    .prologue
    .line 3054
    iget v1, p0, mScreenState:I

    if-eq v1, p1, :cond_77

    .line 3055
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, recordDailyStatsIfNeededLocked(Z)V

    .line 3056
    iget v0, p0, mScreenState:I

    .line 3057
    .local v0, "oldState":I
    iput p1, p0, mScreenState:I

    .line 3061
    if-eqz p1, :cond_24

    .line 3062
    add-int/lit8 v12, p1, -0x1

    .line 3063
    .local v12, "stepState":I
    const/4 v1, 0x4

    if-ge v12, v1, :cond_78

    .line 3064
    iget v1, p0, mModStepMode:I

    iget v2, p0, mCurStepMode:I

    and-int/lit8 v2, v2, 0x3

    xor-int/2addr v2, v12

    or-int/2addr v1, v2

    iput v1, p0, mModStepMode:I

    .line 3065
    iget v1, p0, mCurStepMode:I

    and-int/lit8 v1, v1, -0x4

    or-int/2addr v1, v12

    iput v1, p0, mCurStepMode:I

    .line 3071
    .end local v12    # "stepState":I
    :cond_24
    :goto_24
    const/4 v1, 0x2

    if-ne p1, v1, :cond_91

    .line 3073
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3074
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3075
    .local v10, "uptime":J
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3078
    invoke-virtual {p0, v8, v9, v10, v11}, addHistoryRecordLocked(JJ)V

    .line 3079
    iget-object v1, p0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3080
    iget v1, p0, mScreenBrightnessBin:I

    if-ltz v1, :cond_4d

    .line 3081
    iget-object v1, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3084
    :cond_4d
    iget-object v1, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, updateTimeBasesLocked(ZZJJ)V

    .line 3089
    const/4 v2, -0x1

    const/4 v3, -0x1

    const-string/jumbo v4, "screen"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 3093
    iget-boolean v1, p0, mOnBatteryInternal:Z

    if-eqz v1, :cond_77

    .line 3094
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, updateDischargeScreenLevelsLocked(ZZ)V

    .line 3121
    .end local v0    # "oldState":I
    .end local v8    # "elapsedRealtime":J
    .end local v10    # "uptime":J
    :cond_77
    :goto_77
    return-void

    .line 3067
    .restart local v0    # "oldState":I
    .restart local v12    # "stepState":I
    :cond_78
    const-string v1, "BatteryStatsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected screen state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 3096
    .end local v12    # "stepState":I
    :cond_91
    const/4 v1, 0x2

    if-ne v0, v1, :cond_77

    .line 3098
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3099
    .restart local v8    # "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3100
    .restart local v10    # "uptime":J
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3103
    invoke-virtual {p0, v8, v9, v10, v11}, addHistoryRecordLocked(JJ)V

    .line 3104
    iget-object v1, p0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3105
    iget v1, p0, mScreenBrightnessBin:I

    if-ltz v1, :cond_bb

    .line 3106
    iget-object v1, p0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3109
    :cond_bb
    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string/jumbo v5, "screen"

    const-string/jumbo v6, "screen"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 3112
    iget-object v1, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, updateTimeBasesLocked(ZZJJ)V

    .line 3116
    iget-boolean v1, p0, mOnBatteryInternal:Z

    if-eqz v1, :cond_77

    .line 3117
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, updateDischargeScreenLevelsLocked(ZZ)V

    goto :goto_77
.end method

.method public noteStartGpsLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3026
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3028
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3029
    .local v2, "uptime":J
    iget v4, p0, mGpsNesting:I

    if-nez v4, :cond_1c

    .line 3030
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3033
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3035
    :cond_1c
    iget v4, p0, mGpsNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mGpsNesting:I

    .line 3036
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartGps(J)V

    .line 3037
    return-void
.end method

.method public noteStartSensorLocked(II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 2996
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2998
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2999
    .local v2, "uptime":J
    iget v4, p0, mSensorNesting:I

    if-nez v4, :cond_1c

    .line 3000
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3003
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3005
    :cond_1c
    iget v4, p0, mSensorNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mSensorNesting:I

    .line 3006
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 3007
    return-void
.end method

.method public noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 20
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 2873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2874
    .local v8, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2875
    .local v10, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 2876
    .local v0, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d
    if-ge v12, v0, :cond_23

    .line 2877
    invoke-virtual {p1, v12}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 2876
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 2880
    :cond_23
    return-void
.end method

.method public noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 24
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z
    .param p7, "elapsedRealtime"    # J
    .param p9, "uptime"    # J

    .prologue
    .line 2785
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2786
    if-nez p5, :cond_6a

    .line 2789
    move-wide/from16 v0, p9

    invoke-virtual {p0, v0, v1}, aggregateLastWakeupUptimeLocked(J)V

    .line 2790
    if-nez p4, :cond_f

    .line 2791
    move-object/from16 p4, p3

    .line 2793
    :cond_f
    iget-boolean v4, p0, mRecordAllHistory:Z

    if-eqz v4, :cond_2f

    .line 2794
    iget-object v4, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v5, 0x8005

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 2796
    const v10, 0x8005

    move-object v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v11, p4

    move v12, p1

    invoke-virtual/range {v5 .. v12}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2800
    :cond_2f
    iget v4, p0, mWakeLockNesting:I

    if-nez v4, :cond_88

    .line 2801
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2804
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2805
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2806
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2807
    if-nez p6, :cond_86

    const/4 v4, 0x1

    :goto_5b
    iput-boolean v4, p0, mWakeLockImportant:Z

    .line 2808
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 2821
    :cond_64
    :goto_64
    iget v4, p0, mWakeLockNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mWakeLockNesting:I

    .line 2823
    :cond_6a
    if-ltz p1, :cond_85

    .line 2824
    iget-object v4, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2830
    invoke-direct {p0}, requestWakelockCpuUpdate()V

    .line 2832
    :cond_77
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(ILjava/lang/String;IJ)V

    .line 2834
    :cond_85
    return-void

    .line 2807
    :cond_86
    const/4 v4, 0x0

    goto :goto_5b

    .line 2809
    :cond_88
    iget-boolean v4, p0, mWakeLockImportant:Z

    if-nez v4, :cond_64

    if-nez p6, :cond_64

    iget-object v4, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v4, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v4, :cond_64

    .line 2811
    iget-object v4, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v4, :cond_c2

    .line 2813
    iget-object v4, p0, mHistoryLastWritten:Landroid/os/BatteryStats$HistoryItem;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2814
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2815
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p4

    iput-object v0, p0, mInitialAcquireWakeName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2816
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput p1, p0, mInitialAcquireWakeUid:I

    iput p1, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2817
    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 2819
    :cond_c2
    const/4 v4, 0x1

    iput-boolean v4, p0, mWakeLockImportant:Z

    goto :goto_64
.end method

.method public noteStopGpsLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3040
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3042
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3043
    .local v2, "uptime":J
    iget v4, p0, mGpsNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mGpsNesting:I

    .line 3044
    iget v4, p0, mGpsNesting:I

    if-nez v4, :cond_23

    .line 3045
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3048
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3050
    :cond_23
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopGps(J)V

    .line 3051
    return-void
.end method

.method public noteStopSensorLocked(II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 3010
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3011
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3012
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3013
    .local v2, "uptime":J
    iget v4, p0, mSensorNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mSensorNesting:I

    .line 3014
    iget v4, p0, mSensorNesting:I

    if-nez v4, :cond_23

    .line 3015
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x800001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3018
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3020
    :cond_23
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 3021
    return-void
.end method

.method public noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 18
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 2903
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2904
    .local v6, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2905
    .local v8, "uptime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v10

    .line 2906
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    if-ge v11, v10, :cond_20

    .line 2907
    invoke-virtual {p1, v11}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 2906
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 2909
    :cond_20
    return-void
.end method

.method public noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 24
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "uptime"    # J

    .prologue
    .line 2838
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2839
    if-nez p5, :cond_49

    .line 2840
    iget v4, p0, mWakeLockNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mWakeLockNesting:I

    .line 2841
    iget-boolean v4, p0, mRecordAllHistory:Z

    if-eqz v4, :cond_2e

    .line 2842
    if-nez p4, :cond_14

    .line 2843
    move-object/from16 p4, p3

    .line 2845
    :cond_14
    iget-object v4, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v5, 0x4005

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v0, p1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2847
    const/16 v10, 0x4005

    move-object v5, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v11, p4

    move v12, p1

    invoke-virtual/range {v5 .. v12}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2851
    :cond_2e
    iget v4, p0, mWakeLockNesting:I

    if-nez v4, :cond_49

    .line 2852
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2855
    const/4 v4, 0x0

    iput-object v4, p0, mInitialAcquireWakeName:Ljava/lang/String;

    .line 2856
    const/4 v4, -0x1

    iput v4, p0, mInitialAcquireWakeUid:I

    .line 2857
    move-wide/from16 v0, p6

    move-wide/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 2860
    :cond_49
    if-ltz p1, :cond_65

    .line 2861
    iget-object v4, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 2865
    invoke-direct {p0}, requestWakelockCpuUpdate()V

    .line 2867
    :cond_56
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(ILjava/lang/String;IJ)V

    .line 2869
    :cond_65
    return-void
.end method

.method public noteSyncFinishLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v6, 0x4004

    .line 2666
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2667
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2668
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2669
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSyncLocked(Ljava/lang/String;J)V

    .line 2670
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2674
    :goto_1e
    return-void

    :cond_1f
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2673
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_1e
.end method

.method public noteSyncStartLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const v6, 0x8004

    .line 2655
    invoke-virtual {p0, p2}, mapUid(I)I

    move-result p2

    .line 2656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2657
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2658
    .local v4, "uptime":J
    invoke-virtual {p0, p2}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSyncLocked(Ljava/lang/String;J)V

    .line 2659
    iget-object v0, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2663
    :goto_1f
    return-void

    :cond_20
    move-object v1, p0

    move-object v7, p1

    move v8, p2

    .line 2662
    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    goto :goto_1f
.end method

.method public noteUserActivityLocked(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3147
    iget-boolean v0, p0, mOnBatteryInternal:Z

    if-eqz v0, :cond_f

    .line 3148
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3149
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteUserActivityLocked(I)V

    .line 3151
    :cond_f
    return-void
.end method

.method public noteVibratorOffLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 3678
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3679
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOffLocked()V

    .line 3680
    return-void
.end method

.method public noteVibratorOnLocked(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 3673
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3674
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVibratorOnLocked(J)V

    .line 3675
    return-void
.end method

.method public noteVideoOffLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3612
    iget v4, p0, mVideoOnNesting:I

    if-nez v4, :cond_5

    .line 3626
    :goto_4
    return-void

    .line 3615
    :cond_5
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3617
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3618
    .local v2, "uptime":J
    iget v4, p0, mVideoOnNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mVideoOnNesting:I

    if-nez v4, :cond_2b

    .line 3619
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3622
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3623
    iget-object v4, p0, mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3625
    :cond_2b
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOffLocked(J)V

    goto :goto_4
.end method

.method public noteVideoOnLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3597
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3599
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3600
    .local v2, "uptime":J
    iget v4, p0, mVideoOnNesting:I

    if-nez v4, :cond_21

    .line 3601
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3604
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3605
    iget-object v4, p0, mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3607
    :cond_21
    iget v4, p0, mVideoOnNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mVideoOnNesting:I

    .line 3608
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteVideoTurnedOnLocked(J)V

    .line 3609
    return-void
.end method

.method public noteWakeUpLocked(Ljava/lang/String;I)V
    .registers 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .prologue
    .line 3154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3155
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3156
    .local v4, "uptime":J
    const/16 v6, 0x12

    move-object v1, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 3158
    return-void
.end method

.method public noteWakeupReasonLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2922
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2923
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2926
    .local v2, "uptime":J
    invoke-virtual {p0, v2, v3}, aggregateLastWakeupUptimeLocked(J)V

    .line 2927
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2928
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object p1, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 2929
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 2930
    iput-object p1, p0, mLastWakeupReason:Ljava/lang/String;

    .line 2931
    iput-wide v2, p0, mLastWakeupUptimeMs:J

    .line 2932
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 2933
    return-void
.end method

.method public noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    .registers 6
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 4060
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4061
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4062
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2, p2}, noteWifiBatchedScanStartedLocked(II)V

    .line 4061
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4064
    :cond_11
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "csph"    # I

    .prologue
    .line 3989
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3991
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 3992
    return-void
.end method

.method public noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4067
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4068
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4069
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteWifiBatchedScanStoppedLocked(I)V

    .line 4068
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4071
    :cond_11
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 3995
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3996
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3997
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    .line 3998
    return-void
.end method

.method public noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4081
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4082
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4083
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteWifiMulticastDisabledLocked(I)V

    .line 4082
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4085
    :cond_11
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 4018
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 4019
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4020
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4021
    .local v2, "uptime":J
    iget v4, p0, mWifiMulticastNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mWifiMulticastNesting:I

    .line 4022
    iget v4, p0, mWifiMulticastNesting:I

    if-nez v4, :cond_23

    .line 4023
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x10001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 4026
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 4028
    :cond_23
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    .line 4029
    return-void
.end method

.method public noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4074
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4075
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4076
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteWifiMulticastEnabledLocked(I)V

    .line 4075
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4078
    :cond_11
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 4003
    const-string v4, "BatteryStatsImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi multicast lock enabled by UID  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 4005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4006
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4007
    .local v2, "uptime":J
    iget v4, p0, mWifiMulticastNesting:I

    if-nez v4, :cond_34

    .line 4008
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 4011
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 4013
    :cond_34
    iget v4, p0, mWifiMulticastNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mWifiMulticastNesting:I

    .line 4014
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    .line 4015
    return-void
.end method

.method public noteWifiOffLocked()V
    .registers 8

    .prologue
    .line 3551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3552
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3553
    .local v2, "uptime":J
    iget-boolean v4, p0, mWifiOn:Z

    if-eqz v4, :cond_27

    .line 3554
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3557
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3558
    const/4 v4, 0x0

    iput-boolean v4, p0, mWifiOn:Z

    .line 3559
    iget-object v4, p0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3560
    const-string/jumbo v4, "wifi-on"

    invoke-direct {p0, v4}, scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3562
    :cond_27
    return-void
.end method

.method public noteWifiOnLocked()V
    .registers 8

    .prologue
    .line 3537
    iget-boolean v4, p0, mWifiOn:Z

    if-nez v4, :cond_26

    .line 3538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3539
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3540
    .local v2, "uptime":J
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3543
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3544
    const/4 v4, 0x1

    iput-boolean v4, p0, mWifiOn:Z

    .line 3545
    iget-object v4, p0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3546
    const-string/jumbo v4, "wifi-off"

    invoke-direct {p0, v4}, scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3548
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_26
    return-void
.end method

.method public noteWifiRadioPowerState(IJ)V
    .registers 12
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 3779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3780
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3781
    .local v4, "uptime":J
    iget v1, p0, mWifiRadioPowerState:I

    if-eq v1, p1, :cond_25

    .line 3782
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p1, v1, :cond_14

    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p1, v1, :cond_26

    :cond_14
    const/4 v0, 0x1

    .line 3785
    .local v0, "active":Z
    :goto_15
    if-eqz v0, :cond_28

    .line 3786
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3792
    :goto_20
    invoke-virtual {p0, v2, v3, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3793
    iput p1, p0, mWifiRadioPowerState:I

    .line 3795
    .end local v0    # "active":Z
    :cond_25
    return-void

    .line 3782
    :cond_26
    const/4 v0, 0x0

    goto :goto_15

    .line 3788
    .restart local v0    # "active":Z
    :cond_28
    iget-object v1, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x4000001

    and-int/2addr v6, v7

    iput v6, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_20
.end method

.method public noteWifiRssiChangedLocked(I)V
    .registers 10
    .param p1, "newRssi"    # I

    .prologue
    .line 3902
    const/4 v3, 0x5

    invoke-static {p1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 3904
    .local v2, "strengthBin":I
    iget v3, p0, mWifiSignalStrengthBin:I

    if-eq v3, v2, :cond_43

    .line 3905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3906
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3907
    .local v4, "uptime":J
    iget v3, p0, mWifiSignalStrengthBin:I

    if-ltz v3, :cond_1e

    .line 3908
    iget-object v3, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v6, p0, mWifiSignalStrengthBin:I

    aget-object v3, v3, v6

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3911
    :cond_1e
    if-ltz v2, :cond_44

    .line 3912
    iget-object v3, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-nez v3, :cond_31

    .line 3913
    iget-object v3, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3915
    :cond_31
    iget-object v3, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v6, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v6, v6, -0x71

    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v6, v7

    iput v6, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3920
    invoke-virtual {p0, v0, v1, v4, v5}, addHistoryRecordLocked(JJ)V

    .line 3924
    :goto_41
    iput v2, p0, mWifiSignalStrengthBin:I

    .line 3926
    .end local v0    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_43
    return-void

    .line 3922
    .restart local v0    # "elapsedRealtime":J
    .restart local v4    # "uptime":J
    :cond_44
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, stopAllWifiSignalStrengthTimersLocked(I)V

    goto :goto_41
.end method

.method public noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 10
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 3819
    iget-boolean v5, p0, mGlobalWifiRunning:Z

    if-eqz v5, :cond_3a

    .line 3820
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3821
    .local v2, "elapsedRealtime":J
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3822
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_21

    .line 3823
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, mapUid(I)I

    move-result v4

    .line 3824
    .local v4, "uid":I
    invoke-virtual {p0, v4}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3822
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3826
    .end local v4    # "uid":I
    :cond_21
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3827
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_42

    .line 3828
    invoke-virtual {p2, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, mapUid(I)I

    move-result v4

    .line 3829
    .restart local v4    # "uid":I
    invoke-virtual {p0, v4}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3827
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 3832
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uid":I
    :cond_3a
    const-string v5, "BatteryStatsImpl"

    const-string/jumbo v6, "noteWifiRunningChangedLocked -- called while WIFI not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    :cond_42
    return-void
.end method

.method public noteWifiRunningLocked(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3798
    iget-boolean v5, p0, mGlobalWifiRunning:Z

    if-nez v5, :cond_40

    .line 3799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3800
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3801
    .local v6, "uptime":J
    iget-object v5, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v9, 0x20000000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3804
    invoke-virtual {p0, v2, v3, v6, v7}, addHistoryRecordLocked(JJ)V

    .line 3805
    const/4 v5, 0x1

    iput-boolean v5, p0, mGlobalWifiRunning:Z

    .line 3806
    iget-object v5, p0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3807
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3808
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_39

    .line 3809
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, mapUid(I)I

    move-result v4

    .line 3810
    .local v4, "uid":I
    invoke-virtual {p0, v4}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiRunningLocked(J)V

    .line 3808
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 3812
    .end local v4    # "uid":I
    :cond_39
    const-string/jumbo v5, "wifi-running"

    invoke-direct {p0, v5}, scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3816
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_3f
    return-void

    .line 3814
    :cond_40
    const-string v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiRunningLocked -- called while WIFI running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4046
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4047
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4048
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteWifiScanStartedLocked(I)V

    .line 4047
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4050
    :cond_11
    return-void
.end method

.method public noteWifiScanStartedLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3961
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3962
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3963
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3964
    .local v2, "uptime":J
    iget v4, p0, mWifiScanNesting:I

    if-nez v4, :cond_1c

    .line 3965
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3968
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3970
    :cond_1c
    iget v4, p0, mWifiScanNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mWifiScanNesting:I

    .line 3971
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStartedLocked(J)V

    .line 3972
    return-void
.end method

.method public noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 4053
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 4054
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 4055
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, noteWifiScanStoppedLocked(I)V

    .line 4054
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4057
    :cond_11
    return-void
.end method

.method public noteWifiScanStoppedLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 3975
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 3976
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3977
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3978
    .local v2, "uptime":J
    iget v4, p0, mWifiScanNesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mWifiScanNesting:I

    .line 3979
    iget v4, p0, mWifiScanNesting:I

    if-nez v4, :cond_23

    .line 3980
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v6, -0x8000001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 3983
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3985
    :cond_23
    invoke-virtual {p0, p1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiScanStoppedLocked(J)V

    .line 3986
    return-void
.end method

.method public noteWifiStateLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 3859
    iget v2, p0, mWifiState:I

    if-eq v2, p1, :cond_24

    .line 3860
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3861
    .local v0, "elapsedRealtime":J
    iget v2, p0, mWifiState:I

    if-ltz v2, :cond_15

    .line 3862
    iget-object v2, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, p0, mWifiState:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3864
    :cond_15
    iput p1, p0, mWifiState:I

    .line 3865
    iget-object v2, p0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3866
    const-string/jumbo v2, "wifi-state"

    invoke-direct {p0, v2}, scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3868
    .end local v0    # "elapsedRealtime":J
    :cond_24
    return-void
.end method

.method public noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3837
    iget-boolean v5, p0, mGlobalWifiRunning:Z

    if-eqz v5, :cond_41

    .line 3838
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3839
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3840
    .local v6, "uptime":J
    iget-object v5, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v9, -0x20000001

    and-int/2addr v8, v9

    iput v8, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3843
    invoke-virtual {p0, v2, v3, v6, v7}, addHistoryRecordLocked(JJ)V

    .line 3844
    const/4 v5, 0x0

    iput-boolean v5, p0, mGlobalWifiRunning:Z

    .line 3845
    iget-object v5, p0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3846
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 3847
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v0, :cond_3a

    .line 3848
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, mapUid(I)I

    move-result v4

    .line 3849
    .local v4, "uid":I
    invoke-virtual {p0, v4}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiStoppedLocked(J)V

    .line 3847
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 3851
    .end local v4    # "uid":I
    :cond_3a
    const-string/jumbo v5, "wifi-stopped"

    invoke-direct {p0, v5}, scheduleSyncExternalWifiStatsLocked(Ljava/lang/String;)V

    .line 3855
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    :goto_40
    return-void

    .line 3853
    :cond_41
    const-string v5, "BatteryStatsImpl"

    const-string/jumbo v8, "noteWifiStoppedLocked -- called while WIFI not running"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public noteWifiSupplicantStateChangedLocked(IZ)V
    .registers 10
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 3872
    iget v4, p0, mWifiSupplState:I

    if-eq v4, p1, :cond_32

    .line 3873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3874
    .local v0, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3875
    .local v2, "uptime":J
    iget v4, p0, mWifiSupplState:I

    if-ltz v4, :cond_19

    .line 3876
    iget-object v4, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v5, p0, mWifiSupplState:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3878
    :cond_19
    iput p1, p0, mWifiSupplState:I

    .line 3879
    iget-object v4, p0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3880
    iget-object v4, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-object v5, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v5, v5, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v5, v5, -0x10

    shl-int/lit8 v6, p1, 0x0

    or-int/2addr v5, v6

    iput v5, v4, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 3885
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 3887
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "uptime":J
    :cond_32
    return-void
.end method

.method public prepareForDumpLocked()V
    .registers 1

    .prologue
    .line 10241
    invoke-virtual {p0}, pullPendingStateUpdatesLocked()V

    .line 10245
    invoke-virtual {p0}, getStartClockTime()J

    .line 10246
    return-void
.end method

.method public pullPendingStateUpdatesLocked()V
    .registers 4

    .prologue
    .line 7637
    iget-boolean v1, p0, mOnBatteryInternal:Z

    if-eqz v1, :cond_d

    .line 7638
    iget v1, p0, mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 7639
    .local v0, "screenOn":Z
    :goto_a
    invoke-virtual {p0, v0, v0}, updateDischargeScreenLevelsLocked(ZZ)V

    .line 7641
    .end local v0    # "screenOn":Z
    :cond_d
    return-void

    .line 7638
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "dit"    # Landroid/os/BatteryStats$DailyItem;
    .param p3, "isCharge"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7240
    const/4 v8, 0x0

    const-string/jumbo v9, "n"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7241
    .local v2, "numAttr":Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 7242
    const-string v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing \'n\' attribute at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7243
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7278
    :goto_29
    return-void

    .line 7246
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7247
    .local v1, "num":I
    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {v4, v1}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I)V

    .line 7248
    .local v4, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    if-eqz p3, :cond_71

    .line 7249
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 7253
    :goto_37
    const/4 v0, 0x0

    .line 7254
    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 7257
    .local v3, "outerDepth":I
    :cond_3c
    :goto_3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_9e

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_9e

    .line 7258
    :cond_4c
    const/4 v8, 0x3

    if-eq v6, v8, :cond_3c

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3c

    .line 7262
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7263
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "s"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 7264
    if-ge v0, v1, :cond_3c

    .line 7265
    const/4 v8, 0x0

    const-string/jumbo v9, "v"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7266
    .local v7, "valueAttr":Ljava/lang/String;
    if-eqz v7, :cond_3c

    .line 7267
    invoke-virtual {v4, v0, v7}, Landroid/os/BatteryStats$LevelStepTracker;->decodeEntryAt(ILjava/lang/String;)V

    .line 7268
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 7251
    .end local v0    # "i":I
    .end local v3    # "outerDepth":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "valueAttr":Ljava/lang/String;
    :cond_71
    iput-object v4, p2, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    goto :goto_37

    .line 7272
    .restart local v0    # "i":I
    .restart local v3    # "outerDepth":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_74
    const-string v8, "BatteryStatsImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3c

    .line 7277
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_9e
    iput v0, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    goto :goto_29
.end method

.method readDailyItemTagLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7186
    new-instance v1, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    .line 7187
    .local v1, "dit":Landroid/os/BatteryStats$DailyItem;
    const/4 v7, 0x0

    const-string/jumbo v8, "start"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7188
    .local v0, "attr":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 7189
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    .line 7191
    :cond_15
    const/4 v7, 0x0

    const-string v8, "end"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7192
    if-eqz v0, :cond_24

    .line 7193
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    .line 7195
    :cond_24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 7198
    .local v2, "outerDepth":I
    :cond_28
    :goto_28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_f2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_38

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_f2

    .line 7199
    :cond_38
    const/4 v7, 0x3

    if-eq v5, v7, :cond_28

    const/4 v7, 0x4

    if-eq v5, v7, :cond_28

    .line 7203
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7204
    .local v4, "tagName":Ljava/lang/String;
    const-string v7, "dis"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 7205
    const/4 v7, 0x0

    const-string v8, "dis"

    invoke-virtual {p0, p1, v1, v7, v8}, readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_28

    .line 7206
    :cond_51
    const-string v7, "chg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 7207
    const/4 v7, 0x1

    const-string v8, "chg"

    invoke-virtual {p0, p1, v1, v7, v8}, readDailyItemTagDetailsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/BatteryStats$DailyItem;ZLjava/lang/String;)V

    goto :goto_28

    .line 7208
    :cond_60
    const-string/jumbo v7, "upd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 7209
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_74

    .line 7210
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7212
    :cond_74
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 7213
    .local v3, "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 7214
    const/4 v7, 0x0

    const-string/jumbo v8, "pkg"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 7215
    const/4 v7, 0x0

    const-string/jumbo v8, "ver"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7216
    .local v6, "verStr":Ljava/lang/String;
    if-eqz v6, :cond_9f

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_94
    iput v7, v3, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 7217
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7218
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_28

    .line 7216
    :cond_9f
    const/4 v7, 0x0

    goto :goto_94

    .line 7219
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    .end local v6    # "verStr":Ljava/lang/String;
    :cond_a1
    const-string/jumbo v7, "rem"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 7220
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    if-nez v7, :cond_b5

    .line 7221
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7223
    :cond_b5
    new-instance v3, Landroid/os/BatteryStats$PackageChange;

    invoke-direct {v3}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 7224
    .restart local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 7225
    const/4 v7, 0x0

    const-string/jumbo v8, "pkg"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 7226
    iget-object v7, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7227
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_28

    .line 7229
    .end local v3    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_d1
    const-string v7, "BatteryStatsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <item>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7231
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_28

    .line 7234
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_f2
    iget-object v7, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7235
    return-void
.end method

.method public readDailyStatsLocked()V
    .registers 7

    .prologue
    .line 7119
    const-string v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading daily items from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    iget-object v3, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 7123
    :try_start_23
    iget-object v3, p0, mDailyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_3d

    move-result-object v2

    .line 7128
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_29
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 7129
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7130
    invoke-direct {p0, v1}, readDailyItemsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_39} :catch_3f
    .catchall {:try_start_29 .. :try_end_39} :catchall_46

    .line 7134
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4b

    .line 7138
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_3c
    return-void

    .line 7124
    :catch_3d
    move-exception v0

    .line 7125
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_3c

    .line 7131
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_3f
    move-exception v3

    .line 7134
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_3c

    .line 7135
    :catch_44
    move-exception v3

    goto :goto_3c

    .line 7133
    :catchall_46
    move-exception v3

    .line 7134
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4d

    .line 7136
    :goto_4a
    throw v3

    .line 7135
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4b
    move-exception v3

    goto :goto_3c

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4d
    move-exception v4

    goto :goto_4a
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9935
    invoke-virtual {p0, p1}, readFromParcelLocked(Landroid/os/Parcel;)V

    .line 9936
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 26
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9939
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 9940
    .local v16, "magic":I
    const v4, -0x458a8b8b

    move/from16 v0, v16

    if-eq v0, v4, :cond_28

    .line 9941
    new-instance v4, Landroid/os/ParcelFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad magic number: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9944
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, readHistory(Landroid/os/Parcel;Z)V

    .line 9946
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mStartCount:I

    .line 9947
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mStartClockTime:J

    .line 9948
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mStartPlatformVersion:Ljava/lang/String;

    .line 9949
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mEndPlatformVersion:Ljava/lang/String;

    .line 9950
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mUptime:J

    .line 9951
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mUptimeStart:J

    .line 9952
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mRealtime:J

    .line 9953
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mRealtimeStart:J

    .line 9954
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c7

    const/4 v4, 0x1

    :goto_77
    move-object/from16 v0, p0

    iput-boolean v4, v0, mOnBattery:Z

    .line 9955
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mOnBatteryInternal:Z

    .line 9956
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 9957
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 9959
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mScreenState:I

    .line 9960
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9961
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_aa
    const/4 v4, 0x5

    if-ge v12, v4, :cond_c9

    .line 9962
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int/lit8 v6, v12, -0x64

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9961
    add-int/lit8 v12, v12, 0x1

    goto :goto_aa

    .line 9954
    .end local v12    # "i":I
    :cond_c7
    const/4 v4, 0x0

    goto :goto_77

    .line 9965
    .restart local v12    # "i":I
    :cond_c9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mInteractive:Z

    .line 9966
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0xa

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9967
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mPhoneOn:Z

    .line 9968
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9969
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0xb

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9970
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0xc

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9971
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9972
    const/4 v12, 0x0

    :goto_131
    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v12, v4, :cond_14f

    .line 9973
    move-object/from16 v0, p0

    iget-object v0, v0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0xc8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9972
    add-int/lit8 v12, v12, 0x1

    goto :goto_131

    .line 9976
    :cond_14f
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0xc7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9977
    const/4 v12, 0x0

    :goto_163
    const/16 v4, 0x11

    if-ge v12, v4, :cond_181

    .line 9978
    move-object/from16 v0, p0

    iget-object v0, v0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x12c

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9977
    add-int/lit8 v12, v12, 0x1

    goto :goto_163

    .line 9981
    :cond_181
    const/4 v12, 0x0

    :goto_182
    const/4 v4, 0x4

    if-ge v12, v4, :cond_1aa

    .line 9982
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9983
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 9981
    add-int/lit8 v12, v12, 0x1

    goto :goto_182

    .line 9985
    :cond_1aa
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, mMobileRadioPowerState:I

    .line 9986
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x190

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9987
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x191

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9989
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9990
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9991
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9992
    sget v4, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move-object/from16 v0, p0

    iput v4, v0, mWifiRadioPowerState:I

    .line 9993
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWifiOn:Z

    .line 9994
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9995
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mGlobalWifiRunning:Z

    .line 9996
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9997
    const/4 v12, 0x0

    :goto_238
    const/16 v4, 0x8

    if-ge v12, v4, :cond_256

    .line 9998
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x258

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 9997
    add-int/lit8 v12, v12, 0x1

    goto :goto_238

    .line 10001
    :cond_256
    const/4 v12, 0x0

    :goto_257
    const/16 v4, 0xd

    if-ge v12, v4, :cond_275

    .line 10002
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x2bc

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 10001
    add-int/lit8 v12, v12, 0x1

    goto :goto_257

    .line 10005
    :cond_275
    const/4 v12, 0x0

    :goto_276
    const/4 v4, 0x5

    if-ge v12, v4, :cond_293

    .line 10006
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v23, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v12, -0x320

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v23, v12

    .line 10005
    add-int/lit8 v12, v12, 0x1

    goto :goto_276

    .line 10009
    :cond_293
    const/4 v12, 0x0

    :goto_294
    const/4 v4, 0x4

    if-ge v12, v4, :cond_2ab

    .line 10010
    move-object/from16 v0, p0

    iget-object v4, v0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 10009
    add-int/lit8 v12, v12, 0x1

    goto :goto_294

    .line 10012
    :cond_2ab
    const/4 v12, 0x0

    :goto_2ac
    const/4 v4, 0x4

    if-ge v12, v4, :cond_2c3

    .line 10013
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 10012
    add-int/lit8 v12, v12, 0x1

    goto :goto_2ac

    .line 10016
    :cond_2c3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e4

    const/4 v4, 0x1

    :goto_2ca
    move-object/from16 v0, p0

    iput-boolean v4, v0, mHasWifiEnergyReporting:Z

    .line 10017
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e7

    const/4 v4, 0x1

    :goto_2d5
    move-object/from16 v0, p0

    iput-boolean v4, v0, mHasBluetoothEnergyReporting:Z

    .line 10018
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mNumConnectivityChange:I

    .line 10019
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mLoadedNumConnectivityChange:I

    .line 10020
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mUnpluggedNumConnectivityChange:I

    .line 10021
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mAudioOnNesting:I

    .line 10022
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mAudioOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10023
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mVideoOnNesting:I

    .line 10024
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/4 v6, -0x8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mVideoOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10025
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mFlashlightOnNesting:I

    .line 10026
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0x9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10027
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mCameraOnNesting:I

    .line 10028
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    const/16 v6, -0xd

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 10029
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargeUnplugLevel:I

    .line 10030
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargePlugLevel:I

    .line 10031
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargeCurrentLevel:I

    .line 10032
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mCurrentBatteryLevel:I

    .line 10033
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mLowDischargeAmountSinceCharge:I

    .line 10034
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mHighDischargeAmountSinceCharge:I

    .line 10035
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargeAmountScreenOn:I

    .line 10036
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargeAmountScreenOnSinceCharge:I

    .line 10037
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargeAmountScreenOff:I

    .line 10038
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDischargeAmountScreenOffSinceCharge:I

    .line 10039
    move-object/from16 v0, p0

    iget-object v4, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 10040
    move-object/from16 v0, p0

    iget-object v4, v0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 10041
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, mLastWriteTime:J

    .line 10043
    move-object/from16 v0, p0

    iget-object v4, v0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 10044
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10045
    .local v10, "NKW":I
    const/4 v13, 0x0

    .local v13, "ikw":I
    :goto_3c1
    if-ge v13, v10, :cond_3ea

    .line 10046
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e1

    .line 10047
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10048
    .local v22, "wakelockName":Ljava/lang/String;
    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p1

    invoke-direct {v15, v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 10049
    .local v15, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, mKernelWakelockStats:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10045
    .end local v15    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v22    # "wakelockName":Ljava/lang/String;
    :cond_3e1
    add-int/lit8 v13, v13, 0x1

    goto :goto_3c1

    .line 10016
    .end local v10    # "NKW":I
    .end local v13    # "ikw":I
    :cond_3e4
    const/4 v4, 0x0

    goto/16 :goto_2ca

    .line 10017
    :cond_3e7
    const/4 v4, 0x0

    goto/16 :goto_2d5

    .line 10053
    .restart local v10    # "NKW":I
    .restart local v13    # "ikw":I
    :cond_3ea
    move-object/from16 v0, p0

    iget-object v4, v0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 10054
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10055
    .local v11, "NWR":I
    const/4 v14, 0x0

    .local v14, "iwr":I
    :goto_3f6
    if-ge v14, v11, :cond_41d

    .line 10056
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41a

    .line 10057
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10058
    .local v18, "reasonName":Ljava/lang/String;
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 10059
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    move-object/from16 v0, p0

    iget-object v4, v0, mWakeupReasonStats:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10055
    .end local v18    # "reasonName":Ljava/lang/String;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_41a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3f6

    .line 10063
    :cond_41d
    move-object/from16 v0, p0

    iget-object v4, v0, mPartialTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10064
    move-object/from16 v0, p0

    iget-object v4, v0, mFullTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10065
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10066
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiRunningTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10067
    move-object/from16 v0, p0

    iget-object v4, v0, mFullWifiLockTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10068
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiScanTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10069
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 10070
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiMulticastTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10071
    move-object/from16 v0, p0

    iget-object v4, v0, mAudioTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10072
    move-object/from16 v0, p0

    iget-object v4, v0, mVideoTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10073
    move-object/from16 v0, p0

    iget-object v4, v0, mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10074
    move-object/from16 v0, p0

    iget-object v4, v0, mCameraTurnedOnTimers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10076
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10077
    .local v17, "numUids":I
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 10078
    const/4 v12, 0x0

    :goto_47d
    move/from16 v0, v17

    if-ge v12, v0, :cond_4ad

    .line 10079
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10080
    .local v21, "uid":I
    new-instance v20, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 10081
    .local v20, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    iget-object v5, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 10082
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10078
    add-int/lit8 v12, v12, 0x1

    goto :goto_47d

    .line 10084
    .end local v20    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v21    # "uid":I
    :cond_4ad
    return-void
.end method

.method readHistory(Landroid/os/Parcel;Z)V
    .registers 21
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "andOldHistory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .prologue
    .line 9112
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 9114
    .local v4, "historyBaseTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataSize(I)V

    .line 9115
    move-object/from16 v0, p0

    iget-object v14, v0, mHistoryBuffer:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9116
    move-object/from16 v0, p0

    iget-object v14, v0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 9117
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mNextHistoryTagIdx:I

    .line 9118
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mNumHistoryTagChars:I

    .line 9120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9121
    .local v8, "numTags":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v8, :cond_79

    .line 9122
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9123
    .local v7, "idx":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 9124
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_3f

    .line 9125
    new-instance v14, Landroid/os/ParcelFormatException;

    const-string/jumbo v15, "null history tag string"

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9127
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 9128
    .local v13, "uid":I
    new-instance v12, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v12}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    .line 9129
    .local v12, "tag":Landroid/os/BatteryStats$HistoryTag;
    iput-object v9, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 9130
    iput v13, v12, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 9131
    iput v7, v12, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 9132
    move-object/from16 v0, p0

    iget-object v14, v0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9133
    move-object/from16 v0, p0

    iget v14, v0, mNextHistoryTagIdx:I

    if-lt v7, v14, :cond_65

    .line 9134
    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mNextHistoryTagIdx:I

    .line 9136
    :cond_65
    move-object/from16 v0, p0

    iget v14, v0, mNumHistoryTagChars:I

    iget-object v15, v12, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mNumHistoryTagChars:I

    .line 9121
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 9139
    .end local v7    # "idx":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v12    # "tag":Landroid/os/BatteryStats$HistoryTag;
    .end local v13    # "uid":I
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9140
    .local v2, "bufSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 9141
    .local v3, "curPos":I
    const/high16 v14, 0xf0000

    if-lt v2, v14, :cond_9e

    .line 9142
    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File corrupt: history data buffer too large "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9144
    :cond_9e
    and-int/lit8 v14, v2, -0x4

    if-eq v14, v2, :cond_bb

    .line 9145
    new-instance v14, Landroid/os/ParcelFormatException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File corrupt: history data buffer not aligned "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9150
    :cond_bb
    move-object/from16 v0, p0

    iget-object v14, v0, mHistoryBuffer:Landroid/os/Parcel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9151
    add-int v14, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9154
    if-eqz p2, :cond_d0

    .line 9155
    invoke-virtual/range {p0 .. p1}, readOldHistory(Landroid/os/Parcel;)V

    .line 9164
    :cond_d0
    move-object/from16 v0, p0

    iput-wide v4, v0, mHistoryBaseTime:J

    .line 9174
    move-object/from16 v0, p0

    iget-wide v14, v0, mHistoryBaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_ef

    .line 9175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 9176
    .local v10, "oldnow":J
    move-object/from16 v0, p0

    iget-wide v14, v0, mHistoryBaseTime:J

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, mHistoryBaseTime:J

    .line 9184
    .end local v10    # "oldnow":J
    :cond_ef
    return-void
.end method

.method public readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 21
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 2103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2104
    .local v7, "firstToken":I
    const v13, 0x7ffff

    and-int v6, v7, v13

    .line 2105
    .local v6, "deltaTimeToken":I
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2106
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2110
    const v13, 0x7fffd

    if-ge v6, v13, :cond_135

    .line 2111
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2131
    :goto_25
    const/high16 v13, 0x80000

    and-int/2addr v13, v7

    if-eqz v13, :cond_18f

    .line 2132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2133
    .local v2, "batteryLevelInt":I
    shr-int/lit8 v13, v2, 0x19

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2134
    shl-int/lit8 v13, v2, 0x7

    shr-int/lit8 v13, v13, 0x15

    int-to-short v13, v13

    move-object/from16 v0, p2

    iput-short v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2135
    shr-int/lit8 v13, v2, 0x1

    and-int/lit16 v13, v13, 0x3fff

    int-to-char v13, v13

    move-object/from16 v0, p2

    iput-char v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 2136
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2146
    :goto_53
    const/high16 v13, 0x100000

    and-int/2addr v13, v7

    if-eqz v13, :cond_1a7

    .line 2147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2148
    .local v10, "stateInt":I
    const/high16 v13, -0x1000000

    and-int/2addr v13, v7

    const v14, 0xffffff

    and-int/2addr v14, v10

    or-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2149
    shr-int/lit8 v13, v10, 0x1d

    and-int/lit8 v13, v13, 0x7

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2151
    shr-int/lit8 v13, v10, 0x1a

    and-int/lit8 v13, v13, 0x7

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2153
    shr-int/lit8 v13, v10, 0x18

    and-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2155
    move-object/from16 v0, p2

    iget-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v13, :pswitch_data_1e2

    .line 2166
    :goto_8a
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2177
    .end local v10    # "stateInt":I
    :goto_94
    const/high16 v13, 0x200000

    and-int/2addr v13, v7

    if-eqz v13, :cond_a1

    .line 2178
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2183
    :cond_a1
    const/high16 v13, 0x400000

    and-int/2addr v13, v7

    if-eqz v13, :cond_1c7

    .line 2184
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2185
    .local v9, "indexes":I
    const v13, 0xffff

    and-int v11, v9, v13

    .line 2186
    .local v11, "wakeLockIndex":I
    shr-int/lit8 v13, v9, 0x10

    const v14, 0xffff

    and-int v12, v13, v14

    .line 2187
    .local v12, "wakeReasonIndex":I
    const v13, 0xffff

    if-eq v11, v13, :cond_1b9

    .line 2188
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2189
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2195
    :goto_cc
    const v13, 0xffff

    if-eq v12, v13, :cond_1c0

    .line 2196
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2197
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2203
    :goto_e2
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2209
    .end local v9    # "indexes":I
    .end local v11    # "wakeLockIndex":I
    .end local v12    # "wakeReasonIndex":I
    :goto_ec
    const/high16 v13, 0x800000

    and-int/2addr v13, v7

    if-eqz v13, :cond_1d3

    .line 2210
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2211
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2212
    .local v3, "codeAndIndex":I
    const v13, 0xffff

    and-int/2addr v13, v3

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2213
    shr-int/lit8 v13, v3, 0x10

    const v14, 0xffff

    and-int v8, v13, v14

    .line 2214
    .local v8, "index":I
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, readHistoryTag(ILandroid/os/BatteryStats$HistoryTag;)V

    .line 2215
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2223
    .end local v3    # "codeAndIndex":I
    .end local v8    # "index":I
    :goto_11f
    and-int/lit8 v13, v2, 0x1

    if-eqz v13, :cond_1da

    .line 2224
    move-object/from16 v0, p0

    iget-object v13, v0, mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2225
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 2229
    .end local v2    # "batteryLevelInt":I
    :goto_134
    return-void

    .line 2112
    :cond_135
    const v13, 0x7fffd

    if-ne v6, v13, :cond_154

    .line 2113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2114
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2116
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_134

    .line 2118
    :cond_154
    const v13, 0x7fffe

    if-ne v6, v13, :cond_176

    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2120
    .local v4, "delta":I
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2121
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_25

    .line 2124
    .end local v4    # "delta":I
    :cond_176
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 2126
    .local v4, "delta":J
    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v14, v4

    move-object/from16 v0, p2

    iput-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2127
    move-object/from16 v0, p2

    iget v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto/16 :goto_25

    .line 2143
    .end local v4    # "delta":J
    :cond_18f
    const/4 v2, 0x0

    .restart local v2    # "batteryLevelInt":I
    goto/16 :goto_53

    .line 2157
    .restart local v10    # "stateInt":I
    :pswitch_192
    const/4 v13, 0x1

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_8a

    .line 2160
    :pswitch_199
    const/4 v13, 0x2

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_8a

    .line 2163
    :pswitch_1a0
    const/4 v13, 0x4

    move-object/from16 v0, p2

    iput-byte v13, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto/16 :goto_8a

    .line 2174
    .end local v10    # "stateInt":I
    :cond_1a7
    const/high16 v13, -0x1000000

    and-int/2addr v13, v7

    move-object/from16 v0, p2

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v15, 0xffffff

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_94

    .line 2193
    .restart local v9    # "indexes":I
    .restart local v11    # "wakeLockIndex":I
    .restart local v12    # "wakeReasonIndex":I
    :cond_1b9
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_cc

    .line 2201
    :cond_1c0
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_e2

    .line 2205
    .end local v9    # "indexes":I
    .end local v11    # "wakeLockIndex":I
    .end local v12    # "wakeReasonIndex":I
    :cond_1c7
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2206
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto/16 :goto_ec

    .line 2220
    :cond_1d3
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput v13, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    goto/16 :goto_11f

    .line 2227
    :cond_1da
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v13, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto/16 :goto_134

    .line 2155
    nop

    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_192
        :pswitch_199
        :pswitch_1a0
    .end packed-switch
.end method

.method public readLocked()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 9061
    iget-object v1, p0, mDailyFile:Lcom/android/internal/os/AtomicFile;

    if-eqz v1, :cond_8

    .line 9062
    invoke-virtual {p0}, readDailyStatsLocked()V

    .line 9065
    :cond_8
    iget-object v1, p0, mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_15

    .line 9066
    const-string v1, "BatteryStats"

    const-string/jumbo v6, "readLocked: no file associated with this instance"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9105
    :cond_14
    :goto_14
    return-void

    .line 9070
    :cond_15
    iget-object v1, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9073
    :try_start_1a
    iget-object v1, p0, mFile:Lcom/android/internal/util/JournaledFile;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v8

    .line 9074
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 9077
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9079
    .local v11, "stream":Ljava/io/FileInputStream;
    invoke-static {v11}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v10

    .line 9080
    .local v10, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 9081
    .local v9, "in":Landroid/os/Parcel;
    const/4 v1, 0x0

    array-length v6, v10

    invoke-virtual {v9, v10, v1, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 9082
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9083
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 9085
    invoke-virtual {p0, v9}, readSummaryFromParcel(Landroid/os/Parcel;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_42} :catch_69

    .line 9091
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Landroid/os/Parcel;
    .end local v10    # "raw":[B
    .end local v11    # "stream":Ljava/io/FileInputStream;
    :goto_42
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, p0, mEndPlatformVersion:Ljava/lang/String;

    .line 9093
    iget-object v1, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-lez v1, :cond_65

    .line 9094
    const/4 v1, 0x1

    iput-boolean v1, p0, mRecordingHistory:Z

    .line 9095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 9096
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9100
    .local v4, "uptime":J
    const/4 v6, 0x4

    iget-object v7, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, addHistoryBufferLocked(JJBLandroid/os/BatteryStats$HistoryItem;)V

    move-object v1, p0

    move v6, v12

    .line 9101
    invoke-direct/range {v1 .. v6}, startRecordingHistory(JJZ)V

    .line 9104
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :cond_65
    invoke-virtual {p0, v12}, recordDailyStatsIfNeededLocked(Z)V

    goto :goto_14

    .line 9086
    :catch_69
    move-exception v0

    .line 9087
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BatteryStats"

    const-string v6, "Error reading battery statistics"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9088
    invoke-direct {p0}, resetAllStatsLocked()V

    goto :goto_42
.end method

.method readOldHistory(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9188
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 47
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ParcelFormatException;
        }
    .end annotation

    .prologue
    .line 9243
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 9244
    .local v40, "version":I
    const/16 v42, 0x84

    move/from16 v0, v40

    move/from16 v1, v42

    if-eq v0, v1, :cond_3c

    .line 9245
    const-string v42, "BatteryStats"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "readFromParcel: version got "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", expected "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x84

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "; erasing old stats"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9571
    :cond_3b
    return-void

    .line 9250
    :cond_3c
    const/16 v42, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, readHistory(Landroid/os/Parcel;Z)V

    .line 9252
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mStartCount:I

    .line 9253
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, mUptime:J

    .line 9254
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, mRealtime:J

    .line 9255
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, mStartClockTime:J

    .line 9256
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, mStartPlatformVersion:Ljava/lang/String;

    .line 9257
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, mEndPlatformVersion:Ljava/lang/String;

    .line 9258
    move-object/from16 v0, p0

    iget-object v0, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 9259
    move-object/from16 v0, p0

    iget-object v0, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 9260
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mDischargeUnplugLevel:I

    .line 9261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mDischargePlugLevel:I

    .line 9262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mDischargeCurrentLevel:I

    .line 9263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mCurrentBatteryLevel:I

    .line 9264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mLowDischargeAmountSinceCharge:I

    .line 9265
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mHighDischargeAmountSinceCharge:I

    .line 9266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mDischargeAmountScreenOnSinceCharge:I

    .line 9267
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mDischargeAmountScreenOffSinceCharge:I

    .line 9268
    move-object/from16 v0, p0

    iget-object v0, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9269
    move-object/from16 v0, p0

    iget-object v0, v0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9270
    move-object/from16 v0, p0

    iget-object v0, v0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9271
    move-object/from16 v0, p0

    iget-object v0, v0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LevelStepTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 9272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9273
    .local v7, "NPKG":I
    if-lez v7, :cond_170

    .line 9274
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, mDailyPackageChanges:Ljava/util/ArrayList;

    .line 9275
    :goto_134
    if-lez v7, :cond_178

    .line 9276
    add-int/lit8 v7, v7, -0x1

    .line 9277
    new-instance v29, Landroid/os/BatteryStats$PackageChange;

    invoke-direct/range {v29 .. v29}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 9278
    .local v29, "pc":Landroid/os/BatteryStats$PackageChange;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 9279
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_16d

    const/16 v42, 0x1

    :goto_14f
    move/from16 v0, v42

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 9280
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v29

    iput v0, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    .line 9281
    move-object/from16 v0, p0

    iget-object v0, v0, mDailyPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_134

    .line 9279
    :cond_16d
    const/16 v42, 0x0

    goto :goto_14f

    .line 9284
    .end local v29    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_170
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, mDailyPackageChanges:Ljava/util/ArrayList;

    .line 9286
    :cond_178
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, mDailyStartTime:J

    .line 9287
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, mNextMinDailyDeadline:J

    .line 9288
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, mNextMaxDailyDeadline:J

    .line 9290
    move-object/from16 v0, p0

    iget v0, v0, mStartCount:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mStartCount:I

    .line 9292
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mScreenState:I

    .line 9293
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9294
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1bb
    const/16 v42, 0x5

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_1d5

    .line 9295
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9294
    add-int/lit8 v16, v16, 0x1

    goto :goto_1bb

    .line 9297
    :cond_1d5
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, mInteractive:Z

    .line 9298
    move-object/from16 v0, p0

    iget-object v0, v0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9299
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPhoneOn:Z

    .line 9300
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9301
    move-object/from16 v0, p0

    iget-object v0, v0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9302
    move-object/from16 v0, p0

    iget-object v0, v0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9303
    move-object/from16 v0, p0

    iget-object v0, v0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9304
    const/16 v16, 0x0

    :goto_228
    sget v42, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_242

    .line 9305
    move-object/from16 v0, p0

    iget-object v0, v0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9304
    add-int/lit8 v16, v16, 0x1

    goto :goto_228

    .line 9307
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9308
    const/16 v16, 0x0

    :goto_251
    const/16 v42, 0x11

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_26b

    .line 9309
    move-object/from16 v0, p0

    iget-object v0, v0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9308
    add-int/lit8 v16, v16, 0x1

    goto :goto_251

    .line 9311
    :cond_26b
    const/16 v16, 0x0

    :goto_26d
    const/16 v42, 0x4

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_296

    .line 9312
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9313
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9311
    add-int/lit8 v16, v16, 0x1

    goto :goto_26d

    .line 9315
    :cond_296
    sget v42, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mMobileRadioPowerState:I

    .line 9316
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9317
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9318
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9319
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9320
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9321
    sget v42, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mWifiRadioPowerState:I

    .line 9322
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWifiOn:Z

    .line 9323
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9324
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, mGlobalWifiRunning:Z

    .line 9325
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9326
    const/16 v16, 0x0

    :goto_313
    const/16 v42, 0x8

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_32d

    .line 9327
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9326
    add-int/lit8 v16, v16, 0x1

    goto :goto_313

    .line 9329
    :cond_32d
    const/16 v16, 0x0

    :goto_32f
    const/16 v42, 0xd

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_349

    .line 9330
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9329
    add-int/lit8 v16, v16, 0x1

    goto :goto_32f

    .line 9332
    :cond_349
    const/16 v16, 0x0

    :goto_34b
    const/16 v42, 0x5

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_365

    .line 9333
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9332
    add-int/lit8 v16, v16, 0x1

    goto :goto_34b

    .line 9335
    :cond_365
    const/16 v16, 0x0

    :goto_367
    const/16 v42, 0x4

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_381

    .line 9336
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9335
    add-int/lit8 v16, v16, 0x1

    goto :goto_367

    .line 9338
    :cond_381
    const/16 v16, 0x0

    :goto_383
    const/16 v42, 0x4

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_39d

    .line 9339
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9338
    add-int/lit8 v16, v16, 0x1

    goto :goto_383

    .line 9342
    :cond_39d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mLoadedNumConnectivityChange:I

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mNumConnectivityChange:I

    .line 9343
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mFlashlightOnNesting:I

    .line 9344
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9345
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, mCameraOnNesting:I

    .line 9346
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9348
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 9349
    .local v5, "NKW":I
    const/16 v42, 0x2710

    move/from16 v0, v42

    if-le v5, v0, :cond_3fc

    .line 9350
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many kernel wake locks "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9352
    :cond_3fc
    const/16 v18, 0x0

    .local v18, "ikw":I
    :goto_3fe
    move/from16 v0, v18

    if-ge v0, v5, :cond_41e

    .line 9353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_41b

    .line 9354
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 9355
    .local v25, "kwltName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, getKernelWakelockTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9352
    .end local v25    # "kwltName":Ljava/lang/String;
    :cond_41b
    add-int/lit8 v18, v18, 0x1

    goto :goto_3fe

    .line 9359
    :cond_41e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 9360
    .local v13, "NWR":I
    const/16 v42, 0x2710

    move/from16 v0, v42

    if-le v13, v0, :cond_443

    .line 9361
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many wakeup reasons "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9363
    :cond_443
    const/16 v24, 0x0

    .local v24, "iwr":I
    :goto_445
    move/from16 v0, v24

    if-ge v0, v13, :cond_465

    .line 9364
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_462

    .line 9365
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 9366
    .local v32, "reasonName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, getWakeupReasonTimerLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9363
    .end local v32    # "reasonName":Ljava/lang/String;
    :cond_462
    add-int/lit8 v24, v24, 0x1

    goto :goto_445

    .line 9370
    :cond_465
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 9371
    .local v10, "NU":I
    const/16 v42, 0x2710

    move/from16 v0, v42

    if-le v10, v0, :cond_48a

    .line 9372
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many uids "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9374
    :cond_48a
    const/16 v21, 0x0

    .local v21, "iu":I
    :goto_48c
    move/from16 v0, v21

    if-ge v0, v10, :cond_3b

    .line 9375
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 9376
    .local v39, "uid":I
    new-instance v38, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 9377
    .local v38, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, p0

    iget-object v0, v0, mUidStats:Landroid/util/SparseArray;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9379
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9380
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_4c9

    .line 9381
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9383
    :cond_4c9
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9384
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_4e4

    .line 9385
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9387
    :cond_4e4
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9388
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_4ff

    .line 9389
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9391
    :cond_4ff
    const/16 v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9392
    const/16 v16, 0x0

    :goto_509
    const/16 v42, 0x5

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_534

    .line 9393
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_531

    .line 9394
    const/16 v42, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v16

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 9395
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9392
    :cond_531
    add-int/lit8 v16, v16, 0x1

    goto :goto_509

    .line 9398
    :cond_534
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 9399
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_54f

    .line 9400
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9402
    :cond_54f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_560

    .line 9403
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9405
    :cond_560
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_571

    .line 9406
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9408
    :cond_571
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_582

    .line 9409
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9411
    :cond_582
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_593

    .line 9412
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9414
    :cond_593
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_5a4

    .line 9415
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9417
    :cond_5a4
    const/16 v42, 0x3

    move/from16 v0, v42

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9418
    const/16 v16, 0x0

    :goto_5ae
    const/16 v42, 0x3

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_5d9

    .line 9419
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_5d6

    .line 9420
    const/16 v42, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v16

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 9421
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9418
    :cond_5d6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5ae

    .line 9424
    :cond_5d9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_5ea

    .line 9425
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9428
    :cond_5ea
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_617

    .line 9429
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v42, v0

    if-nez v42, :cond_5fb

    .line 9430
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 9432
    :cond_5fb
    const/16 v16, 0x0

    :goto_5fd
    const/16 v42, 0x3

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_617

    .line 9433
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9432
    add-int/lit8 v16, v16, 0x1

    goto :goto_5fd

    .line 9437
    :cond_617
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_66d

    .line 9438
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    if-nez v42, :cond_628

    .line 9439
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 9441
    :cond_628
    const/16 v16, 0x0

    :goto_62a
    const/16 v42, 0x4

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_653

    .line 9442
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9443
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v16

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9441
    add-int/lit8 v16, v16, 0x1

    goto :goto_62a

    .line 9445
    :cond_653
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9446
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9449
    :cond_66d
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9450
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9451
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9453
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_75b

    .line 9454
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 9455
    .local v27, "numClusters":I
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v42, v0

    if-eqz v42, :cond_6be

    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v27

    if-eq v0, v1, :cond_6be

    .line 9456
    new-instance v42, Landroid/os/ParcelFormatException;

    const-string v43, "Incompatible cpu cluster arrangement"

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9459
    :cond_6be
    move/from16 v0, v27

    new-array v0, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9460
    const/4 v15, 0x0

    .local v15, "cluster":I
    :goto_6cb
    move/from16 v0, v27

    if-ge v15, v0, :cond_765

    .line 9461
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_74d

    .line 9462
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 9463
    .local v9, "NSB":I
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v42, v0

    if-eqz v42, :cond_70c

    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v42

    move/from16 v0, v42

    if-eq v0, v9, :cond_70c

    .line 9465
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many speed bins "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9469
    :cond_70c
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    new-array v0, v9, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v43, v0

    aput-object v43, v42, v15

    .line 9470
    const/16 v36, 0x0

    .local v36, "speed":I
    :goto_71a
    move/from16 v0, v36

    if-ge v0, v9, :cond_757

    .line 9471
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_74a

    .line 9472
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v15

    new-instance v43, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v0, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v43, v42, v36

    .line 9474
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    aget-object v42, v42, v15

    aget-object v42, v42, v36

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9470
    :cond_74a
    add-int/lit8 v36, v36, 0x1

    goto :goto_71a

    .line 9478
    .end local v9    # "NSB":I
    .end local v36    # "speed":I
    :cond_74d
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v43, v42, v15

    .line 9460
    :cond_757
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6cb

    .line 9482
    .end local v15    # "cluster":I
    .end local v27    # "numClusters":I
    :cond_75b
    const/16 v42, 0x0

    check-cast v42, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9485
    :cond_765
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 9486
    .local v11, "NW":I
    const/16 v42, 0x64

    move/from16 v0, v42

    if-le v11, v0, :cond_78a

    .line 9487
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many wake locks "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9489
    :cond_78a
    const/16 v22, 0x0

    .local v22, "iw":I
    :goto_78c
    move/from16 v0, v22

    if-ge v0, v11, :cond_7a0

    .line 9490
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 9491
    .local v41, "wlName":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v41

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9489
    add-int/lit8 v22, v22, 0x1

    goto :goto_78c

    .line 9494
    .end local v41    # "wlName":Ljava/lang/String;
    :cond_7a0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9495
    .local v8, "NS":I
    const/16 v42, 0x64

    move/from16 v0, v42

    if-le v8, v0, :cond_7c5

    .line 9496
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many syncs "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9498
    :cond_7c5
    const/16 v20, 0x0

    .local v20, "is":I
    :goto_7c7
    move/from16 v0, v20

    if-ge v0, v8, :cond_7db

    .line 9499
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 9500
    .local v26, "name":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9498
    add-int/lit8 v20, v20, 0x1

    goto :goto_7c7

    .line 9503
    .end local v26    # "name":Ljava/lang/String;
    :cond_7db
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 9504
    .local v4, "NJ":I
    const/16 v42, 0x64

    move/from16 v0, v42

    if-le v4, v0, :cond_800

    .line 9505
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many job timers "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9507
    :cond_800
    const/16 v17, 0x0

    .local v17, "ij":I
    :goto_802
    move/from16 v0, v17

    if-ge v0, v4, :cond_816

    .line 9508
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 9509
    .restart local v26    # "name":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 9507
    add-int/lit8 v17, v17, 0x1

    goto :goto_802

    .line 9512
    .end local v26    # "name":Ljava/lang/String;
    :cond_816
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9513
    .local v6, "NP":I
    const/16 v42, 0x3e8

    move/from16 v0, v42

    if-le v6, v0, :cond_83b

    .line 9514
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many sensors "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9516
    :cond_83b
    const/16 v20, 0x0

    :goto_83d
    move/from16 v0, v20

    if-ge v0, v6, :cond_861

    .line 9517
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 9518
    .local v34, "seNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    if-eqz v42, :cond_85e

    .line 9519
    const/16 v42, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v34

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9516
    :cond_85e
    add-int/lit8 v20, v20, 0x1

    goto :goto_83d

    .line 9524
    .end local v34    # "seNumber":I
    :cond_861
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9525
    const/16 v42, 0x3e8

    move/from16 v0, v42

    if-le v6, v0, :cond_886

    .line 9526
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many processes "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9528
    :cond_886
    const/16 v19, 0x0

    .local v19, "ip":I
    :goto_888
    move/from16 v0, v19

    if-ge v0, v6, :cond_902

    .line 9529
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 9530
    .local v31, "procName":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v28

    .line 9531
    .local v28, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    move-wide/from16 v0, v42

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 9532
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    move-wide/from16 v0, v42

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 9533
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    move-wide/from16 v0, v42

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 9534
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    move/from16 v0, v42

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 9535
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumCrashes:I

    move/from16 v0, v42

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 9536
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedNumAnrs:I

    move/from16 v0, v42

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 9537
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    .line 9528
    add-int/lit8 v19, v19, 0x1

    goto :goto_888

    .line 9540
    .end local v28    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v31    # "procName":Ljava/lang/String;
    :cond_902
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9541
    const/16 v42, 0x2710

    move/from16 v0, v42

    if-le v6, v0, :cond_927

    .line 9542
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many packages "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9544
    :cond_927
    const/16 v19, 0x0

    :goto_929
    move/from16 v0, v19

    if-ge v0, v6, :cond_a03

    .line 9545
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 9546
    .local v30, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v28

    .line 9547
    .local v28, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 9548
    .local v12, "NWA":I
    const/16 v42, 0x3e8

    move/from16 v0, v42

    if-le v12, v0, :cond_95e

    .line 9549
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many wakeup alarms "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9551
    :cond_95e
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->clear()V

    .line 9552
    const/16 v23, 0x0

    .local v23, "iwa":I
    :goto_969
    move/from16 v0, v23

    if-ge v0, v12, :cond_993

    .line 9553
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 9554
    .local v37, "tag":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v0, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-direct {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 9555
    .local v14, "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9556
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9552
    add-int/lit8 v23, v23, 0x1

    goto :goto_969

    .line 9558
    .end local v14    # "c":Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .end local v37    # "tag":Ljava/lang/String;
    :cond_993
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 9559
    const/16 v42, 0x3e8

    move/from16 v0, v42

    if-le v8, v0, :cond_9b8

    .line 9560
    new-instance v42, Landroid/os/ParcelFormatException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "File corrupt: too many services "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 9562
    :cond_9b8
    const/16 v20, 0x0

    :goto_9ba
    move/from16 v0, v20

    if-ge v0, v8, :cond_9ff

    .line 9563
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 9564
    .local v35, "servName":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v33

    .line 9565
    .local v33, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStartTime:J

    move-wide/from16 v0, v42

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTime:J

    .line 9566
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedStarts:I

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 9567
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLoadedLaunches:I

    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 9562
    add-int/lit8 v20, v20, 0x1

    goto :goto_9ba

    .line 9544
    .end local v33    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v35    # "servName":Ljava/lang/String;
    :cond_9ff
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_929

    .line 9374
    .end local v12    # "NWA":I
    .end local v23    # "iwa":I
    .end local v28    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v30    # "pkgName":Ljava/lang/String;
    :cond_a03
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_48c
.end method

.method public recordDailyStatsIfNeededLocked(Z)V
    .registers 8
    .param p1, "settled"    # Z

    .prologue
    .line 6999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7000
    .local v0, "currentTime":J
    iget-wide v2, p0, mNextMaxDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    .line 7001
    invoke-virtual {p0}, recordDailyStatsLocked()V

    .line 7007
    :cond_d
    :goto_d
    return-void

    .line 7002
    :cond_e
    if-eqz p1, :cond_1a

    iget-wide v2, p0, mNextMinDailyDeadline:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1a

    .line 7003
    invoke-virtual {p0}, recordDailyStatsLocked()V

    goto :goto_d

    .line 7004
    :cond_1a
    iget-wide v2, p0, mDailyStartTime:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 7005
    invoke-virtual {p0}, recordDailyStatsLocked()V

    goto :goto_d
.end method

.method public recordDailyStatsLocked()V
    .registers 8

    .prologue
    .line 7010
    new-instance v1, Landroid/os/BatteryStats$DailyItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$DailyItem;-><init>()V

    .line 7011
    .local v1, "item":Landroid/os/BatteryStats$DailyItem;
    iget-wide v4, p0, mDailyStartTime:J

    iput-wide v4, v1, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    .line 7012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    .line 7013
    const/4 v0, 0x0

    .line 7014
    .local v0, "hasData":Z
    iget-object v4, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v4, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v4, :cond_26

    .line 7015
    const/4 v0, 0x1

    .line 7016
    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v5, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-object v6, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-direct {v4, v5, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v4, v1, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 7020
    :cond_26
    iget-object v4, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v4, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v4, :cond_3c

    .line 7021
    const/4 v0, 0x1

    .line 7022
    new-instance v4, Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v5, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget v5, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    iget-object v6, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    iget-object v6, v6, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-direct {v4, v5, v6}, Landroid/os/BatteryStats$LevelStepTracker;-><init>(I[J)V

    iput-object v4, v1, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    .line 7026
    :cond_3c
    iget-object v4, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_48

    .line 7027
    const/4 v0, 0x1

    .line 7028
    iget-object v4, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    iput-object v4, v1, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    .line 7029
    const/4 v4, 0x0

    iput-object v4, p0, mDailyPackageChanges:Ljava/util/ArrayList;

    .line 7031
    :cond_48
    iget-object v4, p0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v4}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7032
    iget-object v4, p0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v4}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 7033
    invoke-virtual {p0}, updateDailyDeadlineLocked()V

    .line 7035
    if-eqz v0, :cond_8f

    .line 7036
    iget-object v4, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7037
    :goto_5c
    iget-object v4, p0, mDailyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_6d

    .line 7038
    iget-object v4, p0, mDailyItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5c

    .line 7040
    :cond_6d
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7042
    .local v2, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_72
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 7043
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 7044
    invoke-direct {p0, v3}, writeDailyItemsLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 7045
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$1;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/os/BatteryStatsImpl$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8f} :catch_90

    .line 7068
    .end local v2    # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_8f
    :goto_8f
    return-void

    .line 7065
    .restart local v2    # "memStream":Ljava/io/ByteArrayOutputStream;
    :catch_90
    move-exception v4

    goto :goto_8f
.end method

.method public removeIsolatedUidLocked(I)V
    .registers 3
    .param p1, "isolatedUid"    # I

    .prologue
    .line 2561
    iget-object v0, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2562
    iget-object v0, p0, mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 2563
    return-void
.end method

.method public removeUidStatsLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 8951
    iget-object v0, p0, mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 8952
    iget-object v0, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8953
    return-void
.end method

.method public reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2986
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2987
    iget-object v1, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2988
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_14

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2989
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveCpuLocked(Ljava/lang/String;JJ)V

    .line 2991
    :cond_14
    return-void
.end method

.method public reportExcessiveWakeLocked(ILjava/lang/String;JJ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "overTime"    # J
    .param p5, "usedTime"    # J

    .prologue
    .line 2978
    invoke-virtual {p0, p1}, mapUid(I)I

    move-result p1

    .line 2979
    iget-object v1, p0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 2980
    .local v0, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    if-eqz v0, :cond_14

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 2981
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->reportExcessiveWakeLocked(Ljava/lang/String;JJ)V

    .line 2983
    :cond_14
    return-void
.end method

.method public resetAllStatsCmdLocked()V
    .registers 12

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    .line 7480
    invoke-direct {p0}, resetAllStatsLocked()V

    .line 7481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7482
    .local v2, "mSecUptime":J
    mul-long v6, v2, v8

    .line 7483
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7484
    .local v0, "mSecRealtime":J
    mul-long v4, v0, v8

    .line 7485
    .local v4, "realtime":J
    iget-object v8, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, mDischargeStartLevel:I

    .line 7486
    invoke-virtual {p0}, pullPendingStateUpdatesLocked()V

    .line 7487
    invoke-virtual {p0, v0, v1, v2, v3}, addHistoryRecordLocked(JJ)V

    .line 7488
    iget-object v8, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, mCurrentBatteryLevel:I

    iput v8, p0, mDischargePlugLevel:I

    iput v8, p0, mDischargeUnplugLevel:I

    iput v8, p0, mDischargeCurrentLevel:I

    .line 7490
    iget-object v8, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 7491
    iget-object v8, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v6, v7, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->reset(JJ)V

    .line 7492
    iget-object v8, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v8, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_4e

    .line 7493
    iget v8, p0, mScreenState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_52

    .line 7494
    iget-object v8, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, mDischargeScreenOnUnplugLevel:I

    .line 7495
    iput v10, p0, mDischargeScreenOffUnplugLevel:I

    .line 7500
    :goto_4a
    iput v10, p0, mDischargeAmountScreenOn:I

    .line 7501
    iput v10, p0, mDischargeAmountScreenOff:I

    .line 7503
    :cond_4e
    invoke-direct {p0, v0, v1, v2, v3}, initActiveHistoryEventsLocked(JJ)V

    .line 7504
    return-void

    .line 7497
    :cond_52
    iput v10, p0, mDischargeScreenOnUnplugLevel:I

    .line 7498
    iget-object v8, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v8, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v8, p0, mDischargeScreenOffUnplugLevel:I

    goto :goto_4a
.end method

.method public scheduleRemoveIsolatedUidLocked(II)V
    .registers 6
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 2548
    iget-object v1, p0, mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2549
    .local v0, "curUid":I
    if-ne v0, p2, :cond_12

    .line 2550
    iget-object v1, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    if-eqz v1, :cond_12

    .line 2551
    iget-object v1, p0, mExternalSync:Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    invoke-interface {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleCpuSyncDueToRemovedUid(I)V

    .line 2554
    :cond_12
    return-void
.end method

.method public setBatteryStateLocked(IIIIII)V
    .registers 24
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 8465
    if-nez p3, :cond_ed

    const/16 v16, 0x1

    .line 8466
    .local v16, "onBattery":Z
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 8467
    .local v6, "uptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8468
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, mHaveBatteryLevel:Z

    if-nez v3, :cond_fe

    .line 8469
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mHaveBatteryLevel:Z

    .line 8474
    move-object/from16 v0, p0

    iget-boolean v3, v0, mOnBattery:Z

    move/from16 v0, v16

    if-ne v0, v3, :cond_2d

    .line 8475
    if-eqz v16, :cond_f1

    .line 8476
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v10, -0x80001

    and-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8482
    :cond_2d
    :goto_2d
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v10, 0x2000000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 8483
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8484
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8485
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastChargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mMinDischargeStepLevel:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mMaxChargeStepLevel:I

    .line 8487
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastChargingStateLevel:I

    .line 8491
    :cond_68
    :goto_68
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v9, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8492
    .local v9, "oldStatus":I
    if-eqz v16, :cond_120

    .line 8493
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mDischargeCurrentLevel:I

    .line 8494
    move-object/from16 v0, p0

    iget-boolean v3, v0, mRecordingHistory:Z

    if-nez v3, :cond_87

    .line 8495
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mRecordingHistory:Z

    .line 8496
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, startRecordingHistory(JJZ)V

    .line 8504
    :cond_87
    :goto_87
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mCurrentBatteryLevel:I

    .line 8505
    move-object/from16 v0, p0

    iget v3, v0, mDischargePlugLevel:I

    if-gez v3, :cond_99

    .line 8506
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mDischargePlugLevel:I

    .line 8508
    :cond_99
    move-object/from16 v0, p0

    iget-boolean v3, v0, mOnBattery:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_139

    .line 8509
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8510
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8511
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 8512
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 8513
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 8514
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v3, p0

    move/from16 v8, v16

    move/from16 v10, p4

    .line 8515
    invoke-virtual/range {v3 .. v10}, setOnBatteryLocked(JJZII)V

    .line 8601
    :cond_e0
    :goto_e0
    if-nez v16, :cond_ec

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_ec

    .line 8604
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mRecordingHistory:Z

    .line 8606
    :cond_ec
    return-void

    .line 8465
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .end local v9    # "oldStatus":I
    .end local v16    # "onBattery":Z
    :cond_ed
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 8478
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "uptime":J
    .restart local v16    # "onBattery":Z
    :cond_f1
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x80000

    or-int/2addr v8, v10

    iput v8, v3, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto/16 :goto_2d

    .line 8488
    :cond_fe
    move-object/from16 v0, p0

    iget v3, v0, mCurrentBatteryLevel:I

    move/from16 v0, p4

    if-ne v3, v0, :cond_10e

    move-object/from16 v0, p0

    iget-boolean v3, v0, mOnBattery:Z

    move/from16 v0, v16

    if-eq v3, v0, :cond_68

    .line 8489
    :cond_10e
    const/16 v3, 0x64

    move/from16 v0, p4

    if-lt v0, v3, :cond_11e

    if-eqz v16, :cond_11e

    const/4 v3, 0x1

    :goto_117
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, recordDailyStatsIfNeededLocked(Z)V

    goto/16 :goto_68

    :cond_11e
    const/4 v3, 0x0

    goto :goto_117

    .line 8498
    .restart local v9    # "oldStatus":I
    :cond_120
    const/16 v3, 0x60

    move/from16 v0, p4

    if-ge v0, v3, :cond_87

    .line 8499
    move-object/from16 v0, p0

    iget-boolean v3, v0, mRecordingHistory:Z

    if-nez v3, :cond_87

    .line 8500
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mRecordingHistory:Z

    .line 8501
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, startRecordingHistory(JJZ)V

    goto/16 :goto_87

    .line 8517
    :cond_139
    const/4 v2, 0x0

    .line 8518
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v0, p4

    if-eq v3, v0, :cond_155

    .line 8519
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p4

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8520
    const/4 v2, 0x1

    .line 8524
    const-string v3, "battery-level"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, scheduleSyncExternalStatsLocked(Ljava/lang/String;)V

    .line 8526
    :cond_155
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move/from16 v0, p1

    if-eq v3, v0, :cond_169

    .line 8527
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p1

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 8528
    const/4 v2, 0x1

    .line 8530
    :cond_169
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move/from16 v0, p2

    if-eq v3, v0, :cond_17d

    .line 8531
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p2

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 8532
    const/4 v2, 0x1

    .line 8534
    :cond_17d
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move/from16 v0, p3

    if-eq v3, v0, :cond_191

    .line 8535
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p3

    int-to-byte v8, v0

    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 8536
    const/4 v2, 0x1

    .line 8538
    :cond_191
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, p5

    if-ge v0, v3, :cond_1a9

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-short v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    add-int/lit8 v3, v3, -0xa

    move/from16 v0, p5

    if-gt v0, v3, :cond_1b3

    .line 8540
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p5

    int-to-short v8, v0

    iput-short v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 8541
    const/4 v2, 0x1

    .line 8543
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, 0x14

    move/from16 v0, p6

    if-gt v0, v3, :cond_1cb

    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget-char v3, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    add-int/lit8 v3, v3, -0x14

    move/from16 v0, p6

    if-ge v0, v3, :cond_1d5

    .line 8545
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v3, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p6

    int-to-char v8, v0

    iput-char v8, v3, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 8546
    const/4 v2, 0x1

    .line 8548
    :cond_1d5
    move-object/from16 v0, p0

    iget v3, v0, mInitStepMode:I

    int-to-long v10, v3

    const/16 v3, 0x30

    shl-long/2addr v10, v3

    move-object/from16 v0, p0

    iget v3, v0, mModStepMode:I

    int-to-long v14, v3

    const/16 v3, 0x38

    shl-long/2addr v14, v3

    or-long/2addr v10, v14

    move/from16 v0, p4

    and-int/lit16 v3, v0, 0xff

    int-to-long v14, v3

    const/16 v3, 0x28

    shl-long/2addr v14, v3

    or-long v12, v10, v14

    .line 8551
    .local v12, "modeBits":J
    if-eqz v16, :cond_248

    .line 8552
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8553
    move-object/from16 v0, p0

    iget v3, v0, mLastDischargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_23f

    move-object/from16 v0, p0

    iget v3, v0, mMinDischargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_23f

    .line 8554
    move-object/from16 v0, p0

    iget-object v10, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8556
    move-object/from16 v0, p0

    iget-object v10, v0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, mLastDischargeStepLevel:I

    sub-int v11, v3, p4

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8558
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastDischargeStepLevel:I

    .line 8559
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mMinDischargeStepLevel:I

    .line 8560
    move-object/from16 v0, p0

    iget v3, v0, mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, mInitStepMode:I

    .line 8561
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mModStepMode:I

    .line 8597
    :cond_23f
    :goto_23f
    if-eqz v2, :cond_e0

    .line 8598
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, addHistoryRecordLocked(JJ)V

    goto/16 :goto_e0

    .line 8564
    :cond_248
    const/16 v3, 0x5a

    move/from16 v0, p4

    if-lt v0, v3, :cond_25c

    .line 8567
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8568
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastChargeStepLevel:I

    .line 8569
    :cond_25c
    move-object/from16 v0, p0

    iget-boolean v3, v0, mCharging:Z

    if-nez v3, :cond_2be

    .line 8570
    move-object/from16 v0, p0

    iget v3, v0, mLastChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_278

    .line 8573
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8574
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastChargeStepLevel:I

    .line 8586
    :cond_278
    :goto_278
    move-object/from16 v0, p0

    iget v3, v0, mLastChargeStepLevel:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_23f

    move-object/from16 v0, p0

    iget v3, v0, mMaxChargeStepLevel:I

    move/from16 v0, p4

    if-ge v3, v0, :cond_23f

    .line 8587
    move-object/from16 v0, p0

    iget-object v10, v0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8589
    move-object/from16 v0, p0

    iget-object v10, v0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p0

    iget v3, v0, mLastChargeStepLevel:I

    sub-int v11, p4, v3

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Landroid/os/BatteryStats$LevelStepTracker;->addLevelSteps(IJJ)V

    .line 8591
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastChargeStepLevel:I

    .line 8592
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mMaxChargeStepLevel:I

    .line 8593
    move-object/from16 v0, p0

    iget v3, v0, mCurStepMode:I

    move-object/from16 v0, p0

    iput v3, v0, mInitStepMode:I

    .line 8594
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, mModStepMode:I

    goto :goto_23f

    .line 8577
    :cond_2be
    move-object/from16 v0, p0

    iget v3, v0, mLastChargeStepLevel:I

    move/from16 v0, p4

    if-le v3, v0, :cond_278

    .line 8582
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, setChargingLocked(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 8583
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mLastChargeStepLevel:I

    goto :goto_278
.end method

.method public setCallback(Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .prologue
    .line 6972
    iput-object p1, p0, mCallback:Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 6973
    return-void
.end method

.method setChargingLocked(Z)Z
    .registers 5
    .param p1, "charging"    # Z

    .prologue
    .line 8283
    iget-boolean v0, p0, mCharging:Z

    if-eq v0, p1, :cond_24

    .line 8284
    iput-boolean p1, p0, mCharging:Z

    .line 8285
    if-eqz p1, :cond_19

    .line 8286
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 8290
    :goto_11
    iget-object v0, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendEmptyMessage(I)Z

    .line 8291
    const/4 v0, 0x1

    .line 8293
    :goto_18
    return v0

    .line 8288
    :cond_19
    iget-object v0, p0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_11

    .line 8293
    :cond_24
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setNoAutoReset(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2776
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoAutoReset is called. enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    iput-boolean p1, p0, mNoAutoReset:Z

    .line 2778
    return-void
.end method

.method setOnBatteryLocked(JJZII)V
    .registers 29
    .param p1, "mSecRealtime"    # J
    .param p3, "mSecUptime"    # J
    .param p5, "onBattery"    # Z
    .param p6, "oldStatus"    # I
    .param p7, "level"    # I

    .prologue
    .line 8298
    const/4 v4, 0x0

    .line 8299
    .local v4, "doWrite":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 8300
    .local v18, "m":Landroid/os/Message;
    if-eqz p5, :cond_198

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, v18

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 8301
    move-object/from16 v0, p0

    iget-object v5, v0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8303
    const-wide/16 v6, 0x3e8

    mul-long v14, p3, v6

    .line 8304
    .local v14, "uptime":J
    const-wide/16 v6, 0x3e8

    mul-long v16, p1, v6

    .line 8305
    .local v16, "realtime":J
    move-object/from16 v0, p0

    iget v5, v0, mScreenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19b

    const/16 v20, 0x1

    .line 8306
    .local v20, "screenOn":Z
    :goto_2b
    if-eqz p5, :cond_1ad

    .line 8311
    const/4 v10, 0x0

    .line 8312
    .local v10, "reset":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, mNoAutoReset:Z

    if-nez v5, :cond_e7

    const/4 v5, 0x5

    move/from16 v0, p6

    if-eq v0, v5, :cond_61

    const/16 v5, 0x5a

    move/from16 v0, p7

    if-ge v0, v5, :cond_61

    move-object/from16 v0, p0

    iget v5, v0, mDischargeCurrentLevel:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_4d

    const/16 v5, 0x50

    move/from16 v0, p7

    if-ge v0, v5, :cond_61

    :cond_4d
    invoke-virtual/range {p0 .. p0}, getHighDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_e7

    move-object/from16 v0, p0

    iget-object v5, v0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x40000

    if-lt v5, v6, :cond_e7

    .line 8317
    :cond_61
    const-string v5, "BatteryStatsImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting battery stats: level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dischargeLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, mDischargeCurrentLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lowAmount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, getLowDischargeAmountSinceCharge()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " highAmount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, getHighDischargeAmountSinceCharge()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8324
    invoke-virtual/range {p0 .. p0}, getLowDischargeAmountSinceCharge()I

    move-result v5

    const/16 v6, 0x14

    if-lt v5, v6, :cond_d5

    .line 8325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 8326
    .local v19, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 8327
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8349
    .end local v19    # "parcel":Landroid/os/Parcel;
    :cond_d5
    const/4 v4, 0x1

    .line 8350
    invoke-direct/range {p0 .. p0}, resetAllStatsLocked()V

    .line 8351
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargeStartLevel:I

    .line 8352
    const/4 v10, 0x1

    .line 8353
    move-object/from16 v0, p0

    iget-object v5, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8355
    :cond_e7
    move-object/from16 v0, p0

    iget-boolean v5, v0, mCharging:Z

    if-eqz v5, :cond_f3

    .line 8356
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, setChargingLocked(Z)Z

    .line 8358
    :cond_f3
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mLastChargingStateLevel:I

    .line 8359
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, mOnBatteryInternal:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, mOnBattery:Z

    .line 8360
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mLastDischargeStepLevel:I

    .line 8361
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mMinDischargeStepLevel:I

    .line 8362
    move-object/from16 v0, p0

    iget-object v5, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8363
    move-object/from16 v0, p0

    iget-object v5, v0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->clearTime()V

    .line 8364
    move-object/from16 v0, p0

    iget v5, v0, mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, mInitStepMode:I

    .line 8365
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mModStepMode:I

    .line 8366
    invoke-virtual/range {p0 .. p0}, pullPendingStateUpdatesLocked()V

    .line 8367
    move-object/from16 v0, p0

    iget-object v5, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8368
    move-object/from16 v0, p0

    iget-object v5, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v7, -0x80001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8371
    if-eqz v10, :cond_151

    .line 8372
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, mRecordingHistory:Z

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 8373
    invoke-direct/range {v5 .. v10}, startRecordingHistory(JJZ)V

    .line 8375
    :cond_151
    invoke-virtual/range {p0 .. p4}, addHistoryRecordLocked(JJ)V

    .line 8376
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargeUnplugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargeCurrentLevel:I

    .line 8377
    if-eqz v20, :cond_19f

    .line 8378
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargeScreenOnUnplugLevel:I

    .line 8379
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mDischargeScreenOffUnplugLevel:I

    .line 8384
    :goto_16d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mDischargeAmountScreenOn:I

    .line 8385
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mDischargeAmountScreenOff:I

    .line 8386
    const/4 v12, 0x1

    if-nez v20, :cond_1ab

    const/4 v13, 0x1

    :goto_17b
    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, updateTimeBasesLocked(ZZJJ)V

    .line 8409
    .end local v10    # "reset":Z
    :goto_180
    if-nez v4, :cond_18e

    move-object/from16 v0, p0

    iget-wide v6, v0, mLastWriteTime:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long v5, v6, p1

    if-gez v5, :cond_197

    .line 8410
    :cond_18e
    move-object/from16 v0, p0

    iget-object v5, v0, mFile:Lcom/android/internal/util/JournaledFile;

    if-eqz v5, :cond_197

    .line 8411
    invoke-virtual/range {p0 .. p0}, writeAsyncLocked()V

    .line 8414
    :cond_197
    return-void

    .line 8300
    .end local v14    # "uptime":J
    .end local v16    # "realtime":J
    .end local v20    # "screenOn":Z
    :cond_198
    const/4 v5, 0x0

    goto/16 :goto_d

    .line 8305
    .restart local v14    # "uptime":J
    .restart local v16    # "realtime":J
    :cond_19b
    const/16 v20, 0x0

    goto/16 :goto_2b

    .line 8381
    .restart local v10    # "reset":Z
    .restart local v20    # "screenOn":Z
    :cond_19f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mDischargeScreenOnUnplugLevel:I

    .line 8382
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargeScreenOffUnplugLevel:I

    goto :goto_16d

    .line 8386
    :cond_1ab
    const/4 v13, 0x0

    goto :goto_17b

    .line 8388
    .end local v10    # "reset":Z
    :cond_1ad
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mLastChargingStateLevel:I

    .line 8389
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, mOnBatteryInternal:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, mOnBattery:Z

    .line 8390
    invoke-virtual/range {p0 .. p0}, pullPendingStateUpdatesLocked()V

    .line 8391
    move-object/from16 v0, p0

    iget-object v5, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    move/from16 v0, p7

    int-to-byte v6, v0

    iput-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 8392
    move-object/from16 v0, p0

    iget-object v5, v0, mHistoryCur:Landroid/os/BatteryStats$HistoryItem;

    iget v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 8395
    invoke-virtual/range {p0 .. p4}, addHistoryRecordLocked(JJ)V

    .line 8396
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargePlugLevel:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mDischargeCurrentLevel:I

    .line 8397
    move-object/from16 v0, p0

    iget v5, v0, mDischargeUnplugLevel:I

    move/from16 v0, p7

    if-ge v0, v5, :cond_20a

    .line 8398
    move-object/from16 v0, p0

    iget v5, v0, mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, mLowDischargeAmountSinceCharge:I

    .line 8399
    move-object/from16 v0, p0

    iget v5, v0, mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p0

    iget v6, v0, mDischargeUnplugLevel:I

    sub-int v6, v6, p7

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, mHighDischargeAmountSinceCharge:I

    .line 8401
    :cond_20a
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, updateDischargeScreenLevelsLocked(ZZ)V

    .line 8402
    const/4 v12, 0x0

    if-nez v20, :cond_23e

    const/4 v13, 0x1

    :goto_217
    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, updateTimeBasesLocked(ZZJJ)V

    .line 8403
    move-object/from16 v0, p0

    iget-object v5, v0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-virtual {v5}, Landroid/os/BatteryStats$LevelStepTracker;->init()V

    .line 8404
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mLastChargeStepLevel:I

    .line 8405
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mMaxChargeStepLevel:I

    .line 8406
    move-object/from16 v0, p0

    iget v5, v0, mCurStepMode:I

    move-object/from16 v0, p0

    iput v5, v0, mInitStepMode:I

    .line 8407
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mModStepMode:I

    goto/16 :goto_180

    .line 8402
    :cond_23e
    const/4 v13, 0x0

    goto :goto_217
.end method

.method public setPowerProfile(Lcom/android/internal/os/PowerProfile;)V
    .registers 8
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 6953
    monitor-enter p0

    .line 6954
    :try_start_1
    iput-object p1, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 6959
    iget-object v4, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    .line 6960
    .local v2, "numClusters":I
    new-array v4, v2, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v4, p0, mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 6961
    const/4 v0, 0x0

    .line 6962
    .local v0, "firstCpuOfCluster":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_2a

    .line 6963
    iget-object v4, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    .line 6964
    .local v3, "numSpeedSteps":I
    iget-object v4, p0, mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v5, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v5, v0, v3}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v5, v4, v1

    .line 6966
    iget-object v4, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 6962
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 6968
    .end local v3    # "numSpeedSteps":I
    :cond_2a
    monitor-exit p0

    .line 6969
    return-void

    .line 6968
    .end local v0    # "firstCpuOfCluster":I
    .end local v1    # "i":I
    .end local v2    # "numClusters":I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public setRadioScanningTimeout(J)V
    .registers 4
    .param p1, "timeout"    # J

    .prologue
    .line 6976
    iget-object v0, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 6977
    iget-object v0, p0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setTimeout(J)V

    .line 6979
    :cond_9
    return-void
.end method

.method public setRecordAllHistoryLocked(Z)V
    .registers 15
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2737
    iput-boolean p1, p0, mRecordAllHistory:Z

    .line 2738
    if-nez p1, :cond_56

    .line 2740
    iget-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2741
    iget-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->removeEvents(I)V

    .line 2744
    iget-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2746
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_9b

    .line 2747
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2748
    .local v2, "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2749
    .local v4, "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2750
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2751
    .local v12, "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3d
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_2a

    .line 2752
    const/16 v6, 0x4001

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2751
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    .line 2759
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_56
    iget-object v1, p0, mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2761
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-eqz v0, :cond_9b

    .line 2762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2763
    .restart local v2    # "mSecRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2764
    .restart local v4    # "mSecUptime":J
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_6e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2765
    .restart local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    .line 2766
    .restart local v12    # "uids":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_81
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_6e

    .line 2767
    const v6, 0x8001

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 2766
    add-int/lit8 v11, v11, 0x1

    goto :goto_81

    .line 2773
    .end local v2    # "mSecRealtime":J
    .end local v4    # "mSecUptime":J
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "j":I
    .end local v12    # "uids":Landroid/util/SparseIntArray;
    :cond_9b
    return-void
.end method

.method public shutdownLocked()V
    .registers 5

    .prologue
    .line 8986
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, recordShutdownLocked(JJ)V

    .line 8987
    invoke-virtual {p0}, writeSyncLocked()V

    .line 8988
    const/4 v0, 0x1

    iput-boolean v0, p0, mShuttingDown:Z

    .line 8989
    return-void
.end method

.method public startAddingCpuLocked()Z
    .registers 3

    .prologue
    .line 2936
    iget-object v0, p0, mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 2937
    iget-boolean v0, p0, mOnBatteryInternal:Z

    return v0
.end method

.method public startIteratingHistoryLocked()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7367
    iget-object v6, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    if-gtz v6, :cond_b

    .line 7383
    :goto_a
    return v4

    .line 7370
    :cond_b
    iget-object v6, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7371
    iput-boolean v4, p0, mReadOverflow:Z

    .line 7372
    iput-boolean v5, p0, mIteratingHistory:Z

    .line 7373
    iget-object v6, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, mReadHistoryStrings:[Ljava/lang/String;

    .line 7374
    iget-object v6, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, mReadHistoryUids:[I

    .line 7375
    iput v4, p0, mReadHistoryChars:I

    .line 7376
    iget-object v4, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7377
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$HistoryTag;

    .line 7378
    .local v3, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7379
    .local v2, "idx":I
    iget-object v4, p0, mReadHistoryStrings:[Ljava/lang/String;

    iget-object v6, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    aput-object v6, v4, v2

    .line 7380
    iget-object v4, p0, mReadHistoryUids:[I

    iget v6, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    aput v6, v4, v2

    .line 7381
    iget v4, p0, mReadHistoryChars:I

    iget-object v6, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    iput v4, p0, mReadHistoryChars:I

    goto :goto_34

    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "idx":I
    .end local v3    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_6a
    move v4, v5

    .line 7383
    goto :goto_a
.end method

.method public startIteratingOldHistoryLocked()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7305
    iget-object v2, p0, mHistory:Landroid/os/BatteryStats$HistoryItem;

    iput-object v2, p0, mHistoryIterator:Landroid/os/BatteryStats$HistoryItem;

    if-nez v2, :cond_9

    .line 7312
    :goto_8
    return v0

    .line 7308
    :cond_9
    iget-object v2, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7309
    iget-object v2, p0, mHistoryReadTmp:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    .line 7310
    iput-boolean v0, p0, mReadOverflow:Z

    .line 7311
    iput-boolean v1, p0, mIteratingHistory:Z

    move v0, v1

    .line 7312
    goto :goto_8
.end method

.method stopAllPhoneSignalStrengthTimersLocked(I)V
    .registers 6
    .param p1, "except"    # I

    .prologue
    .line 3339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3340
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v2, v3, :cond_20

    .line 3341
    if-ne v2, p1, :cond_e

    .line 3340
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3344
    :cond_e
    :goto_e
    iget-object v3, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3345
    iget-object v3, p0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_e

    .line 3348
    :cond_20
    return-void
.end method

.method stopAllWifiSignalStrengthTimersLocked(I)V
    .registers 6
    .param p1, "except"    # I

    .prologue
    .line 3890
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3891
    .local v0, "elapsedRealtime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1f

    .line 3892
    if-ne v2, p1, :cond_d

    .line 3891
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3895
    :cond_d
    :goto_d
    iget-object v3, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3896
    iget-object v3, p0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    goto :goto_d

    .line 3899
    :cond_1f
    return-void
.end method

.method public updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .prologue
    const/4 v3, 0x1

    .line 7990
    if-eqz p1, :cond_50

    iget-boolean v2, p0, mOnBatteryInternal:Z

    if-eqz v2, :cond_50

    .line 7991
    iput-boolean v3, p0, mHasBluetoothEnergyReporting:Z

    .line 7992
    iget-object v2, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7994
    iget-object v2, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7996
    iget-object v2, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8000
    iget-object v2, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "bluetooth.controller.voltage"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v0, v2, v4

    .line 8002
    .local v0, "opVolt":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_50

    .line 8004
    iget-object v2, p0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8008
    .end local v0    # "opVolt":D
    :cond_50
    return-void
.end method

.method public updateCpuTimeLocked()V
    .registers 25

    .prologue
    .line 8077
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 8280
    :cond_8
    return-void

    .line 8089
    :cond_9
    const/16 v18, 0x32

    .line 8092
    .local v18, "wakelockWeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v5, v0, [[J

    .line 8093
    .local v5, "clusterSpeeds":[[J
    const/4 v4, 0x0

    .local v4, "cluster":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_3b

    .line 8094
    move-object/from16 v0, p0

    iget-object v0, v0, mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/KernelCpuSpeedReader;->readDelta()[J

    move-result-object v19

    aput-object v19, v5, v4

    .line 8093
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 8097
    :cond_3b
    const/4 v9, 0x0

    .line 8101
    .local v9, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v0, v0, mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 8102
    .local v8, "numPartialTimers":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v19

    if-eqz v19, :cond_86

    .line 8103
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_53
    if-ge v6, v8, :cond_86

    .line 8104
    move-object/from16 v0, p0

    iget-object v0, v0, mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8105
    .local v15, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v19, v0

    if-eqz v19, :cond_83

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_83

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_83

    .line 8111
    add-int/lit8 v9, v9, 0x1

    .line 8103
    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 8116
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_86
    move v10, v9

    .line 8117
    .local v10, "numWakelocksF":I
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTempTotalCpuUserTimeUs:J

    .line 8118
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTempTotalCpuSystemTimeUs:J

    .line 8123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 8124
    .local v12, "startTimeMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOnBatteryInternal:Z

    move/from16 v19, v0

    if-nez v19, :cond_198

    const/16 v19, 0x0

    :goto_ab
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    .line 8199
    move-object/from16 v0, p0

    iget-boolean v0, v0, mOnBatteryInternal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_216

    if-lez v9, :cond_216

    .line 8201
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTempTotalCpuUserTimeUs:J

    .line 8202
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x32

    mul-long v20, v20, v22

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTempTotalCpuSystemTimeUs:J

    .line 8205
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_e5
    if-ge v6, v8, :cond_1a3

    .line 8206
    move-object/from16 v0, p0

    iget-object v0, v0, mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8210
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    move/from16 v19, v0

    if-eqz v19, :cond_194

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    if-eqz v19, :cond_194

    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    move/from16 v19, v0

    const/16 v20, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_194

    .line 8211
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 8212
    .local v17, "userTimeUs":I
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v14, v0

    .line 8224
    .local v14, "systemTimeUs":I
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8225
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    int-to-long v0, v14

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8227
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object/from16 v19, v0

    const-string v20, "*wakelock*"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v11

    .line 8228
    .local v11, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    div-int/lit16 v0, v14, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 8230
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTempTotalCpuUserTimeUs:J

    .line 8231
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mTempTotalCpuSystemTimeUs:J

    .line 8232
    add-int/lit8 v9, v9, -0x1

    .line 8205
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v14    # "systemTimeUs":I
    .end local v17    # "userTimeUs":I
    :cond_194
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e5

    .line 8124
    .end local v6    # "i":I
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_198
    new-instance v19, Lcom/android/internal/os/BatteryStatsImpl$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v5}, Lcom/android/internal/os/BatteryStatsImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I[[J)V

    goto/16 :goto_ab

    .line 8236
    .restart local v6    # "i":I
    :cond_1a3
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gtz v19, :cond_1bb

    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_216

    .line 8247
    :cond_1bb
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v16

    .line 8248
    .local v16, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8249
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8251
    const-string v19, "*lost*"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v11

    .line 8252
    .restart local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuUserTimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mTempTotalCpuSystemTimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 8259
    .end local v6    # "i":I
    .end local v11    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v16    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/util/ArrayUtils;->referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v19

    if-eqz v19, :cond_244

    .line 8261
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_229
    if-ge v6, v8, :cond_8

    .line 8262
    move-object/from16 v0, p0

    iget-object v0, v0, mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8261
    add-int/lit8 v6, v6, 0x1

    goto :goto_229

    .line 8267
    .end local v6    # "i":I
    :cond_244
    move-object/from16 v0, p0

    iget-object v0, v0, mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 8268
    .local v7, "numLastPartialTimers":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_24f
    if-ge v6, v7, :cond_26a

    .line 8269
    move-object/from16 v0, p0

    iget-object v0, v0, mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8268
    add-int/lit8 v6, v6, 0x1

    goto :goto_24f

    .line 8271
    :cond_26a
    move-object/from16 v0, p0

    iget-object v0, v0, mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 8274
    const/4 v6, 0x0

    :goto_274
    if-ge v6, v8, :cond_8

    .line 8275
    move-object/from16 v0, p0

    iget-object v0, v0, mPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 8276
    .restart local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mInList:Z

    .line 8277
    move-object/from16 v0, p0

    iget-object v0, v0, mLastPartialTimers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8274
    add-int/lit8 v6, v6, 0x1

    goto :goto_274
.end method

.method public updateDailyDeadlineLocked()V
    .registers 8

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 6983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mDailyStartTime:J

    .line 6984
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6985
    .local v0, "calDeadline":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6988
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 6989
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6990
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6991
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6992
    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 6993
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, mNextMinDailyDeadline:J

    .line 6994
    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 6995
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, mNextMaxDailyDeadline:J

    .line 6996
    return-void
.end method

.method updateDischargeScreenLevelsLocked(ZZ)V
    .registers 7
    .param p1, "oldScreenOn"    # Z
    .param p2, "newScreenOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 7614
    if-eqz p1, :cond_1e

    .line 7615
    iget v1, p0, mDischargeScreenOnUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 7616
    .local v0, "diff":I
    if-lez v0, :cond_15

    .line 7617
    iget v1, p0, mDischargeAmountScreenOn:I

    add-int/2addr v1, v0

    iput v1, p0, mDischargeAmountScreenOn:I

    .line 7618
    iget v1, p0, mDischargeAmountScreenOnSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, mDischargeAmountScreenOnSinceCharge:I

    .line 7627
    :cond_15
    :goto_15
    if-eqz p2, :cond_31

    .line 7628
    iget v1, p0, mDischargeCurrentLevel:I

    iput v1, p0, mDischargeScreenOnUnplugLevel:I

    .line 7629
    iput v3, p0, mDischargeScreenOffUnplugLevel:I

    .line 7634
    :goto_1d
    return-void

    .line 7621
    .end local v0    # "diff":I
    :cond_1e
    iget v1, p0, mDischargeScreenOffUnplugLevel:I

    iget v2, p0, mDischargeCurrentLevel:I

    sub-int v0, v1, v2

    .line 7622
    .restart local v0    # "diff":I
    if-lez v0, :cond_15

    .line 7623
    iget v1, p0, mDischargeAmountScreenOff:I

    add-int/2addr v1, v0

    iput v1, p0, mDischargeAmountScreenOff:I

    .line 7624
    iget v1, p0, mDischargeAmountScreenOffSinceCharge:I

    add-int/2addr v1, v0

    iput v1, p0, mDischargeAmountScreenOffSinceCharge:I

    goto :goto_15

    .line 7631
    :cond_31
    iput v3, p0, mDischargeScreenOnUnplugLevel:I

    .line 7632
    iget v1, p0, mDischargeCurrentLevel:I

    iput v1, p0, mDischargeScreenOffUnplugLevel:I

    goto :goto_1d
.end method

.method public updateKernelWakelocksLocked()V
    .registers 15

    .prologue
    .line 8014
    iget-object v10, p0, mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v11, p0, mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    invoke-virtual {v10, v11}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v9

    .line 8016
    .local v9, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    if-nez v9, :cond_12

    .line 8018
    const-string v10, "BatteryStatsImpl"

    const-string v11, "Couldn\'t get kernel wake lock stats"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8062
    :cond_11
    :goto_11
    return-void

    .line 8023
    :cond_12
    const/4 v7, 0x0

    .line 8024
    .local v7, "seenNonZeroTime":Z
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8025
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8026
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 8028
    .local v4, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget-object v10, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8029
    .local v3, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-nez v3, :cond_4a

    .line 8030
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v11, 0x1

    invoke-direct {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V

    .line 8032
    .restart local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    iget-object v10, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8034
    :cond_4a
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    .line 8035
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    .line 8036
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v3, v10}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setUpdateVersion(I)V

    .line 8038
    iget v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v10, v11, :cond_1b

    .line 8039
    iget-wide v10, v4, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_6a

    const/4 v10, 0x1

    :goto_68
    or-int/2addr v7, v10

    goto :goto_1b

    :cond_6a
    const/4 v10, 0x0

    goto :goto_68

    .line 8042
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    .end local v4    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_6c
    const/4 v6, 0x0

    .line 8043
    .local v6, "numWakelocksSetStale":I
    invoke-virtual {v9}, Lcom/android/internal/os/KernelWakelockStats;->size()I

    move-result v10

    iget-object v11, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eq v10, v11, :cond_a3

    .line 8045
    iget-object v10, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_83
    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8046
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 8047
    .local v8, "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->getUpdateVersion()I

    move-result v10

    iget v11, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    if-eq v10, v11, :cond_83

    .line 8048
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    .line 8049
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 8054
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v8    # "st":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_a3
    if-nez v7, :cond_ac

    .line 8055
    const-string v10, "BatteryStatsImpl"

    const-string v11, "All kernel wakelocks had time of zero"

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8058
    :cond_ac
    iget-object v10, p0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-ne v6, v10, :cond_11

    .line 8059
    const-string v10, "BatteryStatsImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "All kernel wakelocks were set stale. new version="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method

.method public updateMobileRadioStateLocked(J)V
    .registers 26
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7914
    const/4 v12, 0x0

    .line 7916
    .local v12, "delta":Landroid/net/NetworkStats;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileIfaces:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 7917
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, mMobileNetworkStats:[Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_22

    move-result-object v12

    .line 7924
    :cond_19
    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-boolean v3, v0, mOnBatteryInternal:Z

    if-nez v3, :cond_2b

    .line 7979
    :cond_21
    :goto_21
    return-void

    .line 7919
    :catch_22
    move-exception v13

    .line 7920
    .local v13, "e":Ljava/io/IOException;
    const-string v3, "BatteryStatsImpl"

    const-string v4, "Failed to get mobile network stats"

    invoke-static {v3, v4, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 7928
    .end local v13    # "e":Ljava/io/IOException;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v16

    .line 7930
    .local v16, "radioTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7931
    invoke-virtual {v12}, Landroid/net/NetworkStats;->getTotalPackets()J

    move-result-wide v20

    .line 7933
    .local v20, "totalPackets":J
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v18

    .line 7934
    .local v18, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_49
    move/from16 v0, v18

    if-ge v15, v0, :cond_ce

    .line 7935
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v12, v15, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7937
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_65

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_68

    .line 7934
    :cond_65
    :goto_65
    add-int/lit8 v15, v15, 0x1

    goto :goto_49

    .line 7947
    :cond_68
    iget v3, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, mapUid(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .line 7948
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    const/4 v3, 0x0

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7950
    const/4 v3, 0x1

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7953
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_9d

    .line 7955
    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v8, v4, v6

    .line 7956
    .local v8, "appPackets":J
    mul-long v4, v16, v8

    div-long v10, v4, v20

    .line 7957
    .local v10, "appRadioTime":J
    invoke-virtual {v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteMobileRadioActiveTimeLocked(J)V

    .line 7960
    sub-long v16, v16, v10

    .line 7961
    sub-long v20, v20, v8

    .line 7964
    .end local v8    # "appPackets":J
    .end local v10    # "appRadioTime":J
    :cond_9d
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7966
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7968
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7970
    move-object/from16 v0, p0

    iget-object v3, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_65

    .line 7974
    .end local v2    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_ce
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_21

    .line 7976
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7977
    move-object/from16 v0, p0

    iget-object v3, v0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto/16 :goto_21
.end method

.method public updateTimeBasesLocked(ZZJJ)V
    .registers 14
    .param p1, "unplugged"    # Z
    .param p2, "screenOff"    # Z
    .param p3, "uptime"    # J
    .param p5, "realtime"    # J

    .prologue
    .line 2525
    iget-object v0, p0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2527
    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    const/4 v1, 0x1

    .line 2528
    .local v1, "unpluggedScreenOff":Z
    :goto_d
    iget-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eq v1, v0, :cond_22

    .line 2529
    invoke-virtual {p0}, updateKernelWakelocksLocked()V

    .line 2534
    invoke-virtual {p0}, updateCpuTimeLocked()V

    .line 2535
    iget-object v0, p0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    .line 2537
    :cond_22
    return-void

    .line 2527
    .end local v1    # "unpluggedScreenOff":Z
    :cond_23
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .registers 60
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    .prologue
    .line 7695
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 7696
    .local v12, "elapsedRealtimeMs":J
    const/4 v10, 0x0

    .line 7698
    .local v10, "delta":Landroid/net/NetworkStats;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, mWifiIfaces:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 7699
    move-object/from16 v0, p0

    iget-object v5, v0, mWifiIfaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, mWifiNetworkStats:[Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, getNetworkStatsDeltaLocked([Ljava/lang/String;[Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_24

    move-result-object v10

    .line 7706
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v5, v0, mOnBatteryInternal:Z

    if-nez v5, :cond_2d

    .line 7904
    :cond_23
    :goto_23
    return-void

    .line 7701
    :catch_24
    move-exception v11

    .line 7702
    .local v11, "e":Ljava/io/IOException;
    const-string v5, "BatteryStatsImpl"

    const-string v6, "Failed to get wifi network stats"

    invoke-static {v5, v6, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 7710
    .end local v11    # "e":Ljava/io/IOException;
    :cond_2d
    new-instance v30, Landroid/util/SparseLongArray;

    invoke-direct/range {v30 .. v30}, Landroid/util/SparseLongArray;-><init>()V

    .line 7711
    .local v30, "rxPackets":Landroid/util/SparseLongArray;
    new-instance v50, Landroid/util/SparseLongArray;

    invoke-direct/range {v50 .. v50}, Landroid/util/SparseLongArray;-><init>()V

    .line 7712
    .local v50, "txPackets":Landroid/util/SparseLongArray;
    const-wide/16 v46, 0x0

    .line 7713
    .local v46, "totalTxPackets":J
    const-wide/16 v40, 0x0

    .line 7714
    .local v40, "totalRxPackets":J
    if-eqz v10, :cond_ce

    .line 7715
    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v31

    .line 7716
    .local v31, "size":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_42
    move/from16 v0, v31

    if-ge v15, v0, :cond_ce

    .line 7717
    move-object/from16 v0, p0

    iget-object v5, v0, mTmpNetworkStatsEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v10, v15, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 7725
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5e

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_61

    .line 7716
    :cond_5e
    :goto_5e
    add-int/lit8 v15, v15, 0x1

    goto :goto_42

    .line 7729
    :cond_61
    iget v5, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, mapUid(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v4

    .line 7730
    .local v4, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    const/4 v5, 0x2

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7732
    const/4 v5, 0x3

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteNetworkActivityLocked(IJJ)V

    .line 7734
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v5

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 7735
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v5

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 7739
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long v40, v40, v6

    .line 7740
    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long v46, v46, v6

    .line 7742
    move-object/from16 v0, p0

    iget-object v5, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7744
    move-object/from16 v0, p0

    iget-object v5, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7746
    move-object/from16 v0, p0

    iget-object v5, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7748
    move-object/from16 v0, p0

    iget-object v5, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_5e

    .line 7753
    .end local v4    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "i":I
    .end local v31    # "size":I
    :cond_ce
    if-eqz p1, :cond_23

    .line 7754
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, mHasWifiEnergyReporting:Z

    .line 7757
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v52

    .line 7758
    .local v52, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v32

    .line 7759
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v16

    .line 7760
    .local v16, "idleTimeMs":J
    add-long v6, v52, v32

    add-long v44, v6, v16

    .line 7762
    .local v44, "totalTimeMs":J
    move-wide/from16 v18, v32

    .line 7763
    .local v18, "leftOverRxTimeMs":J
    move-wide/from16 v20, v52

    .line 7773
    .local v20, "leftOverTxTimeMs":J
    const-wide/16 v48, 0x0

    .line 7774
    .local v48, "totalWifiLockTimeMs":J
    const-wide/16 v42, 0x0

    .line 7778
    .local v42, "totalScanTimeMs":J
    move-object/from16 v0, p0

    iget-object v5, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v54

    .line 7779
    .local v54, "uidStatsSize":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_f6
    move/from16 v0, v54

    if-ge v15, v0, :cond_127

    .line 7780
    move-object/from16 v0, p0

    iget-object v5, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7783
    .local v51, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long v42, v42, v6

    .line 7787
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long v48, v48, v6

    .line 7779
    add-int/lit8 v15, v15, 0x1

    goto :goto_f6

    .line 7801
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_127
    const/4 v15, 0x0

    :goto_128
    move/from16 v0, v54

    if-ge v15, v0, :cond_1a5

    .line 7802
    move-object/from16 v0, p0

    iget-object v5, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 7804
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v36, v6, v8

    .line 7806
    .local v36, "scanTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    cmp-long v5, v36, v6

    if-lez v5, :cond_17a

    .line 7808
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7810
    move-wide/from16 v34, v36

    .line 7811
    .local v34, "scanRxTimeSinceMarkMs":J
    move-wide/from16 v38, v36

    .line 7820
    .local v38, "scanTxTimeSinceMarkMs":J
    cmp-long v5, v42, v32

    if-lez v5, :cond_15e

    .line 7821
    mul-long v6, v32, v34

    div-long v34, v6, v42

    .line 7824
    :cond_15e
    cmp-long v5, v42, v52

    if-lez v5, :cond_166

    .line 7825
    mul-long v6, v52, v38

    div-long v38, v6, v42

    .line 7834
    :cond_166
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-wide/from16 v1, v34

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7835
    const/4 v5, 0x2

    move-object/from16 v0, v51

    move-wide/from16 v1, v38

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7836
    sub-long v18, v18, v34

    .line 7837
    sub-long v20, v20, v38

    .line 7842
    .end local v34    # "scanRxTimeSinceMarkMs":J
    .end local v38    # "scanTxTimeSinceMarkMs":J
    :cond_17a
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v56, v6, v8

    .line 7844
    .local v56, "wifiLockTimeSinceMarkMs":J
    const-wide/16 v6, 0x0

    cmp-long v5, v56, v6

    if-lez v5, :cond_1a2

    .line 7846
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v12, v13}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 7848
    mul-long v6, v56, v16

    div-long v22, v6, v48

    .line 7854
    .local v22, "myIdleTimeMs":J
    const/4 v5, 0x0

    move-object/from16 v0, v51

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7801
    .end local v22    # "myIdleTimeMs":J
    :cond_1a2
    add-int/lit8 v15, v15, 0x1

    goto :goto_128

    .line 7865
    .end local v36    # "scanTimeSinceMarkMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v56    # "wifiLockTimeSinceMarkMs":J
    :cond_1a5
    const/4 v15, 0x0

    :goto_1a6
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_1cd

    .line 7866
    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v51

    .line 7867
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    mul-long v6, v6, v20

    div-long v26, v6, v46

    .line 7871
    .local v26, "myTxTimeMs":J
    const/4 v5, 0x2

    move-object/from16 v0, v51

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7865
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a6

    .line 7876
    .end local v26    # "myTxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_1cd
    const/4 v15, 0x0

    :goto_1ce
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v15, v5, :cond_1f5

    .line 7877
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v51

    .line 7878
    .restart local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    mul-long v6, v6, v18

    div-long v24, v6, v40

    .line 7882
    .local v24, "myRxTimeMs":J
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteWifiControllerActivityLocked(IJ)V

    .line 7876
    add-int/lit8 v15, v15, 0x1

    goto :goto_1ce

    .line 7888
    .end local v24    # "myRxTimeMs":J
    .end local v51    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v5, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7890
    move-object/from16 v0, p0

    iget-object v5, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7892
    move-object/from16 v0, p0

    iget-object v5, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 7896
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v6, "wifi.controller.voltage"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v28, v6, v8

    .line 7898
    .local v28, "opVolt":D
    const-wide/16 v6, 0x0

    cmpl-double v5, v28, v6

    if-eqz v5, :cond_23

    .line 7900
    move-object/from16 v0, p0

    iget-object v5, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v6

    long-to-double v6, v6

    div-double v6, v6, v28

    double-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto/16 :goto_23
.end method

.method public writeAsyncLocked()V
    .registers 2

    .prologue
    .line 8995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, writeLocked(Z)V

    .line 8996
    return-void
.end method

.method writeHistory(Landroid/os/Parcel;ZZ)V
    .registers 13
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclData"    # Z
    .param p3, "andOldHistory"    # Z

    .prologue
    const/4 v8, 0x0

    .line 9207
    iget-wide v4, p0, mHistoryBaseTime:J

    iget-wide v6, p0, mLastHistoryElapsedRealtime:J

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9208
    if-nez p2, :cond_12

    .line 9209
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9210
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9228
    :cond_11
    :goto_11
    return-void

    .line 9213
    :cond_12
    iget-object v3, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9214
    iget-object v3, p0, mHistoryTagPool:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9215
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 9216
    .local v2, "tag":Landroid/os/BatteryStats$HistoryTag;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9217
    iget-object v3, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9218
    iget v3, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 9220
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/BatteryStats$HistoryTag;Ljava/lang/Integer;>;"
    .end local v2    # "tag":Landroid/os/BatteryStats$HistoryTag;
    :cond_4f
    iget-object v3, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9223
    iget-object v3, p0, mHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, p0, mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {p1, v3, v8, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9225
    if-eqz p3, :cond_11

    .line 9226
    invoke-virtual {p0, p1}, writeOldHistory(Landroid/os/Parcel;)V

    goto :goto_11
.end method

.method public writeHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 30
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 1868
    if-eqz p3, :cond_a

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v21, v0

    if-eqz v21, :cond_20

    .line 1869
    :cond_a
    const v21, 0x7fffd

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1987
    :goto_1f
    return-void

    .line 1874
    :cond_20
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v24, v0

    sub-long v8, v22, v24

    .line 1875
    .local v8, "deltaTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v14

    .line 1876
    .local v14, "lastBatteryLevelInt":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v15

    .line 1879
    .local v15, "lastStateInt":I
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-ltz v21, :cond_4b

    const-wide/32 v22, 0x7fffffff

    cmp-long v21, v8, v22

    if-lez v21, :cond_1ec

    .line 1880
    :cond_4b
    const v10, 0x7ffff

    .line 1886
    .local v10, "deltaTimeToken":I
    :goto_4e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v21, v0

    const/high16 v22, -0x1000000

    and-int v21, v21, v22

    or-int v11, v10, v21

    .line 1887
    .local v11, "firstToken":I
    move-object/from16 v0, p0

    iget-byte v0, v0, mLastHistoryStepLevel:B

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1fb

    const/4 v12, 0x1

    .line 1889
    .local v12, "includeStepDetails":I
    :goto_6d
    if-nez v12, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    if-nez v21, :cond_1fe

    :cond_77
    const/4 v7, 0x1

    .line 1891
    .local v7, "computeStepDetails":Z
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, buildBatteryLevelInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v21

    or-int v4, v21, v12

    .line 1892
    .local v4, "batteryLevelInt":I
    if-eq v4, v14, :cond_201

    const/4 v5, 0x1

    .line 1893
    .local v5, "batteryLevelIntChanged":Z
    :goto_85
    if-eqz v5, :cond_8b

    .line 1894
    const/high16 v21, 0x80000

    or-int v11, v11, v21

    .line 1896
    :cond_8b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, buildStateInt(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v17

    .line 1897
    .local v17, "stateInt":I
    move/from16 v0, v17

    if-eq v0, v15, :cond_204

    const/16 v18, 0x1

    .line 1898
    .local v18, "stateIntChanged":Z
    :goto_99
    if-eqz v18, :cond_9f

    .line 1899
    const/high16 v21, 0x100000

    or-int v11, v11, v21

    .line 1901
    :cond_9f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_208

    const/16 v16, 0x1

    .line 1902
    .local v16, "state2IntChanged":Z
    :goto_b3
    if-eqz v16, :cond_b9

    .line 1903
    const/high16 v21, 0x200000

    or-int v11, v11, v21

    .line 1905
    :cond_b9
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-nez v21, :cond_c9

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_cd

    .line 1906
    :cond_c9
    const/high16 v21, 0x400000

    or-int v11, v11, v21

    .line 1908
    :cond_cd
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    if-eqz v21, :cond_d9

    .line 1909
    const/high16 v21, 0x800000

    or-int v11, v11, v21

    .line 1911
    :cond_d9
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    const v21, 0x7fffe

    move/from16 v0, v21

    if-lt v10, v0, :cond_f6

    .line 1916
    const v21, 0x7fffe

    move/from16 v0, v21

    if-ne v10, v0, :cond_20c

    .line 1918
    long-to-int v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    :cond_f6
    :goto_f6
    if-eqz v5, :cond_fd

    .line 1925
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    :cond_fd
    if-eqz v18, :cond_106

    .line 1933
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    :cond_106
    if-eqz v16, :cond_115

    .line 1942
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1946
    :cond_115
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-nez v21, :cond_125

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15c

    .line 1949
    :cond_125
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_213

    .line 1950
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v19

    .line 1956
    .local v19, "wakeLockIndex":I
    :goto_13b
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    if-eqz v21, :cond_218

    .line 1957
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v20

    .line 1963
    .local v20, "wakeReasonIndex":I
    :goto_151
    shl-int/lit8 v21, v20, 0x10

    or-int v21, v21, v19

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_15c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    if-eqz v21, :cond_186

    .line 1966
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, writeHistoryTag(Landroid/os/BatteryStats$HistoryTag;)I

    move-result v13

    .line 1967
    .local v13, "index":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move/from16 v21, v0

    const v22, 0xffff

    and-int v21, v21, v22

    shl-int/lit8 v22, v13, 0x10

    or-int v6, v21, v22

    .line 1968
    .local v6, "codeAndIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    .end local v6    # "codeAndIndex":I
    .end local v13    # "index":I
    :cond_186
    if-eqz v7, :cond_21d

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, computeHistoryStepDetails(Landroid/os/BatteryStats$HistoryStepDetails;Landroid/os/BatteryStats$HistoryStepDetails;)V

    .line 1975
    if-eqz v12, :cond_1ac

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 1978
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, mCurHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1983
    :goto_1c4
    move-object/from16 v0, p0

    iget-byte v0, v0, mLastHistoryStepLevel:B

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1de

    .line 1984
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mLastHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 1986
    :cond_1de
    move-object/from16 v0, p2

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, mLastHistoryStepLevel:B

    goto/16 :goto_1f

    .line 1881
    .end local v4    # "batteryLevelInt":I
    .end local v5    # "batteryLevelIntChanged":Z
    .end local v7    # "computeStepDetails":Z
    .end local v10    # "deltaTimeToken":I
    .end local v11    # "firstToken":I
    .end local v12    # "includeStepDetails":I
    .end local v16    # "state2IntChanged":Z
    .end local v17    # "stateInt":I
    .end local v18    # "stateIntChanged":Z
    :cond_1ec
    const-wide/32 v22, 0x7fffd

    cmp-long v21, v8, v22

    if-ltz v21, :cond_1f8

    .line 1882
    const v10, 0x7fffe

    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_4e

    .line 1884
    .end local v10    # "deltaTimeToken":I
    :cond_1f8
    long-to-int v10, v8

    .restart local v10    # "deltaTimeToken":I
    goto/16 :goto_4e

    .line 1887
    .restart local v11    # "firstToken":I
    :cond_1fb
    const/4 v12, 0x0

    goto/16 :goto_6d

    .line 1889
    .restart local v12    # "includeStepDetails":I
    :cond_1fe
    const/4 v7, 0x0

    goto/16 :goto_78

    .line 1892
    .restart local v4    # "batteryLevelInt":I
    .restart local v7    # "computeStepDetails":Z
    :cond_201
    const/4 v5, 0x0

    goto/16 :goto_85

    .line 1897
    .restart local v5    # "batteryLevelIntChanged":Z
    .restart local v17    # "stateInt":I
    :cond_204
    const/16 v18, 0x0

    goto/16 :goto_99

    .line 1901
    .restart local v18    # "stateIntChanged":Z
    :cond_208
    const/16 v16, 0x0

    goto/16 :goto_b3

    .line 1921
    .restart local v16    # "state2IntChanged":Z
    :cond_20c
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_f6

    .line 1954
    :cond_213
    const v19, 0xffff

    .restart local v19    # "wakeLockIndex":I
    goto/16 :goto_13b

    .line 1961
    :cond_218
    const v20, 0xffff

    .restart local v20    # "wakeReasonIndex":I
    goto/16 :goto_151

    .line 1981
    .end local v19    # "wakeLockIndex":I
    .end local v20    # "wakeReasonIndex":I
    :cond_21d
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    goto :goto_1c4
.end method

.method writeLocked(Z)V
    .registers 6
    .param p1, "sync"    # Z

    .prologue
    .line 9003
    iget-object v1, p0, mFile:Lcom/android/internal/util/JournaledFile;

    if-nez v1, :cond_d

    .line 9004
    const-string v1, "BatteryStats"

    const-string/jumbo v2, "writeLocked: no file associated with this instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9030
    :cond_c
    :goto_c
    return-void

    .line 9008
    :cond_d
    iget-boolean v1, p0, mShuttingDown:Z

    if-nez v1, :cond_c

    .line 9012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9013
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 9014
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mLastWriteTime:J

    .line 9016
    iget-object v1, p0, mPendingWrite:Landroid/os/Parcel;

    if-eqz v1, :cond_28

    .line 9017
    iget-object v1, p0, mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9019
    :cond_28
    iput-object v0, p0, mPendingWrite:Landroid/os/Parcel;

    .line 9021
    if-eqz p1, :cond_30

    .line 9022
    invoke-virtual {p0}, commitPendingDataToDisk()V

    goto :goto_c

    .line 9024
    :cond_30
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$4;

    invoke-direct {v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$4;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method writeOldHistory(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 9232
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;Z)V
    .registers 57
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclHistory"    # Z

    .prologue
    .line 9580
    invoke-virtual/range {p0 .. p0}, pullPendingStateUpdatesLocked()V

    .line 9584
    invoke-virtual/range {p0 .. p0}, getStartClockTime()J

    move-result-wide v42

    .line 9586
    .local v42, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v52, 0x3e8

    mul-long v6, v4, v52

    .line 9587
    .local v6, "NOW_SYS":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v52, 0x3e8

    mul-long v8, v4, v52

    .line 9589
    .local v8, "NOWREAL_SYS":J
    const/16 v4, 0x84

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9591
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, writeHistory(Landroid/os/Parcel;ZZ)V

    .line 9593
    move-object/from16 v0, p0

    iget v4, v0, mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9594
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, computeUptime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9595
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4}, computeRealtime(JI)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9596
    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9597
    move-object/from16 v0, p0

    iget-object v4, v0, mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9598
    move-object/from16 v0, p0

    iget-object v4, v0, mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9599
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 9600
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeSummaryToParcel(Landroid/os/Parcel;JJ)V

    .line 9601
    move-object/from16 v0, p0

    iget v4, v0, mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9602
    move-object/from16 v0, p0

    iget v4, v0, mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9603
    move-object/from16 v0, p0

    iget v4, v0, mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9604
    move-object/from16 v0, p0

    iget v4, v0, mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9605
    invoke-virtual/range {p0 .. p0}, getLowDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9606
    invoke-virtual/range {p0 .. p0}, getHighDischargeAmountSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9607
    invoke-virtual/range {p0 .. p0}, getDischargeAmountScreenOnSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9608
    invoke-virtual/range {p0 .. p0}, getDischargeAmountScreenOffSinceCharge()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9609
    move-object/from16 v0, p0

    iget-object v4, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9610
    move-object/from16 v0, p0

    iget-object v4, v0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9611
    move-object/from16 v0, p0

    iget-object v4, v0, mDailyDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9612
    move-object/from16 v0, p0

    iget-object v4, v0, mDailyChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 9613
    move-object/from16 v0, p0

    iget-object v4, v0, mDailyPackageChanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_128

    .line 9614
    move-object/from16 v0, p0

    iget-object v4, v0, mDailyPackageChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 9615
    .local v12, "NPKG":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 9616
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_f5
    move/from16 v0, v24

    if-ge v0, v12, :cond_12e

    .line 9617
    move-object/from16 v0, p0

    iget-object v4, v0, mDailyPackageChanges:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/BatteryStats$PackageChange;

    .line 9618
    .local v38, "pc":Landroid/os/BatteryStats$PackageChange;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9619
    move-object/from16 v0, v38

    iget-boolean v4, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v4, :cond_126

    const/4 v4, 0x1

    :goto_115
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9620
    move-object/from16 v0, v38

    iget v4, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9616
    add-int/lit8 v24, v24, 0x1

    goto :goto_f5

    .line 9619
    :cond_126
    const/4 v4, 0x0

    goto :goto_115

    .line 9623
    .end local v12    # "NPKG":I
    .end local v24    # "i":I
    .end local v38    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_128
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9625
    :cond_12e
    move-object/from16 v0, p0

    iget-wide v4, v0, mDailyStartTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9626
    move-object/from16 v0, p0

    iget-wide v4, v0, mNextMinDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9627
    move-object/from16 v0, p0

    iget-wide v4, v0, mNextMaxDailyDeadline:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9629
    move-object/from16 v0, p0

    iget-object v4, v0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9630
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_154
    const/4 v4, 0x5

    move/from16 v0, v24

    if-ge v0, v4, :cond_167

    .line 9631
    move-object/from16 v0, p0

    iget-object v4, v0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9630
    add-int/lit8 v24, v24, 0x1

    goto :goto_154

    .line 9633
    :cond_167
    move-object/from16 v0, p0

    iget-object v4, v0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9634
    move-object/from16 v0, p0

    iget-object v4, v0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9635
    move-object/from16 v0, p0

    iget-object v4, v0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9636
    move-object/from16 v0, p0

    iget-object v4, v0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9637
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9638
    const/16 v24, 0x0

    :goto_196
    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_1aa

    .line 9639
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9638
    add-int/lit8 v24, v24, 0x1

    goto :goto_196

    .line 9641
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9642
    const/16 v24, 0x0

    :goto_1b5
    const/16 v4, 0x11

    move/from16 v0, v24

    if-ge v0, v4, :cond_1c9

    .line 9643
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9642
    add-int/lit8 v24, v24, 0x1

    goto :goto_1b5

    .line 9645
    :cond_1c9
    const/16 v24, 0x0

    :goto_1cb
    const/4 v4, 0x4

    move/from16 v0, v24

    if-ge v0, v4, :cond_1e9

    .line 9646
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9647
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9645
    add-int/lit8 v24, v24, 0x1

    goto :goto_1cb

    .line 9649
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9650
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9651
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9652
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9653
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9654
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9655
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9656
    const/16 v24, 0x0

    :goto_22a
    const/16 v4, 0x8

    move/from16 v0, v24

    if-ge v0, v4, :cond_23e

    .line 9657
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9656
    add-int/lit8 v24, v24, 0x1

    goto :goto_22a

    .line 9659
    :cond_23e
    const/16 v24, 0x0

    :goto_240
    const/16 v4, 0xd

    move/from16 v0, v24

    if-ge v0, v4, :cond_254

    .line 9660
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9659
    add-int/lit8 v24, v24, 0x1

    goto :goto_240

    .line 9662
    :cond_254
    const/16 v24, 0x0

    :goto_256
    const/4 v4, 0x5

    move/from16 v0, v24

    if-ge v0, v4, :cond_269

    .line 9663
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9662
    add-int/lit8 v24, v24, 0x1

    goto :goto_256

    .line 9665
    :cond_269
    const/16 v24, 0x0

    :goto_26b
    const/4 v4, 0x4

    move/from16 v0, v24

    if-ge v0, v4, :cond_27e

    .line 9666
    move-object/from16 v0, p0

    iget-object v4, v0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9665
    add-int/lit8 v24, v24, 0x1

    goto :goto_26b

    .line 9668
    :cond_27e
    const/16 v24, 0x0

    :goto_280
    const/4 v4, 0x4

    move/from16 v0, v24

    if-ge v0, v4, :cond_293

    .line 9669
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9668
    add-int/lit8 v24, v24, 0x1

    goto :goto_280

    .line 9671
    :cond_293
    move-object/from16 v0, p0

    iget v4, v0, mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9672
    move-object/from16 v0, p0

    iget-object v4, v0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9673
    move-object/from16 v0, p0

    iget-object v4, v0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9675
    move-object/from16 v0, p0

    iget-object v4, v0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9676
    move-object/from16 v0, p0

    iget-object v4, v0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_2c7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2fb

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 9677
    .local v22, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/os/BatteryStatsImpl$Timer;

    .line 9678
    .local v35, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    if-eqz v35, :cond_2f4

    .line 9679
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9680
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9681
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_2c7

    .line 9683
    :cond_2f4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c7

    .line 9687
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v35    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$Timer;
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v4, v0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9688
    move-object/from16 v0, p0

    iget-object v4, v0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_314
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_348

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 9689
    .restart local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 9690
    .local v45, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v45, :cond_341

    .line 9691
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9692
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9693
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_314

    .line 9695
    :cond_341
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_314

    .line 9699
    .end local v22    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v45    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_348
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 9700
    .local v15, "NU":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 9701
    const/16 v31, 0x0

    .end local v25    # "i$":Ljava/util/Iterator;
    .local v31, "iu":I
    :goto_357
    move/from16 v0, v31

    if-ge v0, v15, :cond_88c

    .line 9702
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9703
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 9705
    .local v48, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_3d8

    .line 9706
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9707
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9711
    :goto_38b
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_3df

    .line 9712
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9713
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9717
    :goto_3a0
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_3e6

    .line 9718
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9719
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9723
    :goto_3b5
    const/16 v24, 0x0

    :goto_3b7
    const/4 v4, 0x5

    move/from16 v0, v24

    if-ge v0, v4, :cond_3f4

    .line 9724
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    if-eqz v4, :cond_3ed

    .line 9725
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9726
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9723
    :goto_3d5
    add-int/lit8 v24, v24, 0x1

    goto :goto_3b7

    .line 9709
    :cond_3d8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38b

    .line 9715
    :cond_3df
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a0

    .line 9721
    :cond_3e6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b5

    .line 9728
    :cond_3ed
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d5

    .line 9731
    :cond_3f4
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_495

    .line 9732
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9733
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9737
    :goto_409
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_49d

    .line 9738
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9739
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9743
    :goto_41e
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_4a5

    .line 9744
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9745
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9749
    :goto_433
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_4ac

    .line 9750
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9751
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9755
    :goto_448
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_4b3

    .line 9756
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9757
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9761
    :goto_45d
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_4ba

    .line 9762
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9763
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9767
    :goto_472
    const/16 v24, 0x0

    :goto_474
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_4c8

    .line 9768
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    if-eqz v4, :cond_4c1

    .line 9769
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9770
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9767
    :goto_492
    add-int/lit8 v24, v24, 0x1

    goto :goto_474

    .line 9735
    :cond_495
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_409

    .line 9741
    :cond_49d
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_41e

    .line 9747
    :cond_4a5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_433

    .line 9753
    :cond_4ac
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_448

    .line 9759
    :cond_4b3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45d

    .line 9765
    :cond_4ba
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_472

    .line 9772
    :cond_4c1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_492

    .line 9775
    :cond_4c8
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v4, :cond_570

    .line 9776
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9777
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9782
    :goto_4dd
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v4, :cond_578

    .line 9783
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9791
    :cond_4e9
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v4, :cond_593

    .line 9792
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9803
    :goto_4f5
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9804
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9805
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9807
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v4, :cond_5e0

    .line 9808
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9809
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9810
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v18, v0

    .local v18, "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    move/from16 v26, v25

    .end local v18    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .local v26, "i$":I
    :goto_535
    move/from16 v0, v26

    move/from16 v1, v36

    if-ge v0, v1, :cond_5e6

    aget-object v21, v18, v26

    .line 9811
    .local v21, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v21, :cond_5d4

    .line 9812
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9813
    move-object/from16 v0, v21

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9814
    move-object/from16 v19, v21

    .local v19, "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v37, v0

    .local v37, "len$":I
    const/16 v25, 0x0

    .end local v26    # "i$":I
    .restart local v25    # "i$":I
    :goto_556
    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_5da

    aget-object v20, v19, v25

    .line 9815
    .local v20, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v20, :cond_5cd

    .line 9816
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9817
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9814
    :goto_56d
    add-int/lit8 v25, v25, 0x1

    goto :goto_556

    .line 9779
    .end local v19    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v20    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v21    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v25    # "i$":I
    .end local v37    # "len$":I
    :cond_570
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4dd

    .line 9785
    :cond_578
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9786
    const/16 v24, 0x0

    :goto_580
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_4e9

    .line 9787
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9786
    add-int/lit8 v24, v24, 0x1

    goto :goto_580

    .line 9794
    :cond_593
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9795
    const/16 v24, 0x0

    :goto_59b
    const/4 v4, 0x4

    move/from16 v0, v24

    if-ge v0, v4, :cond_5b9

    .line 9796
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9797
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v24

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9795
    add-int/lit8 v24, v24, 0x1

    goto :goto_59b

    .line 9799
    :cond_5b9
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9800
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto/16 :goto_4f5

    .line 9819
    .restart local v19    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .restart local v20    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .restart local v21    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .restart local v25    # "i$":I
    .restart local v37    # "len$":I
    :cond_5cd
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_56d

    .line 9823
    .end local v19    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v20    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v25    # "i$":I
    .end local v37    # "len$":I
    .restart local v26    # "i$":I
    :cond_5d4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9810
    .end local v26    # "i$":I
    :cond_5da
    add-int/lit8 v25, v26, 0x1

    .restart local v25    # "i$":I
    move/from16 v26, v25

    .end local v25    # "i$":I
    .restart local v26    # "i$":I
    goto/16 :goto_535

    .line 9827
    .end local v21    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v26    # "i$":I
    :cond_5e0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9830
    :cond_5e6
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v49

    .line 9831
    .local v49, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v49 .. v49}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 9832
    .local v16, "NW":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9833
    const/16 v32, 0x0

    .local v32, "iw":I
    :goto_5fb
    move/from16 v0, v32

    move/from16 v1, v16

    if-ge v0, v1, :cond_68d

    .line 9834
    move-object/from16 v0, v49

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9835
    move-object/from16 v0, v49

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 9836
    .local v50, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_671

    .line 9837
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9838
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9842
    :goto_62f
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_678

    .line 9843
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9844
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9848
    :goto_644
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_67f

    .line 9849
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9850
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9854
    :goto_659
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_686

    .line 9855
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9856
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9833
    :goto_66e
    add-int/lit8 v32, v32, 0x1

    goto :goto_5fb

    .line 9840
    :cond_671
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62f

    .line 9846
    :cond_678
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_644

    .line 9852
    :cond_67f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_659

    .line 9858
    :cond_686
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66e

    .line 9862
    .end local v50    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_68d
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v44

    .line 9863
    .local v44, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 9864
    .local v13, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 9865
    const/16 v29, 0x0

    .local v29, "is":I
    :goto_6a0
    move/from16 v0, v29

    if-ge v0, v13, :cond_6c5

    .line 9866
    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9867
    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9865
    add-int/lit8 v29, v29, 0x1

    goto :goto_6a0

    .line 9870
    :cond_6c5
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v34

    .line 9871
    .local v34, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 9872
    .local v10, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 9873
    const/16 v27, 0x0

    .local v27, "ij":I
    :goto_6d8
    move/from16 v0, v27

    if-ge v0, v10, :cond_6fd

    .line 9874
    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9875
    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9873
    add-int/lit8 v27, v27, 0x1

    goto :goto_6d8

    .line 9878
    :cond_6fd
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 9879
    .local v14, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 9880
    const/16 v30, 0x0

    .local v30, "ise":I
    :goto_70c
    move/from16 v0, v30

    if-ge v0, v14, :cond_74a

    .line 9881
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9882
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 9883
    .local v40, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v4, :cond_743

    .line 9884
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9885
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 9880
    :goto_740
    add-int/lit8 v30, v30, 0x1

    goto :goto_70c

    .line 9887
    :cond_743
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_740

    .line 9891
    .end local v40    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_74a
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 9892
    .local v11, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 9893
    const/16 v28, 0x0

    .local v28, "ip":I
    :goto_759
    move/from16 v0, v28

    if-ge v0, v11, :cond_7ba

    .line 9894
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9895
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 9896
    .local v39, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9897
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9898
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 9899
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9900
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9901
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9902
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 9893
    add-int/lit8 v28, v28, 0x1

    goto :goto_759

    .line 9905
    .end local v39    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_7ba
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 9906
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 9907
    if-lez v11, :cond_888

    .line 9909
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_7d5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_888

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 9910
    .local v23, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9911
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 9912
    .local v39, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 9913
    .local v17, "NWA":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9914
    const/16 v33, 0x0

    .local v33, "iwa":I
    :goto_803
    move/from16 v0, v33

    move/from16 v1, v17

    if-ge v0, v1, :cond_82e

    .line 9915
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9916
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mWakeupAlarms:Landroid/util/ArrayMap;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 9914
    add-int/lit8 v33, v33, 0x1

    goto :goto_803

    .line 9918
    :cond_82e
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 9919
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 9920
    const/16 v29, 0x0

    :goto_83d
    move/from16 v0, v29

    if-ge v0, v13, :cond_7d5

    .line 9921
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9922
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 9923
    .local v41, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v46

    .line 9925
    .local v46, "time":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9926
    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9927
    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9920
    add-int/lit8 v29, v29, 0x1

    goto :goto_83d

    .line 9701
    .end local v17    # "NWA":I
    .end local v23    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v33    # "iwa":I
    .end local v39    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v41    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v46    # "time":J
    :cond_888
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_357

    .line 9932
    .end local v10    # "NJ":I
    .end local v11    # "NP":I
    .end local v13    # "NS":I
    .end local v14    # "NSE":I
    .end local v16    # "NW":I
    .end local v27    # "ij":I
    .end local v28    # "ip":I
    .end local v29    # "is":I
    .end local v30    # "ise":I
    .end local v32    # "iw":I
    .end local v34    # "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v44    # "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    .end local v48    # "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .end local v49    # "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    :cond_88c
    return-void
.end method

.method public writeSyncLocked()V
    .registers 2

    .prologue
    .line 8999
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, writeLocked(Z)V

    .line 9000
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 10087
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 10088
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;ZI)V
    .registers 30
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "inclUids"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 10097
    invoke-virtual/range {p0 .. p0}, pullPendingStateUpdatesLocked()V

    .line 10101
    invoke-virtual/range {p0 .. p0}, getStartClockTime()J

    move-result-wide v20

    .line 10103
    .local v20, "startClockTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v6, v4, v24

    .line 10104
    .local v6, "uSecUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v24, 0x3e8

    mul-long v8, v4, v24

    .line 10105
    .local v8, "uSecRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v10

    .line 10106
    .local v10, "batteryRealtime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v12

    .line 10108
    .local v12, "batteryScreenOffRealtime":J
    const v4, -0x458a8b8b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10110
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, writeHistory(Landroid/os/Parcel;ZZ)V

    .line 10112
    move-object/from16 v0, p0

    iget v4, v0, mStartCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10113
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 10114
    move-object/from16 v0, p0

    iget-object v4, v0, mStartPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10115
    move-object/from16 v0, p0

    iget-object v4, v0, mEndPlatformVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10116
    move-object/from16 v0, p0

    iget-wide v4, v0, mUptime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10117
    move-object/from16 v0, p0

    iget-wide v4, v0, mUptimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10118
    move-object/from16 v0, p0

    iget-wide v4, v0, mRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10119
    move-object/from16 v0, p0

    iget-wide v4, v0, mRealtimeStart:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10120
    move-object/from16 v0, p0

    iget-boolean v4, v0, mOnBattery:Z

    if-eqz v4, :cond_b7

    const/4 v4, 0x1

    :goto_85
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10121
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10122
    move-object/from16 v0, p0

    iget-object v4, v0, mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10124
    move-object/from16 v0, p0

    iget-object v4, v0, mScreenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10125
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a6
    const/4 v4, 0x5

    if-ge v15, v4, :cond_b9

    .line 10126
    move-object/from16 v0, p0

    iget-object v4, v0, mScreenBrightnessTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10125
    add-int/lit8 v15, v15, 0x1

    goto :goto_a6

    .line 10120
    .end local v15    # "i":I
    :cond_b7
    const/4 v4, 0x0

    goto :goto_85

    .line 10128
    .restart local v15    # "i":I
    :cond_b9
    move-object/from16 v0, p0

    iget-object v4, v0, mInteractiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10129
    move-object/from16 v0, p0

    iget-object v4, v0, mPowerSaveModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10130
    move-object/from16 v0, p0

    iget-object v4, v0, mDeviceIdleModeEnabledTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10131
    move-object/from16 v0, p0

    iget-object v4, v0, mDeviceIdlingTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10132
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10133
    const/4 v15, 0x0

    :goto_e7
    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v15, v4, :cond_f9

    .line 10134
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10133
    add-int/lit8 v15, v15, 0x1

    goto :goto_e7

    .line 10136
    :cond_f9
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneSignalScanningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10137
    const/4 v15, 0x0

    :goto_103
    const/16 v4, 0x11

    if-ge v15, v4, :cond_115

    .line 10138
    move-object/from16 v0, p0

    iget-object v4, v0, mPhoneDataConnectionsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10137
    add-int/lit8 v15, v15, 0x1

    goto :goto_103

    .line 10140
    :cond_115
    const/4 v15, 0x0

    :goto_116
    const/4 v4, 0x4

    if-ge v15, v4, :cond_132

    .line 10141
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10142
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10140
    add-int/lit8 v15, v15, 0x1

    goto :goto_116

    .line 10144
    :cond_132
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10145
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActivePerAppTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10146
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveAdjustedTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10147
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveUnknownTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10148
    move-object/from16 v0, p0

    iget-object v4, v0, mMobileRadioActiveUnknownCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10149
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10150
    move-object/from16 v0, p0

    iget-object v4, v0, mGlobalWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10151
    const/4 v15, 0x0

    :goto_172
    const/16 v4, 0x8

    if-ge v15, v4, :cond_184

    .line 10152
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10151
    add-int/lit8 v15, v15, 0x1

    goto :goto_172

    .line 10154
    :cond_184
    const/4 v15, 0x0

    :goto_185
    const/16 v4, 0xd

    if-ge v15, v4, :cond_197

    .line 10155
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiSupplStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10154
    add-int/lit8 v15, v15, 0x1

    goto :goto_185

    .line 10157
    :cond_197
    const/4 v15, 0x0

    :goto_198
    const/4 v4, 0x5

    if-ge v15, v4, :cond_1a9

    .line 10158
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiSignalStrengthsTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10157
    add-int/lit8 v15, v15, 0x1

    goto :goto_198

    .line 10160
    :cond_1a9
    const/4 v15, 0x0

    :goto_1aa
    const/4 v4, 0x4

    if-ge v15, v4, :cond_1bb

    .line 10161
    move-object/from16 v0, p0

    iget-object v4, v0, mBluetoothActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10160
    add-int/lit8 v15, v15, 0x1

    goto :goto_1aa

    .line 10163
    :cond_1bb
    const/4 v15, 0x0

    :goto_1bc
    const/4 v4, 0x4

    if-ge v15, v4, :cond_1cd

    .line 10164
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10163
    add-int/lit8 v15, v15, 0x1

    goto :goto_1bc

    .line 10166
    :cond_1cd
    move-object/from16 v0, p0

    iget-boolean v4, v0, mHasWifiEnergyReporting:Z

    if-eqz v4, :cond_2cf

    const/4 v4, 0x1

    :goto_1d4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10167
    move-object/from16 v0, p0

    iget-boolean v4, v0, mHasBluetoothEnergyReporting:Z

    if-eqz v4, :cond_2d2

    const/4 v4, 0x1

    :goto_1e0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10168
    move-object/from16 v0, p0

    iget v4, v0, mNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10169
    move-object/from16 v0, p0

    iget v4, v0, mLoadedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10170
    move-object/from16 v0, p0

    iget v4, v0, mUnpluggedNumConnectivityChange:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10171
    move-object/from16 v0, p0

    iget-object v4, v0, mFlashlightOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10172
    move-object/from16 v0, p0

    iget-object v4, v0, mCameraOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 10173
    move-object/from16 v0, p0

    iget v4, v0, mDischargeUnplugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10174
    move-object/from16 v0, p0

    iget v4, v0, mDischargePlugLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10175
    move-object/from16 v0, p0

    iget v4, v0, mDischargeCurrentLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10176
    move-object/from16 v0, p0

    iget v4, v0, mCurrentBatteryLevel:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10177
    move-object/from16 v0, p0

    iget v4, v0, mLowDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10178
    move-object/from16 v0, p0

    iget v4, v0, mHighDischargeAmountSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10179
    move-object/from16 v0, p0

    iget v4, v0, mDischargeAmountScreenOn:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10180
    move-object/from16 v0, p0

    iget v4, v0, mDischargeAmountScreenOnSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10181
    move-object/from16 v0, p0

    iget v4, v0, mDischargeAmountScreenOff:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10182
    move-object/from16 v0, p0

    iget v4, v0, mDischargeAmountScreenOffSinceCharge:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10183
    move-object/from16 v0, p0

    iget-object v4, v0, mDischargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 10184
    move-object/from16 v0, p0

    iget-object v4, v0, mChargeStepTracker:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LevelStepTracker;->writeToParcel(Landroid/os/Parcel;)V

    .line 10185
    move-object/from16 v0, p0

    iget-wide v4, v0, mLastWriteTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 10187
    if-eqz p2, :cond_329

    .line 10188
    move-object/from16 v0, p0

    iget-object v4, v0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10189
    move-object/from16 v0, p0

    iget-object v4, v0, mKernelWakelockStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2a2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2dc

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 10190
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 10191
    .local v17, "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v17, :cond_2d5

    .line 10192
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10193
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10194
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_2a2

    .line 10166
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_2cf
    const/4 v4, 0x0

    goto/16 :goto_1d4

    .line 10167
    :cond_2d2
    const/4 v4, 0x0

    goto/16 :goto_1e0

    .line 10196
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_2d5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a2

    .line 10199
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v17    # "kwlt":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v4, v0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10200
    move-object/from16 v0, p0

    iget-object v4, v0, mWakeupReasonStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2f5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 10201
    .restart local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;

    .line 10202
    .local v19, "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    if-eqz v19, :cond_322

    .line 10203
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10204
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10205
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_2f5

    .line 10207
    :cond_322
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f5

    .line 10211
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "timer":Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
    :cond_329
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10214
    :cond_32f
    if-eqz p2, :cond_366

    .line 10215
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 10216
    .local v18, "size":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10217
    const/4 v15, 0x0

    :goto_341
    move/from16 v0, v18

    if-ge v15, v0, :cond_36c

    .line 10218
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10219
    move-object/from16 v0, p0

    iget-object v4, v0, mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 10221
    .local v22, "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10217
    add-int/lit8 v15, v15, 0x1

    goto :goto_341

    .line 10224
    .end local v18    # "size":I
    .end local v22    # "uid":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    :cond_366
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10226
    :cond_36c
    return-void
.end method

.method public writeToParcelWithoutUids(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 10091
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, writeToParcelLocked(Landroid/os/Parcel;ZI)V

    .line 10092
    return-void
.end method
