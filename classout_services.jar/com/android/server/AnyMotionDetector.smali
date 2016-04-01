.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$RunningSignalStats;,
        Lcom/android/server/AnyMotionDetector$Vector3;,
        Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final DEBUG:Z = false

.field private static final ORIENTATION_MEASUREMENT_DURATION_MILLIS:J = 0x9c4L

.field private static final ORIENTATION_MEASUREMENT_INTERVAL_MILLIS:J = 0x1388L

.field public static final RESULT_MOVED:I = 0x1

.field public static final RESULT_STATIONARY:I = 0x0

.field public static final RESULT_UNKNOWN:I = -0x1

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x28

.field private static final STALE_MEASUREMENT_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final STATE_ACTIVE:I = 0x1

.field private static final STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AnyMotionDetector"


# instance fields
.field private final THRESHOLD_ANGLE:F

.field private final THRESHOLD_ENERGY:F

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field private mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMeasurementInProgress:Z

.field private final mMeasurementTimeout:Ljava/lang/Runnable;

.field private mNumSufficientSamples:I

.field private mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRestart:Ljava/lang/Runnable;

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;)V
    .registers 9
    .param p1, "pm"    # Landroid/os/PowerManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sm"    # Landroid/hardware/SensorManager;
    .param p4, "callback"    # Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, THRESHOLD_ANGLE:F

    .line 65
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, THRESHOLD_ENERGY:F

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 98
    iput-object v2, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 101
    iput-object v2, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 106
    iput-object v2, p0, mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 248
    new-instance v0, Lcom/android/server/AnyMotionDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, mListener:Landroid/hardware/SensorEventListener;

    .line 272
    new-instance v0, Lcom/android/server/AnyMotionDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, mSensorRestart:Ljava/lang/Runnable;

    .line 281
    new-instance v0, Lcom/android/server/AnyMotionDetector$3;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, mMeasurementTimeout:Ljava/lang/Runnable;

    .line 111
    const-string v0, "AnyMotionDetector"

    invoke-virtual {p1, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 112
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 113
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 114
    iput-object p3, p0, mSensorManager:Landroid/hardware/SensorManager;

    .line 115
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, mAccelSensor:Landroid/hardware/Sensor;

    .line 116
    iput-boolean v1, p0, mMeasurementInProgress:Z

    .line 117
    iput v1, p0, mState:I

    .line 118
    iput-object p4, p0, mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 119
    new-instance v0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-direct {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    iput-object v0, p0, mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 120
    const-wide v0, 0x404f400000000000L    # 62.5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, mNumSufficientSamples:I

    .line 123
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 34
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 34
    iget-object v0, p0, mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AnyMotionDetector;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 34
    iget v0, p0, mNumSufficientSamples:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AnyMotionDetector;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 34
    invoke-direct {p0}, stopOrientationMeasurementLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 34
    iget-object v0, p0, mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AnyMotionDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 34
    invoke-direct {p0}, startOrientationMeasurement()V

    return-void
.end method

.method private startOrientationMeasurement()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 159
    iget-boolean v1, p0, mMeasurementInProgress:Z

    if-nez v1, :cond_36

    iget-object v1, p0, mAccelSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_36

    .line 160
    iget-object v1, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, mListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, mAccelSensor:Landroid/hardware/Sensor;

    const v4, 0x9c40

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 162
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 163
    iput-boolean v5, p0, mMeasurementInProgress:Z

    .line 164
    iget-object v1, p0, mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 167
    :cond_24
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 169
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    .end local v0    # "msg":Landroid/os/Message;
    :cond_36
    return-void
.end method

.method private stopOrientationMeasurementLocked()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 176
    const/4 v3, -0x1

    .line 177
    .local v3, "status":I
    iget-boolean v4, p0, mMeasurementInProgress:Z

    if-eqz v4, :cond_39

    .line 178
    iget-object v4, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 179
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v4, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 182
    .local v0, "detectionEndTime":J
    iput-boolean v6, p0, mMeasurementInProgress:Z

    .line 183
    iget-object v4, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v4, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 184
    iget-object v4, p0, mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v4

    iput-object v4, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 194
    iget-object v4, p0, mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 195
    invoke-virtual {p0}, getStationaryStatus()I

    move-result v3

    .line 197
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3a

    .line 200
    iput v6, p0, mState:I

    .line 214
    .end local v0    # "detectionEndTime":J
    :cond_39
    :goto_39
    return v3

    .line 209
    .restart local v0    # "detectionEndTime":J
    :cond_3a
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mSensorRestart:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 210
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 211
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_39
.end method


# virtual methods
.method public checkForAnyMotion()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    iget v0, p0, mState:I

    if-eq v0, v1, :cond_f

    .line 131
    iput v1, p0, mState:I

    .line 133
    iput-object v2, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 134
    iput-object v2, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 135
    invoke-direct {p0}, startOrientationMeasurement()V

    .line 137
    :cond_f
    return-void
.end method

.method public getStationaryStatus()I
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 221
    iget-object v7, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-eqz v7, :cond_a

    iget-object v7, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v7, :cond_c

    :cond_a
    move v5, v6

    .line 245
    :cond_b
    :goto_b
    return v5

    .line 224
    :cond_c
    iget-object v7, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    # invokes: Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-static {v7}, Lcom/android/server/AnyMotionDetector$Vector3;->access$000(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v4

    .line 225
    .local v4, "previousGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v7, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    # invokes: Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-static {v7}, Lcom/android/server/AnyMotionDetector$Vector3;->access$000(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v1

    .line 226
    .local v1, "currentGravityVectorNormalized":Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-virtual {v4, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    .line 228
    .local v0, "angle":F
    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_30

    iget-object v7, p0, mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v7}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getEnergy()F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_30

    .line 229
    const/4 v5, 0x0

    goto :goto_b

    .line 230
    :cond_30
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_b

    .line 238
    iget-object v7, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v8, v7, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget-object v7, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v10, v7, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    sub-long v2, v8, v10

    .line 240
    .local v2, "diffTime":J
    const-wide/32 v8, 0x1d4c0

    cmp-long v7, v2, v8

    if-lez v7, :cond_b

    move v5, v6

    .line 243
    goto :goto_b
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    iget v0, p0, mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 141
    iput v2, p0, mState:I

    .line 143
    iget-boolean v0, p0, mMeasurementInProgress:Z

    if-eqz v0, :cond_16

    .line 144
    iput-boolean v2, p0, mMeasurementInProgress:Z

    .line 145
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 147
    :cond_16
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSensorRestart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 150
    iput-object v3, p0, mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 151
    iput-object v3, p0, mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 153
    :cond_2d
    return-void
.end method
