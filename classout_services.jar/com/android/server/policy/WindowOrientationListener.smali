.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

.field private mRate:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:Ljava/lang/String;

.field private mbResultFaceDectection:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 62
    const-string/jumbo v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LOG:Z

    .line 81
    sput v2, sCurrentAppOrientation:I

    .line 82
    sput v2, sCurrentRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v2, -0x1

    iput v2, p0, mCurrentRotation:I

    .line 76
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mLock:Ljava/lang/Object;

    .line 115
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 118
    .local v1, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, mbSContext:Z

    .line 119
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mbSContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mbSContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-boolean v5, p0, mEnabled:Z

    .line 121
    iput-boolean v5, p0, mbResultFaceDectection:Z

    .line 122
    const-string v2, "com.sec.android.smartface.smart_rotation"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, "bsmartrotation":Z
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartRotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean v2, p0, mbSContext:Z

    if-eqz v2, :cond_80

    .line 127
    const-string v2, "WindowOrientationListener"

    const-string v3, "++SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 130
    new-instance v2, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Z)V

    iput-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 131
    const-string v2, "WindowOrientationListener"

    const-string v3, "--SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_7f
    :goto_7f
    return-void

    .line 133
    :cond_80
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, mSensorManager:Landroid/hardware/SensorManager;

    .line 134
    iput p3, p0, mRate:I

    .line 136
    iget-object v2, p0, mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10016

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, mSensor:Landroid/hardware/Sensor;

    .line 137
    iget-object v2, p0, mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_a3

    .line 138
    new-instance v2, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Z)V

    iput-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 141
    :cond_a3
    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-nez v2, :cond_7f

    .line 142
    iget-object v2, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, mSensor:Landroid/hardware/Sensor;

    .line 144
    iget-object v2, p0, mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_7f

    .line 146
    new-instance v2, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {v2, p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    iput-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    goto :goto_7f
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/WindowOrientationListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/WindowOrientationListener;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, setFaceDetectionResult(Z)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 60
    sget v0, sCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget v0, p0, mCurrentRotation:I

    return v0
.end method

.method static synthetic access$500()Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 1

    .prologue
    .line 60
    sget-object v0, msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 60
    sput-object p0, msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 60
    sget-boolean v0, LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .prologue
    .line 60
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .registers 1

    .prologue
    .line 271
    sget v0, sCurrentRotation:I

    return v0
.end method

.method private insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 323
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_3a
    return-void
.end method

.method public static setCurrentAppOrientation(I)V
    .registers 4
    .param p0, "appOrientation"    # I

    .prologue
    .line 263
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentAppOrientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sput p0, sCurrentAppOrientation:I

    .line 265
    return-void
.end method

.method private setFaceDetectionResult(Z)V
    .registers 2
    .param p1, "ResultFaceDectection"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, mbResultFaceDectection:Z

    .line 304
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_5
    iget-boolean v3, p0, mbSContext:Z

    if-eqz v3, :cond_11

    .line 312
    iget-object v3, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_f

    :goto_d
    monitor-exit v2

    .line 314
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 312
    goto :goto_d

    .line 314
    :cond_11
    iget-object v3, p0, mSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_1a

    :goto_15
    monitor-exit v2

    goto :goto_e

    .line 315
    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    move v0, v1

    .line 314
    goto :goto_15
.end method

.method public disable()V
    .registers 5

    .prologue
    .line 189
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, mbResultFaceDectection:Z

    .line 191
    iget-boolean v0, p0, mbSContext:Z

    if-nez v0, :cond_17

    .line 192
    iget-object v0, p0, mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_27

    .line 193
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v1

    .line 214
    :goto_16
    return-void

    .line 197
    :cond_17
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_27

    .line 198
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect scontext. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v1

    goto :goto_16

    .line 213
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0

    .line 202
    :cond_27
    :try_start_27
    iget-boolean v0, p0, mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    .line 203
    sget-boolean v0, LOG:Z

    if-eqz v0, :cond_37

    .line 204
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_37
    iget-boolean v0, p0, mbSContext:Z

    if-eqz v0, :cond_48

    .line 207
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 211
    :goto_43
    const/4 v0, 0x0

    iput-boolean v0, p0, mEnabled:Z

    .line 213
    :cond_46
    monitor-exit v1

    goto :goto_16

    .line 209
    :cond_48
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_24

    goto :goto_43
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mCurrentRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mCurrentRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    iget-boolean v0, p0, mbSContext:Z

    if-eqz v0, :cond_92

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSContextManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    :goto_87
    iget-object v0, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_90

    .line 363
    iget-object v0, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 365
    :cond_90
    monitor-exit v1

    .line 366
    return-void

    .line 357
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSensorType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mSensorType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_87

    .line 365
    :catchall_ea
    move-exception v0

    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_3 .. :try_end_ec} :catchall_ea

    throw v0
.end method

.method public enable()V
    .registers 7

    .prologue
    .line 157
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, mbResultFaceDectection:Z

    .line 159
    iget-boolean v0, p0, mbSContext:Z

    if-nez v0, :cond_17

    .line 160
    iget-object v0, p0, mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_27

    .line 161
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    monitor-exit v1

    .line 183
    :goto_16
    return-void

    .line 165
    :cond_17
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_27

    .line 166
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect scontext. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-exit v1

    goto :goto_16

    .line 182
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0

    .line 170
    :cond_27
    :try_start_27
    iget-boolean v0, p0, mEnabled:Z

    if-nez v0, :cond_4b

    .line 171
    sget-boolean v0, LOG:Z

    if-eqz v0, :cond_36

    .line 172
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_36
    iget-object v0, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->resetLocked()V

    .line 175
    iget-boolean v0, p0, mbSContext:Z

    if-eqz v0, :cond_4d

    .line 176
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 180
    :goto_48
    const/4 v0, 0x1

    iput-boolean v0, p0, mEnabled:Z

    .line 182
    :cond_4b
    monitor-exit v1

    goto :goto_16

    .line 178
    :cond_4d
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v3, p0, mSensor:Landroid/hardware/Sensor;

    iget v4, p0, mRate:I

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_24

    goto :goto_48
.end method

.method public getProposedRotation()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 284
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_4
    iget-boolean v2, p0, mEnabled:Z

    if-eqz v2, :cond_35

    .line 286
    iget-boolean v2, p0, mbResultFaceDectection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 287
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProposedRotation facedetection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mbResultFaceDectection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v1

    .line 293
    :goto_29
    return v0

    .line 290
    :cond_2a
    iget-object v0, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    goto :goto_29

    .line 294
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v0

    .line 293
    :cond_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    goto :goto_29
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .registers 5

    .prologue
    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 227
    .local v0, "whenElapsedNanos":J
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_7
    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v2, :cond_10

    .line 229
    iget-object v2, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 231
    :cond_10
    monitor-exit v3

    .line 232
    return-void

    .line 231
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public onTouchStart()V
    .registers 3

    .prologue
    .line 217
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_3
    iget-object v0, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 221
    :cond_c
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 250
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_3
    iput p1, p0, mCurrentRotation:I

    .line 252
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    .line 253
    sput p1, sCurrentRotation:I

    .line 254
    return-void

    .line 252
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setSensorDelay(I)V
    .registers 7
    .param p1, "delay"    # I

    .prologue
    .line 238
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, mRate:I

    .line 239
    iget-boolean v0, p0, mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-boolean v0, p0, mbSContext:Z

    if-nez v0, :cond_21

    .line 240
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 241
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v2, p0, mSensor:Landroid/hardware/Sensor;

    iget v3, p0, mRate:I

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 243
    :cond_21
    return-void
.end method
