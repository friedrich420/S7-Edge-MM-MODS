.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1

.field static final PROCESS_STATE_NONE:I = 0x3


# instance fields
.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .registers 9
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 4487
    iput-object p1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 4390
    const/4 v0, -0x1

    iput v0, p0, mWifiBatchedScanBinStarted:I

    .line 4405
    iput v4, p0, mProcessState:I

    .line 4420
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4426
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4437
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4438
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4439
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4445
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iput-object v0, p0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4452
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iput-object v0, p0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4461
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iput-object v0, p0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4470
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSensorStats:Landroid/util/SparseArray;

    .line 4475
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mProcessStats:Landroid/util/ArrayMap;

    .line 4480
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPackageStats:Landroid/util/ArrayMap;

    .line 4485
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mPids:Landroid/util/SparseArray;

    .line 4488
    iput p2, p0, mUid:I

    .line 4489
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4491
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4493
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4495
    new-array v0, v5, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4496
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4498
    new-array v0, v4, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4499
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 5

    .prologue
    .line 4654
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_15

    .line 4655
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0xf

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4658
    :cond_15
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 5

    .prologue
    .line 4726
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_15

    .line 4727
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x11

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4730
    :cond_15
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 5

    .prologue
    .line 4702
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_15

    .line 4703
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x10

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4706
    :cond_15
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 5

    .prologue
    .line 4750
    iget-object v0, p0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_12

    .line 4751
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0xa

    const/4 v2, 0x0

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4754
    :cond_12
    iget-object v0, p0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .registers 4

    .prologue
    .line 4786
    iget-object v0, p0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_11

    .line 4787
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/16 v1, 0x9

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 4789
    :cond_11
    iget-object v0, p0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 5

    .prologue
    .line 4678
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_15

    .line 4679
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x8

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4682
    :cond_15
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .prologue
    .line 4376
    invoke-virtual {p0}, getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .prologue
    .line 4862
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .prologue
    .line 6864
    iget-object v0, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .prologue
    .line 4376
    invoke-virtual {p0}, getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .prologue
    .line 4877
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 5032
    iget-object v0, p0, mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .prologue
    .line 4376
    invoke-virtual {p0}, getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .prologue
    .line 4872
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .prologue
    .line 4376
    invoke-virtual {p0}, getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .prologue
    .line 4882
    iget-object v0, p0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4812
    iget-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 4813
    const-wide/16 v0, 0x0

    .line 4815
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4513
    iget-object v0, p0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 5016
    iget-object v0, p0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_c

    iget-object v0, p0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getMobileRadioActiveTime(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 5010
    iget-object v0, p0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_b

    iget-object v0, p0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getNetworkActivityBytes(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4990
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 4992
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 4994
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
    .line 5000
    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_14

    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 5002
    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5004
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4528
    iget-object v0, p0, mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6687
    iget-object v1, p0, mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 6688
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_14

    .line 6689
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6690
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6693
    :cond_14
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6670
    iget-object v0, p0, mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 6674
    iget-object v1, p0, mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 6675
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_14

    .line 6676
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 6677
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6679
    :cond_14
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .registers 9
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 4899
    if-ltz p1, :cond_7

    const/4 v2, 0x3

    if-lt p1, v2, :cond_8

    .line 4903
    :cond_7
    :goto_7
    return-wide v0

    .line 4900
    :cond_8
    iget-object v2, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-eqz v2, :cond_7

    .line 4903
    iget-object v0, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_7
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4523
    iget-object v0, p0, mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6617
    iget-object v1, p0, mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6618
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_14

    .line 6619
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    .line 6620
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6623
    :cond_14
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4518
    iget-object v0, p0, mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 8
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .prologue
    .line 6741
    iget-object v3, p0, mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 6742
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_18

    .line 6743
    if-nez p2, :cond_e

    .line 6744
    const/4 v1, 0x0

    .line 6760
    :cond_d
    :goto_d
    return-object v1

    .line 6746
    :cond_e
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 6747
    .restart local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6749
    :cond_18
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6750
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_d

    .line 6753
    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 6754
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_34

    .line 6755
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6756
    .restart local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6758
    :cond_34
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v3, 0x3

    iget-object v4, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 6759
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_d
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .prologue
    .line 6701
    invoke-virtual {p0, p1}, getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 6702
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 6703
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_17

    .line 6704
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 6705
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6708
    :cond_17
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4508
    iget-object v0, p0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 5027
    iget-object v0, p0, mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .registers 8
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .prologue
    .line 5037
    iget-object v2, p0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v2, :cond_1f

    .line 5038
    if-ltz p1, :cond_1f

    iget-object v2, p0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v2

    if-ge p1, v2, :cond_1f

    .line 5039
    iget-object v2, p0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v1, v2, p1

    .line 5040
    .local v1, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_1f

    .line 5041
    if-ltz p2, :cond_1f

    array-length v2, v1

    if-ge p2, v2, :cond_1f

    .line 5042
    aget-object v0, v1, p2

    .line 5043
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_1f

    .line 5044
    invoke-virtual {v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 5050
    .end local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :goto_1e
    return-wide v2

    :cond_1f
    const-wide/16 v2, 0x0

    goto :goto_1e
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 4533
    iget v0, p0, mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4931
    iget-object v0, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_6

    .line 4932
    const/4 v0, 0x0

    .line 4934
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_5
.end method

.method public getUserCpuTimeUs(I)J
    .registers 4
    .param p1, "which"    # I

    .prologue
    .line 5022
    iget-object v0, p0, mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .prologue
    .line 4376
    invoke-virtual {p0}, getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .prologue
    .line 4908
    iget-object v0, p0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .registers 2

    .prologue
    .line 4376
    invoke-virtual {p0}, getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .registers 2

    .prologue
    .line 4867
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4503
    iget-object v0, p0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .registers 5
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 4845
    if-ltz p1, :cond_6

    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    .line 4849
    :cond_6
    :goto_6
    return v0

    .line 4846
    :cond_7
    iget-object v1, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_6

    .line 4849
    iget-object v0, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    goto :goto_6
.end method

.method public getWifiBatchedScanTime(IJI)J
    .registers 9
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 4836
    if-ltz p1, :cond_7

    const/4 v2, 0x5

    if-lt p1, v2, :cond_8

    .line 4840
    :cond_7
    :goto_7
    return-wide v0

    .line 4837
    :cond_8
    iget-object v2, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-eqz v2, :cond_7

    .line 4840
    iget-object v0, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_7
.end method

.method public getWifiControllerActivity(II)J
    .registers 5
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5055
    if-ltz p1, :cond_14

    const/4 v0, 0x4

    if-ge p1, v0, :cond_14

    iget-object v0, p0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    .line 5057
    iget-object v0, p0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5059
    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public getWifiMulticastTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4854
    iget-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 4855
    const-wide/16 v0, 0x0

    .line 4857
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getWifiRunningTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4804
    iget-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 4805
    const-wide/16 v0, 0x0

    .line 4807
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getWifiScanCount(I)I
    .registers 3
    .param p1, "which"    # I

    .prologue
    .line 4828
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_6

    .line 4829
    const/4 v0, 0x0

    .line 4831
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    goto :goto_5
.end method

.method public getWifiScanTime(JI)J
    .registers 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4820
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_7

    .line 4821
    const-wide/16 v0, 0x0

    .line 4823
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_6
.end method

.method public hasNetworkActivity()Z
    .registers 2

    .prologue
    .line 4985
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasUserActivity()Z
    .registers 2

    .prologue
    .line 4926
    iget-object v0, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method initNetworkActivityLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 5063
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5064
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v4, :cond_29

    .line 5066
    iget-object v1, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5067
    iget-object v1, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5065
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5069
    :cond_29
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5070
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5071
    return-void
.end method

.method initUserActivityLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 4956
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 4957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v4, :cond_18

    .line 4958
    iget-object v1, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 4957
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4960
    :cond_18
    return-void
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    .line 4886
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    .line 4895
    :cond_8
    :goto_8
    return-void

    .line 4888
    :cond_9
    if-nez p2, :cond_19

    .line 4889
    iget-object v0, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v4, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    goto :goto_8

    .line 4892
    :cond_19
    iget-object v6, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v6, p1

    goto :goto_8
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v2, 0xb

    .line 4938
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-lt p1, v0, :cond_8

    .line 4952
    :cond_7
    :goto_7
    return-void

    .line 4940
    :cond_8
    iget-object v0, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4941
    .local v3, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v3, :cond_20

    .line 4942
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4943
    .restart local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4945
    :cond_20
    if-nez p2, :cond_30

    .line 4946
    iget-object v0, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v4, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    goto :goto_7

    .line 4949
    :cond_30
    iget-object v6, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v6, p1

    goto :goto_7
.end method

.method public noteActivityPausedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4765
    iget-object v0, p0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4766
    iget-object v0, p0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4768
    :cond_9
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4760
    invoke-virtual {p0}, createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4761
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4666
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4667
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4669
    :cond_9
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4662
    invoke-virtual {p0}, createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4663
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4738
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4739
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4741
    :cond_9
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4734
    invoke-virtual {p0}, createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4735
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4714
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4715
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4717
    :cond_9
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4710
    invoke-virtual {p0}, createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4711
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4558
    iget-boolean v0, p0, mFullWifiLockOut:Z

    if-nez v0, :cond_20

    .line 4559
    const/4 v0, 0x1

    iput-boolean v0, p0, mFullWifiLockOut:Z

    .line 4560
    iget-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 4561
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x5

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4564
    :cond_1b
    iget-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4566
    :cond_20
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4570
    iget-boolean v0, p0, mFullWifiLockOut:Z

    if-eqz v0, :cond_c

    .line 4571
    const/4 v0, 0x0

    iput-boolean v0, p0, mFullWifiLockOut:Z

    .line 4572
    iget-object v0, p0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4574
    :cond_c
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .registers 8
    .param p1, "batteryUptime"    # J

    .prologue
    .line 4976
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_7

    .line 4977
    invoke-virtual {p0}, initNetworkActivityLocked()V

    .line 4979
    :cond_7
    iget-object v0, p0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4980
    iget-object v0, p0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4981
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .prologue
    .line 4963
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_7

    .line 4964
    invoke-virtual {p0}, initNetworkActivityLocked()V

    .line 4966
    :cond_7
    if-ltz p1, :cond_1b

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1b

    .line 4967
    iget-object v0, p0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4968
    iget-object v0, p0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4973
    :goto_1a
    return-void

    .line 4970
    :cond_1b
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown network activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public noteResetAudioLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4672
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4673
    iget-object v0, p0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4675
    :cond_9
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4744
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4745
    iget-object v0, p0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4747
    :cond_9
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4720
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4721
    iget-object v0, p0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4723
    :cond_9
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4696
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4697
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4699
    :cond_9
    return-void
.end method

.method public noteStartGps(J)V
    .registers 6
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 6850
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6851
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_c

    .line 6852
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6854
    :cond_c
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6778
    iget-object v1, p0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6779
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_d

    .line 6780
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6782
    :cond_d
    return-void
.end method

.method public noteStartSensor(IJ)V
    .registers 6
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6835
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6836
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_a

    .line 6837
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6839
    :cond_a
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6764
    iget-object v1, p0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6765
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_d

    .line 6766
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6768
    :cond_d
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 6792
    iget-object v2, p0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 6793
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_11

    .line 6794
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6796
    :cond_11
    if-ltz p1, :cond_23

    if-nez p3, :cond_23

    .line 6797
    invoke-virtual {p0, p1}, getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v0

    .line 6798
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_23

    .line 6799
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 6802
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_23
    return-void
.end method

.method public noteStopGps(J)V
    .registers 6
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 6857
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6858
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_c

    .line 6859
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6861
    :cond_c
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6785
    iget-object v1, p0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6786
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_d

    .line 6787
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6789
    :cond_d
    return-void
.end method

.method public noteStopSensor(IJ)V
    .registers 6
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6843
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6844
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_a

    .line 6845
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6847
    :cond_a
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6771
    iget-object v1, p0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6772
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_d

    .line 6773
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6775
    :cond_d
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 6805
    iget-object v2, p0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 6806
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_11

    .line 6807
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6809
    :cond_11
    if-ltz p1, :cond_39

    if-nez p3, :cond_39

    .line 6810
    iget-object v2, p0, mPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 6811
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_39

    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_39

    .line 6812
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 6813
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 6814
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 6818
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_39
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 4913
    iget-object v0, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_7

    .line 4914
    invoke-virtual {p0}, initUserActivityLocked()V

    .line 4916
    :cond_7
    if-ltz p1, :cond_14

    const/4 v0, 0x3

    if-ge p1, v0, :cond_14

    .line 4917
    iget-object v0, p0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 4922
    :goto_13
    return-void

    .line 4919
    :cond_14
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown user activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public noteVibratorOffLocked()V
    .registers 3

    .prologue
    .line 4797
    iget-object v0, p0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_b

    .line 4798
    iget-object v0, p0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4800
    :cond_b
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .registers 6
    .param p1, "durationMillis"    # J

    .prologue
    .line 4793
    invoke-virtual {p0}, createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 4794
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4690
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_9

    .line 4691
    iget-object v0, p0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4693
    :cond_9
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4686
    invoke-virtual {p0}, createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4687
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .registers 8
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 4598
    const/4 v0, 0x0

    .line 4599
    .local v0, "bin":I
    :goto_1
    const/16 v1, 0x8

    if-le p1, v1, :cond_d

    const/4 v1, 0x4

    if-ge v0, v1, :cond_d

    .line 4600
    shr-int/lit8 p1, p1, 0x3

    .line 4601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4604
    :cond_d
    iget v1, p0, mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_12

    .line 4615
    :goto_11
    return-void

    .line 4606
    :cond_12
    iget v1, p0, mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 4607
    iget-object v1, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, mWifiBatchedScanBinStarted:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4610
    :cond_20
    iput v0, p0, mWifiBatchedScanBinStarted:I

    .line 4611
    iget-object v1, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_2c

    .line 4612
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 4614
    :cond_2c
    iget-object v1, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_11
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .registers 6
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v2, -0x1

    .line 4619
    iget v0, p0, mWifiBatchedScanBinStarted:I

    if-eq v0, v2, :cond_10

    .line 4620
    iget-object v0, p0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, mWifiBatchedScanBinStarted:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4622
    iput v2, p0, mWifiBatchedScanBinStarted:I

    .line 4624
    :cond_10
    return-void
.end method

.method public noteWifiControllerActivityLocked(IJ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 4647
    iget-object v0, p0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-nez v0, :cond_13

    .line 4648
    iget-object v0, p0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 4650
    :cond_13
    iget-object v0, p0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4651
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4640
    iget-boolean v0, p0, mWifiMulticastEnabled:Z

    if-eqz v0, :cond_c

    .line 4641
    const/4 v0, 0x0

    iput-boolean v0, p0, mWifiMulticastEnabled:Z

    .line 4642
    iget-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4644
    :cond_c
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4628
    iget-boolean v0, p0, mWifiMulticastEnabled:Z

    if-nez v0, :cond_20

    .line 4629
    const/4 v0, 0x1

    iput-boolean v0, p0, mWifiMulticastEnabled:Z

    .line 4630
    iget-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 4631
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4634
    :cond_1b
    iget-object v0, p0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4636
    :cond_20
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4538
    iget-boolean v0, p0, mWifiRunning:Z

    if-nez v0, :cond_20

    .line 4539
    const/4 v0, 0x1

    iput-boolean v0, p0, mWifiRunning:Z

    .line 4540
    iget-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 4541
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x4

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4544
    :cond_1b
    iget-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4546
    :cond_20
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .registers 8
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4578
    iget-boolean v0, p0, mWifiScanStarted:Z

    if-nez v0, :cond_20

    .line 4579
    const/4 v0, 0x1

    iput-boolean v0, p0, mWifiScanStarted:Z

    .line 4580
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1b

    .line 4581
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v3, p0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4584
    :cond_1b
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4586
    :cond_20
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4590
    iget-boolean v0, p0, mWifiScanStarted:Z

    if-eqz v0, :cond_c

    .line 4591
    const/4 v0, 0x0

    iput-boolean v0, p0, mWifiScanStarted:Z

    .line 4592
    iget-object v0, p0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4594
    :cond_c
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .registers 4
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4550
    iget-boolean v0, p0, mWifiRunning:Z

    if-eqz v0, :cond_c

    .line 4551
    const/4 v0, 0x0

    iput-boolean v0, p0, mWifiRunning:Z

    .line 4552
    iget-object v0, p0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4554
    :cond_c
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 40
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 5535
    .local v24, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v4, v0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5536
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_c
    move/from16 v0, v24

    if-ge v13, v0, :cond_36

    .line 5537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 5538
    .local v34, "wakelockName":Ljava/lang/String;
    new-instance v33, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5539
    .local v33, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5540
    move-object/from16 v0, p0

    iget-object v4, v0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5536
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 5543
    .end local v33    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v34    # "wakelockName":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 5544
    .local v23, "numSyncs":I
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5545
    const/4 v13, 0x0

    :goto_42
    move/from16 v0, v23

    if-ge v13, v0, :cond_6e

    .line 5546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 5547
    .local v32, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 5548
    move-object/from16 v0, p0

    iget-object v0, v0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v35, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5545
    :cond_6b
    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    .line 5553
    .end local v32    # "syncName":Ljava/lang/String;
    :cond_6e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 5554
    .local v18, "numJobs":I
    move-object/from16 v0, p0

    iget-object v4, v0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5555
    const/4 v13, 0x0

    :goto_7a
    move/from16 v0, v18

    if-ge v13, v0, :cond_a4

    .line 5556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 5557
    .local v14, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1

    .line 5558
    move-object/from16 v0, p0

    iget-object v0, v0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v35, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5555
    :cond_a1
    add-int/lit8 v13, v13, 0x1

    goto :goto_7a

    .line 5562
    .end local v14    # "jobName":Ljava/lang/String;
    :cond_a4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 5563
    .local v21, "numSensors":I
    move-object/from16 v0, p0

    iget-object v4, v0, mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 5564
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_b0
    move/from16 v0, v21

    if-ge v15, v0, :cond_de

    .line 5565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 5566
    .local v30, "sensorNumber":I
    new-instance v29, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 5567
    .local v29, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5568
    move-object/from16 v0, p0

    iget-object v4, v0, mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5564
    add-int/lit8 v15, v15, 0x1

    goto :goto_b0

    .line 5571
    .end local v29    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v30    # "sensorNumber":I
    :cond_de
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 5572
    .local v20, "numProcs":I
    move-object/from16 v0, p0

    iget-object v4, v0, mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 5573
    const/4 v15, 0x0

    :goto_ea
    move/from16 v0, v20

    if-ge v15, v0, :cond_112

    .line 5574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 5575
    .local v28, "processName":Ljava/lang/String;
    new-instance v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    .line 5576
    .local v27, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5577
    move-object/from16 v0, p0

    iget-object v4, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5573
    add-int/lit8 v15, v15, 0x1

    goto :goto_ea

    .line 5580
    .end local v27    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v28    # "processName":Ljava/lang/String;
    :cond_112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 5581
    .local v19, "numPkgs":I
    move-object/from16 v0, p0

    iget-object v4, v0, mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 5582
    const/16 v16, 0x0

    .local v16, "l":I
    :goto_11f
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_147

    .line 5583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 5584
    .local v25, "packageName":Ljava/lang/String;
    new-instance v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5585
    .local v26, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5586
    move-object/from16 v0, p0

    iget-object v4, v0, mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5582
    add-int/lit8 v16, v16, 0x1

    goto :goto_11f

    .line 5589
    .end local v25    # "packageName":Ljava/lang/String;
    .end local v26    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_147
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWifiRunning:Z

    .line 5590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1cf

    .line 5591
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5596
    :goto_16c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mFullWifiLockOut:Z

    .line 5597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d5

    .line 5598
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5603
    :goto_191
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWifiScanStarted:Z

    .line 5604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1db

    .line 5605
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5610
    :goto_1b6
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, mWifiBatchedScanBinStarted:I

    .line 5611
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1bc
    const/4 v4, 0x5

    if-ge v12, v4, :cond_1e9

    .line 5612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e1

    .line 5613
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 5611
    :goto_1cc
    add-int/lit8 v12, v12, 0x1

    goto :goto_1bc

    .line 5594
    .end local v12    # "i":I
    :cond_1cf
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_16c

    .line 5601
    :cond_1d5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_191

    .line 5608
    :cond_1db
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_1b6

    .line 5615
    .restart local v12    # "i":I
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v12

    goto :goto_1cc

    .line 5618
    :cond_1e9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWifiMulticastEnabled:Z

    .line 5619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c7

    .line 5620
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5625
    :goto_20e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2ce

    .line 5626
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5631
    :goto_22f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d5

    .line 5632
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5637
    :goto_250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2dc

    .line 5638
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5643
    :goto_271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e2

    .line 5644
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5649
    :goto_292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e8

    .line 5650
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5655
    :goto_2ae
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, mProcessState:I

    .line 5656
    const/4 v12, 0x0

    :goto_2b4
    const/4 v4, 0x3

    if-ge v12, v4, :cond_2f6

    .line 5657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2ee

    .line 5658
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v1}, makeProcessState(ILandroid/os/Parcel;)V

    .line 5656
    :goto_2c4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b4

    .line 5623
    :cond_2c7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_20e

    .line 5629
    :cond_2ce
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_22f

    .line 5635
    :cond_2d5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_250

    .line 5641
    :cond_2dc
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_271

    .line 5647
    :cond_2e2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_292

    .line 5653
    :cond_2e8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_2ae

    .line 5660
    :cond_2ee
    move-object/from16 v0, p0

    iget-object v4, v0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v12

    goto :goto_2c4

    .line 5663
    :cond_2f6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_338

    .line 5664
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v5, v6, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5668
    :goto_311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33e

    .line 5669
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v4, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5670
    const/4 v12, 0x0

    :goto_31f
    const/4 v4, 0x3

    if-ge v12, v4, :cond_343

    .line 5671
    move-object/from16 v0, p0

    iget-object v4, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 5670
    add-int/lit8 v12, v12, 0x1

    goto :goto_31f

    .line 5666
    :cond_338
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_311

    .line 5674
    :cond_33e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5676
    :cond_343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c6

    .line 5677
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5678
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5680
    const/4 v12, 0x0

    :goto_358
    const/4 v4, 0x4

    if-ge v12, v4, :cond_384

    .line 5681
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 5683
    move-object/from16 v0, p0

    iget-object v4, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 5680
    add-int/lit8 v12, v12, 0x1

    goto :goto_358

    .line 5686
    :cond_384
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5687
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5693
    :goto_3a6
    const/4 v12, 0x0

    :goto_3a7
    const/4 v4, 0x4

    if-ge v12, v4, :cond_3d9

    .line 5694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d1

    .line 5695
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 5693
    :goto_3c3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3a7

    .line 5689
    :cond_3c6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5690
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_3a6

    .line 5697
    :cond_3d1
    move-object/from16 v0, p0

    iget-object v4, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v12

    goto :goto_3c3

    .line 5701
    :cond_3d9
    const/4 v12, 0x0

    :goto_3da
    const/4 v4, 0x4

    if-ge v12, v4, :cond_401

    .line 5702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f9

    .line 5703
    move-object/from16 v0, p0

    iget-object v4, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v12

    .line 5701
    :goto_3f6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3da

    .line 5705
    :cond_3f9
    move-object/from16 v0, p0

    iget-object v4, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v12

    goto :goto_3f6

    .line 5709
    :cond_401
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5710
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5711
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4cd

    .line 5714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 5715
    .local v17, "numCpuClusters":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    if-eqz v4, :cond_460

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    move/from16 v0, v17

    if-eq v4, v0, :cond_460

    .line 5716
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v5, "Incompatible number of cpu clusters"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5719
    :cond_460
    move/from16 v0, v17

    new-array v4, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5720
    const/4 v10, 0x0

    .local v10, "cluster":I
    :goto_469
    move/from16 v0, v17

    if-ge v10, v0, :cond_4d4

    .line 5721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c3

    .line 5722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 5723
    .local v22, "numSpeeds":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    if-eqz v4, :cond_499

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    move/from16 v0, v22

    if-eq v4, v0, :cond_499

    .line 5725
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v5, "Incompatible number of cpu speeds"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5728
    :cond_499
    move/from16 v0, v22

    new-array v11, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5729
    .local v11, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, p0

    iget-object v4, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v11, v4, v10

    .line 5730
    const/16 v31, 0x0

    .local v31, "speed":I
    :goto_4a5
    move/from16 v0, v31

    move/from16 v1, v22

    if-ge v0, v1, :cond_4ca

    .line 5731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c0

    .line 5732
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v11, v31

    .line 5730
    :cond_4c0
    add-int/lit8 v31, v31, 0x1

    goto :goto_4a5

    .line 5736
    .end local v11    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v22    # "numSpeeds":I
    .end local v31    # "speed":I
    :cond_4c3
    move-object/from16 v0, p0

    iget-object v4, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v10

    .line 5720
    :cond_4ca
    add-int/lit8 v10, v10, 0x1

    goto :goto_469

    .line 5740
    .end local v10    # "cluster":I
    .end local v17    # "numCpuClusters":I
    :cond_4cd
    const/4 v4, 0x0

    check-cast v4, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5742
    :cond_4d4
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6718
    iget-object v1, p0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6719
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6720
    iget-object v1, p0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6721
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6712
    iget-object v1, p0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6713
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6714
    iget-object v1, p0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6715
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6724
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6725
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 6727
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6729
    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    .line 6730
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6732
    :cond_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    .line 6733
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6735
    :cond_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    .line 6736
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6738
    :cond_43
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 6828
    invoke-virtual {p0, p1}, getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 6829
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_9

    .line 6830
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 6832
    :cond_9
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 6821
    invoke-virtual {p0, p1}, getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 6822
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_9

    .line 6823
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 6825
    :cond_9
    return-void
.end method

.method reset()Z
    .registers 37

    .prologue
    .line 5078
    const/4 v4, 0x0

    .line 5080
    .local v4, "active":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_23

    .line 5081
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_97

    const/16 v34, 0x1

    :goto_19
    or-int v4, v4, v34

    .line 5082
    move-object/from16 v0, p0

    iget-boolean v0, v0, mWifiRunning:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5084
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_45

    .line 5085
    move-object/from16 v0, p0

    iget-object v0, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_9a

    const/16 v34, 0x1

    :goto_3b
    or-int v4, v4, v34

    .line 5086
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFullWifiLockOut:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5088
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_67

    .line 5089
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_9d

    const/16 v34, 0x1

    :goto_5d
    or-int v4, v4, v34

    .line 5090
    move-object/from16 v0, p0

    iget-boolean v0, v0, mWifiScanStarted:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5092
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_b5

    .line 5093
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_70
    const/16 v34, 0x5

    move/from16 v0, v34

    if-ge v9, v0, :cond_a3

    .line 5094
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_94

    .line 5095
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_a0

    const/16 v34, 0x1

    :goto_92
    or-int v4, v4, v34

    .line 5093
    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_70

    .line 5081
    .end local v9    # "i":I
    :cond_97
    const/16 v34, 0x0

    goto :goto_19

    .line 5085
    :cond_9a
    const/16 v34, 0x0

    goto :goto_3b

    .line 5089
    :cond_9d
    const/16 v34, 0x0

    goto :goto_5d

    .line 5095
    .restart local v9    # "i":I
    :cond_a0
    const/16 v34, 0x0

    goto :goto_92

    .line 5098
    :cond_a3
    move-object/from16 v0, p0

    iget v0, v0, mWifiBatchedScanBinStarted:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_189

    const/16 v34, 0x1

    :goto_b3
    or-int v4, v4, v34

    .line 5100
    .end local v9    # "i":I
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_d7

    .line 5101
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_18d

    const/16 v34, 0x1

    :goto_cd
    or-int v4, v4, v34

    .line 5102
    move-object/from16 v0, p0

    iget-boolean v0, v0, mWifiMulticastEnabled:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5104
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_f1

    .line 5105
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_191

    const/16 v34, 0x1

    :goto_ef
    or-int v4, v4, v34

    .line 5107
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_10b

    .line 5108
    move-object/from16 v0, p0

    iget-object v0, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_195

    const/16 v34, 0x1

    :goto_109
    or-int v4, v4, v34

    .line 5110
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_125

    .line 5111
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_199

    const/16 v34, 0x1

    :goto_123
    or-int v4, v4, v34

    .line 5113
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_13f

    .line 5114
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_19c

    const/16 v34, 0x1

    :goto_13d
    or-int v4, v4, v34

    .line 5116
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_159

    .line 5117
    move-object/from16 v0, p0

    iget-object v0, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_19f

    const/16 v34, 0x1

    :goto_157
    or-int v4, v4, v34

    .line 5119
    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1b7

    .line 5120
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_162
    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v9, v0, :cond_1a5

    .line 5121
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_186

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_1a2

    const/16 v34, 0x1

    :goto_184
    or-int v4, v4, v34

    .line 5120
    :cond_186
    add-int/lit8 v9, v9, 0x1

    goto :goto_162

    .line 5098
    :cond_189
    const/16 v34, 0x0

    goto/16 :goto_b3

    .line 5101
    .end local v9    # "i":I
    :cond_18d
    const/16 v34, 0x0

    goto/16 :goto_cd

    .line 5105
    :cond_191
    const/16 v34, 0x0

    goto/16 :goto_ef

    .line 5108
    :cond_195
    const/16 v34, 0x0

    goto/16 :goto_109

    .line 5111
    :cond_199
    const/16 v34, 0x0

    goto :goto_123

    .line 5114
    :cond_19c
    const/16 v34, 0x0

    goto :goto_13d

    .line 5117
    :cond_19f
    const/16 v34, 0x0

    goto :goto_157

    .line 5122
    .restart local v9    # "i":I
    :cond_1a2
    const/16 v34, 0x0

    goto :goto_184

    .line 5125
    :cond_1a5
    move-object/from16 v0, p0

    iget v0, v0, mProcessState:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1fd

    const/16 v34, 0x1

    :goto_1b5
    or-int v4, v4, v34

    .line 5127
    .end local v9    # "i":I
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1de

    .line 5128
    move-object/from16 v0, p0

    iget-object v0, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    move-result v34

    if-eqz v34, :cond_200

    .line 5129
    move-object/from16 v0, p0

    iget-object v0, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 5130
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5136
    :cond_1de
    :goto_1de
    move-object/from16 v0, p0

    iget-object v0, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_202

    .line 5137
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1e7
    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v9, v0, :cond_202

    .line 5138
    move-object/from16 v0, p0

    iget-object v0, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 5137
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e7

    .line 5125
    :cond_1fd
    const/16 v34, 0x0

    goto :goto_1b5

    .line 5132
    .end local v9    # "i":I
    :cond_200
    const/4 v4, 0x1

    goto :goto_1de

    .line 5142
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_244

    .line 5143
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_20b
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_22e

    .line 5144
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5145
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5143
    add-int/lit8 v9, v9, 0x1

    goto :goto_20b

    .line 5147
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5148
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5151
    .end local v9    # "i":I
    :cond_244
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_245
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_27c

    .line 5152
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_262

    .line 5153
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5156
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_279

    .line 5157
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5151
    :cond_279
    add-int/lit8 v9, v9, 0x1

    goto :goto_245

    .line 5161
    :cond_27c
    move-object/from16 v0, p0

    iget-object v0, v0, mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5162
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5165
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2d4

    .line 5166
    move-object/from16 v0, p0

    iget-object v5, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .local v5, "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v5

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v5    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v20    # "len$":I
    .local v11, "i$":I
    :goto_2ae
    move/from16 v0, v20

    if-ge v11, v0, :cond_2d4

    aget-object v29, v5, v11

    .line 5167
    .local v29, "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v29, :cond_2d0

    .line 5168
    move-object/from16 v6, v29

    .local v6, "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v6

    move/from16 v21, v0

    .local v21, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_2bc
    move/from16 v0, v21

    if-ge v10, v0, :cond_2d0

    aget-object v28, v6, v10

    .line 5169
    .local v28, "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v28, :cond_2cd

    .line 5170
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5168
    :cond_2cd
    add-int/lit8 v10, v10, 0x1

    goto :goto_2bc

    .line 5166
    .end local v6    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v21    # "len$":I
    .end local v28    # "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_2d0
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_2ae

    .line 5177
    .end local v11    # "i$":I
    .end local v29    # "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v32

    .line 5178
    .local v32, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v18, v34, -0x1

    .local v18, "iw":I
    :goto_2e4
    if-ltz v18, :cond_302

    .line 5179
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5180
    .local v33, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v34

    if-eqz v34, :cond_300

    .line 5181
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5178
    :goto_2fd
    add-int/lit8 v18, v18, -0x1

    goto :goto_2e4

    .line 5183
    :cond_300
    const/4 v4, 0x1

    goto :goto_2fd

    .line 5186
    .end local v33    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_302
    move-object/from16 v0, p0

    iget-object v0, v0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5187
    move-object/from16 v0, p0

    iget-object v0, v0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 5188
    .local v30, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v14, v34, -0x1

    .local v14, "is":I
    :goto_31b
    if-ltz v14, :cond_33e

    .line 5189
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5190
    .local v31, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-eqz v34, :cond_33c

    .line 5191
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5192
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5188
    :goto_339
    add-int/lit8 v14, v14, -0x1

    goto :goto_31b

    .line 5194
    :cond_33c
    const/4 v4, 0x1

    goto :goto_339

    .line 5197
    .end local v31    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_33e
    move-object/from16 v0, p0

    iget-object v0, v0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5198
    move-object/from16 v0, p0

    iget-object v0, v0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v19

    .line 5199
    .local v19, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v12, v34, -0x1

    .local v12, "ij":I
    :goto_357
    if-ltz v12, :cond_37a

    .line 5200
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5201
    .restart local v31    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-eqz v34, :cond_378

    .line 5202
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5203
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5199
    :goto_375
    add-int/lit8 v12, v12, -0x1

    goto :goto_357

    .line 5205
    :cond_378
    const/4 v4, 0x1

    goto :goto_375

    .line 5208
    .end local v31    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_37a
    move-object/from16 v0, p0

    iget-object v0, v0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5209
    move-object/from16 v0, p0

    iget-object v0, v0, mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    add-int/lit8 v15, v34, -0x1

    .local v15, "ise":I
    :goto_38f
    if-ltz v15, :cond_3b5

    .line 5210
    move-object/from16 v0, p0

    iget-object v0, v0, mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5211
    .local v26, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v34

    if-eqz v34, :cond_3b3

    .line 5212
    move-object/from16 v0, p0

    iget-object v0, v0, mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5209
    :goto_3b0
    add-int/lit8 v15, v15, -0x1

    goto :goto_38f

    .line 5214
    :cond_3b3
    const/4 v4, 0x1

    goto :goto_3b0

    .line 5217
    .end local v26    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v13, v34, -0x1

    .local v13, "ip":I
    :goto_3c1
    if-ltz v13, :cond_3f5

    .line 5218
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5219
    .local v25, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3f0

    .line 5220
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 5221
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5217
    :goto_3ed
    add-int/lit8 v13, v13, -0x1

    goto :goto_3c1

    .line 5223
    :cond_3f0
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->reset()V

    .line 5224
    const/4 v4, 0x1

    goto :goto_3ed

    .line 5227
    .end local v25    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v0, v0, mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    if-lez v34, :cond_435

    .line 5228
    move-object/from16 v0, p0

    iget-object v0, v0, mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    add-int/lit8 v9, v34, -0x1

    :goto_40d
    if-ltz v9, :cond_435

    .line 5229
    move-object/from16 v0, p0

    iget-object v0, v0, mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/BatteryStats$Uid$Pid;

    .line 5230
    .local v23, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move/from16 v34, v0

    if-lez v34, :cond_429

    .line 5231
    const/4 v4, 0x1

    .line 5228
    :goto_426
    add-int/lit8 v9, v9, -0x1

    goto :goto_40d

    .line 5233
    :cond_429
    move-object/from16 v0, p0

    iget-object v0, v0, mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_426

    .line 5237
    .end local v23    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_435
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v34

    if-lez v34, :cond_49d

    .line 5238
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 5239
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_44f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_494

    .line 5240
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 5241
    .local v24, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5242
    .local v22, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 5243
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v34

    if-lez v34, :cond_44f

    .line 5244
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 5246
    .local v17, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_47e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_44f

    .line 5247
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 5248
    .local v27, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_47e

    .line 5252
    .end local v17    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v22    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v24    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v27    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_494
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->clear()V

    .line 5255
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_49d
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastStepSystemTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastStepUserTime:J

    .line 5256
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurStepSystemTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurStepUserTime:J

    .line 5258
    if-nez v4, :cond_668

    .line 5259
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4cc

    .line 5260
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5262
    :cond_4cc
    move-object/from16 v0, p0

    iget-object v0, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4dd

    .line 5263
    move-object/from16 v0, p0

    iget-object v0, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5265
    :cond_4dd
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4ee

    .line 5266
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5268
    :cond_4ee
    const/4 v9, 0x0

    :goto_4ef
    const/16 v34, 0x5

    move/from16 v0, v34

    if-ge v9, v0, :cond_50d

    .line 5269
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_50a

    .line 5270
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5268
    :cond_50a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4ef

    .line 5273
    :cond_50d
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_51e

    .line 5274
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5276
    :cond_51e
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_537

    .line 5277
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5278
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5280
    :cond_537
    move-object/from16 v0, p0

    iget-object v0, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_550

    .line 5281
    move-object/from16 v0, p0

    iget-object v0, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5282
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5284
    :cond_550
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_569

    .line 5285
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5286
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5288
    :cond_569
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_582

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5290
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5292
    :cond_582
    move-object/from16 v0, p0

    iget-object v0, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_59b

    .line 5293
    move-object/from16 v0, p0

    iget-object v0, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5294
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5296
    :cond_59b
    move-object/from16 v0, p0

    iget-object v0, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5b8

    .line 5297
    const/4 v9, 0x0

    :goto_5a4
    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v9, v0, :cond_5b8

    .line 5298
    move-object/from16 v0, p0

    iget-object v0, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 5297
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a4

    .line 5301
    :cond_5b8
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5e0

    .line 5302
    const/4 v9, 0x0

    :goto_5c1
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_5e0

    .line 5303
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5304
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5302
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c1

    .line 5308
    :cond_5e0
    const/4 v9, 0x0

    :goto_5e1
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_614

    .line 5309
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_5fc

    .line 5310
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5313
    :cond_5fc
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_611

    .line 5314
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5308
    :cond_611
    add-int/lit8 v9, v9, 0x1

    goto :goto_5e1

    .line 5317
    :cond_614
    move-object/from16 v0, p0

    iget-object v0, v0, mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->clear()V

    .line 5319
    move-object/from16 v0, p0

    iget-object v0, v0, mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5320
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5321
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5323
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_668

    .line 5324
    move-object/from16 v0, p0

    iget-object v5, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .restart local v5    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v5

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    move v11, v10

    .end local v5    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v20    # "len$":I
    .restart local v11    # "i$":I
    :goto_649
    move/from16 v0, v20

    if-ge v11, v0, :cond_668

    aget-object v8, v5, v11

    .line 5325
    .local v8, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v8, :cond_664

    .line 5326
    move-object v6, v8

    .restart local v6    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v6

    move/from16 v21, v0

    .restart local v21    # "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_656
    move/from16 v0, v21

    if-ge v10, v0, :cond_664

    aget-object v7, v6, v10

    .line 5327
    .local v7, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v7, :cond_661

    .line 5328
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5326
    :cond_661
    add-int/lit8 v10, v10, 0x1

    goto :goto_656

    .line 5324
    .end local v6    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v7    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v21    # "len$":I
    :cond_664
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_649

    .line 5336
    .end local v8    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v11    # "i$":I
    :cond_668
    if-nez v4, :cond_66d

    const/16 v34, 0x1

    :goto_66c
    return v34

    :cond_66d
    const/16 v34, 0x0

    goto :goto_66c
.end method

.method public updateProcessStateLocked(Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    .line 6628
    const/4 v1, 0x6

    if-gt p2, v1, :cond_8

    .line 6629
    const/4 v0, 0x0

    .line 6635
    .local v0, "procState":I
    :goto_4
    invoke-virtual {p0, p1, v0, p3, p4}, updateRealProcessStateLocked(Ljava/lang/String;IJ)V

    .line 6636
    return-void

    .line 6630
    .end local v0    # "procState":I
    :cond_8
    const/16 v1, 0xb

    if-gt p2, v1, :cond_e

    .line 6631
    const/4 v0, 0x1

    .restart local v0    # "procState":I
    goto :goto_4

    .line 6633
    .end local v0    # "procState":I
    :cond_e
    const/4 v0, 0x2

    .restart local v0    # "procState":I
    goto :goto_4
.end method

.method public updateRealProcessStateLocked(Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "procState"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 6640
    invoke-virtual {p0, p1}, getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    .line 6641
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v5, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-eq v5, p2, :cond_40

    .line 6643
    iget v5, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ge p2, v5, :cond_34

    .line 6647
    iget v5, p0, mProcessState:I

    if-le v5, p2, :cond_32

    .line 6654
    .local v0, "changed":Z
    :goto_12
    iput p2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    .line 6655
    if-eqz v0, :cond_40

    .line 6657
    const/4 v3, 0x3

    .line 6658
    .local v3, "uidProcState":I
    iget-object v4, p0, mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "ip":I
    :goto_1f
    if-ltz v1, :cond_3d

    .line 6659
    iget-object v4, p0, mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6660
    .restart local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ge v4, v3, :cond_2f

    .line 6661
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    .line 6658
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_32
    move v0, v4

    .line 6647
    goto :goto_12

    .line 6652
    :cond_34
    iget v5, p0, mProcessState:I

    iget v6, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ne v5, v6, :cond_3b

    .restart local v0    # "changed":Z
    :goto_3a
    goto :goto_12

    .end local v0    # "changed":Z
    :cond_3b
    move v0, v4

    goto :goto_3a

    .line 6664
    .restart local v0    # "changed":Z
    .restart local v1    # "ip":I
    .restart local v3    # "uidProcState":I
    :cond_3d
    invoke-virtual {p0, v3, p3, p4}, updateUidProcessStateLocked(IJ)V

    .line 6667
    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_40
    return-void
.end method

.method updateUidProcessStateLocked(IJ)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v2, 0x3

    .line 4771
    iget v0, p0, mProcessState:I

    if-ne v0, p1, :cond_6

    .line 4783
    :cond_5
    :goto_5
    return-void

    .line 4773
    :cond_6
    iget v0, p0, mProcessState:I

    if-eq v0, v2, :cond_13

    .line 4774
    iget-object v0, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, mProcessState:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4776
    :cond_13
    iput p1, p0, mProcessState:I

    .line 4777
    if-eq p1, v2, :cond_5

    .line 4778
    iget-object v0, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_21

    .line 4779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, makeProcessState(ILandroid/os/Parcel;)V

    .line 4781
    :cond_21
    iget-object v0, p0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_5
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .registers 38
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 5340
    move-object/from16 v0, p0

    iget-object v0, v0, mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 5341
    .local v30, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 5342
    .local v8, "NW":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5343
    const/16 v20, 0x0

    .local v20, "iw":I
    :goto_15
    move/from16 v0, v20

    if-ge v0, v8, :cond_40

    .line 5344
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5345
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5346
    .local v31, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 5343
    add-int/lit8 v20, v20, 0x1

    goto :goto_15

    .line 5349
    .end local v31    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v28

    .line 5350
    .local v28, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 5351
    .local v6, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5352
    const/16 v18, 0x0

    .local v18, "is":I
    :goto_55
    move/from16 v0, v18

    if-ge v0, v6, :cond_80

    .line 5353
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5354
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5355
    .local v29, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5352
    add-int/lit8 v18, v18, 0x1

    goto :goto_55

    .line 5358
    .end local v29    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 5359
    .local v21, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5360
    .local v4, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5361
    const/16 v16, 0x0

    .local v16, "ij":I
    :goto_95
    move/from16 v0, v16

    if-ge v0, v4, :cond_c0

    .line 5362
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5363
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5364
    .restart local v29    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5361
    add-int/lit8 v16, v16, 0x1

    goto :goto_95

    .line 5367
    .end local v29    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 5368
    .local v7, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5369
    const/16 v19, 0x0

    .local v19, "ise":I
    :goto_d1
    move/from16 v0, v19

    if-ge v0, v7, :cond_106

    .line 5370
    move-object/from16 v0, p0

    iget-object v0, v0, mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5372
    .local v27, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 5369
    add-int/lit8 v19, v19, 0x1

    goto :goto_d1

    .line 5375
    .end local v27    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 5376
    .local v5, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5377
    const/16 v17, 0x0

    .local v17, "ip":I
    :goto_117
    move/from16 v0, v17

    if-ge v0, v5, :cond_14c

    .line 5378
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5379
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5380
    .local v26, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 5377
    add-int/lit8 v17, v17, 0x1

    goto :goto_117

    .line 5383
    .end local v26    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_14c
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5384
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_16b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_192

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 5385
    .local v25, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5386
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5387
    .local v24, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_16b

    .line 5390
    .end local v24    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v25    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_220

    .line 5391
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5392
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5396
    :goto_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_22a

    .line 5397
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5398
    move-object/from16 v0, p0

    iget-object v0, v0, mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5402
    :goto_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_234

    .line 5403
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5404
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5408
    :goto_1f2
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1f3
    const/16 v32, 0x5

    move/from16 v0, v32

    if-ge v13, v0, :cond_248

    .line 5409
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_23e

    .line 5410
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5411
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5408
    :goto_21d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f3

    .line 5394
    .end local v13    # "i":I
    :cond_220
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b2

    .line 5400
    :cond_22a
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d2

    .line 5406
    :cond_234
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f2

    .line 5413
    .restart local v13    # "i":I
    :cond_23e
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21d

    .line 5416
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_336

    .line 5417
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5418
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5423
    :goto_268
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_341

    .line 5424
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5425
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5429
    :goto_288
    move-object/from16 v0, p0

    iget-object v0, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_34c

    .line 5430
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5431
    move-object/from16 v0, p0

    iget-object v0, v0, mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5435
    :goto_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_357

    .line 5436
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5437
    move-object/from16 v0, p0

    iget-object v0, v0, mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5441
    :goto_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_362

    .line 5442
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5443
    move-object/from16 v0, p0

    iget-object v0, v0, mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5447
    :goto_2e8
    move-object/from16 v0, p0

    iget-object v0, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_36d

    .line 5448
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5449
    move-object/from16 v0, p0

    iget-object v0, v0, mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5453
    :goto_308
    const/4 v13, 0x0

    :goto_309
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ge v13, v0, :cond_381

    .line 5454
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_377

    .line 5455
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5456
    move-object/from16 v0, p0

    iget-object v0, v0, mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5453
    :goto_333
    add-int/lit8 v13, v13, 0x1

    goto :goto_309

    .line 5420
    :cond_336
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_268

    .line 5427
    :cond_341
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_288

    .line 5433
    :cond_34c
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2a8

    .line 5439
    :cond_357
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2c8

    .line 5445
    :cond_362
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2e8

    .line 5451
    :cond_36d
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_308

    .line 5458
    :cond_377
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_333

    .line 5461
    :cond_381
    move-object/from16 v0, p0

    iget-object v0, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3cb

    .line 5462
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5463
    move-object/from16 v0, p0

    iget-object v0, v0, mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5467
    :goto_3a1
    move-object/from16 v0, p0

    iget-object v0, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3d5

    .line 5468
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5469
    const/4 v13, 0x0

    :goto_3b3
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ge v13, v0, :cond_3de

    .line 5470
    move-object/from16 v0, p0

    iget-object v0, v0, mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5469
    add-int/lit8 v13, v13, 0x1

    goto :goto_3b3

    .line 5465
    :cond_3cb
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a1

    .line 5473
    :cond_3d5
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5475
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_45d

    .line 5476
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5477
    const/4 v13, 0x0

    :goto_3f0
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ge v13, v0, :cond_417

    .line 5478
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5479
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5477
    add-int/lit8 v13, v13, 0x1

    goto :goto_3f0

    .line 5481
    :cond_417
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5482
    move-object/from16 v0, p0

    iget-object v0, v0, mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5487
    :goto_431
    const/4 v13, 0x0

    :goto_432
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ge v13, v0, :cond_471

    .line 5488
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_467

    .line 5489
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5490
    move-object/from16 v0, p0

    iget-object v0, v0, mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5487
    :goto_45a
    add-int/lit8 v13, v13, 0x1

    goto :goto_432

    .line 5484
    :cond_45d
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_431

    .line 5492
    :cond_467
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45a

    .line 5496
    :cond_471
    const/4 v13, 0x0

    :goto_472
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ge v13, v0, :cond_4a7

    .line 5497
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_49d

    .line 5498
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5499
    move-object/from16 v0, p0

    iget-object v0, v0, mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5496
    :goto_49a
    add-int/lit8 v13, v13, 0x1

    goto :goto_472

    .line 5501
    :cond_49d
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49a

    .line 5505
    :cond_4a7
    move-object/from16 v0, p0

    iget-object v0, v0, mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5506
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5507
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5509
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_54a

    .line 5510
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5511
    move-object/from16 v0, p0

    iget-object v0, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5512
    move-object/from16 v0, p0

    iget-object v9, v0, mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .local v9, "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v9

    move/from16 v22, v0

    .local v22, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    move v15, v14

    .end local v9    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v14    # "i$":I
    .end local v22    # "len$":I
    .local v15, "i$":I
    :goto_4fa
    move/from16 v0, v22

    if-ge v15, v0, :cond_553

    aget-object v12, v9, v15

    .line 5513
    .local v12, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v12, :cond_53d

    .line 5514
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5515
    array-length v0, v12

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5516
    move-object v10, v12

    .local v10, "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v10

    move/from16 v23, v0

    .local v23, "len$":I
    const/4 v14, 0x0

    .end local v15    # "i$":I
    .restart local v14    # "i$":I
    :goto_51a
    move/from16 v0, v23

    if-ge v14, v0, :cond_546

    aget-object v11, v10, v14

    .line 5517
    .local v11, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v11, :cond_533

    .line 5518
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5519
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5516
    :goto_530
    add-int/lit8 v14, v14, 0x1

    goto :goto_51a

    .line 5521
    :cond_533
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_530

    .line 5525
    .end local v10    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v11    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v14    # "i$":I
    .end local v23    # "len$":I
    .restart local v15    # "i$":I
    :cond_53d
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5512
    .end local v15    # "i$":I
    :cond_546
    add-int/lit8 v14, v15, 0x1

    .restart local v14    # "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .restart local v15    # "i$":I
    goto :goto_4fa

    .line 5529
    .end local v12    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v15    # "i$":I
    .local v14, "i$":Ljava/util/Iterator;
    :cond_54a
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5531
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_553
    return-void
.end method
