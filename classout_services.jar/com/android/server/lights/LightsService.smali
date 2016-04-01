.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$SvcLEDHandler;,
        Lcom/android/server/lights/LightsService$SvcLEDReceiver;,
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final DEBUG:Z = false

.field public static final LIGHT_SEC_FLASH:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field public static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field public static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field public static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final NOVEL_PROJECT:Z

.field private static final PRODUCT_NAME:Ljava/lang/String;

.field public static final SUPPORT_LED_INDICATOR:Z

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x4

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x6

.field private static final SVCLED_MODE_LED_SERVICE:I = 0x3

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x5

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I

.field private static final model:Ljava/lang/String;


# instance fields
.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverBatteryLight:Lcom/android/server/lights/Light;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverNotiLight:Lcom/android/server/lights/Light;

.field private mCoverOpened:Z

.field private mCoverServLight:Lcom/android/server/lights/Light;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverType:I

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field private mLedLowPowerPath:Ljava/lang/String;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field private final mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    const-string/jumbo v0, "ro.product.device"

    const-string v2, "NONE"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, PRODUCT_NAME:Ljava/lang/String;

    .line 86
    sget-object v0, PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v2, "novel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, NOVEL_PROJECT:Z

    .line 88
    sget-boolean v0, NOVEL_PROJECT:Z

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    sput-boolean v0, SUPPORT_LED_INDICATOR:Z

    .line 144
    sput v1, mSvcLedState:I

    .line 145
    sput v1, mPrevSvcLedState:I

    .line 146
    sput v1, mSvcLedColor:I

    .line 147
    sput v1, mSvcLedMode:I

    .line 148
    sput v1, mSvcLedOnMS:I

    .line 149
    sput v1, mSvcLedOffMS:I

    .line 160
    const-string/jumbo v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, model:Ljava/lang/String;

    return-void

    :cond_4e
    move v0, v1

    .line 88
    goto :goto_2c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v4, p0, mInitCompleteForSvcLED:Z

    .line 78
    const/16 v1, 0x2bc

    iput v1, p0, mDelayForcedSvcLEDTask:I

    .line 98
    iput-boolean v4, p0, mUseLEDAutoBrightness:Z

    .line 99
    iput-boolean v3, p0, mUsePatternLED:Z

    .line 100
    const v1, 0x927c0

    iput v1, p0, mUpdateSvcLEDDelay:I

    .line 103
    iput-object v6, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 104
    iput-boolean v3, p0, mCoverOpened:Z

    .line 105
    iput v2, p0, mCoverType:I

    .line 150
    iput-boolean v4, p0, mIsLEDChanged:Z

    .line 154
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/sys/power/wake_lock"

    aput-object v2, v1, v4

    const-string v2, "/sys/power/wake_unlock"

    aput-object v2, v1, v3

    iput-object v1, p0, mNewWakeLockPaths:[Ljava/lang/String;

    .line 155
    iget-object v1, p0, mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, mWakeLockPath:Ljava/lang/String;

    .line 156
    iget-object v1, p0, mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, mWakeUnlockPath:Ljava/lang/String;

    .line 157
    iput-boolean v4, p0, mInitializedWakeLockPath:Z

    .line 162
    new-array v1, v5, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 432
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, mService:Lcom/android/server/lights/LightsManager;

    .line 452
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, mH:Landroid/os/Handler;

    .line 513
    new-instance v1, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 540
    iput-boolean v4, p0, isLightSensorEnabled:Z

    .line 559
    new-instance v1, Lcom/android/server/lights/LightsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$5;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, mLightListener:Landroid/hardware/SensorEventListener;

    .line 607
    const-string v1, "/sys/class/sec/led/led_lowpower"

    iput-object v1, p0, mLedLowPowerPath:Ljava/lang/String;

    .line 608
    const/4 v1, -0x1

    iput v1, p0, mLedLowPower:I

    .line 609
    const/4 v1, 0x5

    iput v1, p0, mLastSvcLedId:I

    .line 763
    iput-boolean v4, p0, mWakeLockAcquired:Z

    .line 360
    invoke-static {}, init_native()J

    move-result-wide v2

    iput-wide v2, p0, mNativePointer:J

    .line 361
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 366
    iput-boolean v4, p0, mInitCompleteForSvcLED:Z

    .line 367
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    const-string/jumbo v2, "mSvcLEDThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object v1, p0, mSvcLEDThread:Landroid/os/HandlerThread;

    .line 400
    iget-object v1, p0, mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 401
    iget-object v2, p0, mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 402
    :goto_84
    :try_start_84
    iget-boolean v1, p0, mInitCompleteForSvcLED:Z
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_a0

    if-nez v1, :cond_90

    .line 404
    :try_start_88
    iget-object v1, p0, mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8d} :catch_8e
    .catchall {:try_start_88 .. :try_end_8d} :catchall_a0

    goto :goto_84

    .line 405
    :catch_8e
    move-exception v1

    goto :goto_84

    .line 409
    :cond_90
    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_a0

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_92
    if-ge v0, v5, :cond_a3

    .line 413
    iget-object v1, p0, mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 409
    .end local v0    # "i":I
    :catchall_a0
    move-exception v1

    :try_start_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v1

    .line 416
    .restart local v0    # "i":I
    :cond_a3
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-boolean v0, p0, mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/LightsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, clearSvcLedStateLocked(I)V

    return-void
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 68
    sget v0, mSvcLedState:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-boolean v0, p0, mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/lights/LightsService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-wide v0, p0, mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-boolean v0, p0, mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 68
    sget-boolean v0, NOVEL_PROJECT:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-boolean v0, p0, mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget v0, p0, mCoverType:I

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/lights/LightsService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, mCoverType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/Light;

    .prologue
    .line 68
    iput-object p1, p0, mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/Light;

    .prologue
    .line 68
    iput-object p1, p0, mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mCoverServLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/Light;

    .prologue
    .line 68
    iput-object p1, p0, mCoverServLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/lights/LightsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-boolean v0, p0, mCoverOpened:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, mCoverOpened:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget v0, p0, mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/lights/LightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    invoke-direct {p0}, handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/lights/LightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    invoke-direct {p0}, acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 68
    invoke-direct/range {p0 .. p6}, setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/lights/LightsService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget-object v0, p0, mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .prologue
    .line 68
    iput-object p1, p0, mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 68
    iget v0, p0, mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/lights/LightsService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, mDelayForcedSvcLEDTask:I

    return p1
.end method

.method private acquireWakeLockForLED()V
    .registers 3

    .prologue
    .line 766
    iget-boolean v0, p0, mWakeLockAcquired:Z

    if-nez v0, :cond_11

    .line 769
    iget-object v0, p0, mWakeLockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, mWakeLockAcquired:Z

    .line 775
    :cond_11
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 896
    const-string v1, ""

    .line 897
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 898
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 900
    .local v0, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 902
    return-object v1
.end method

.method private clearSvcLedStateLocked(I)V
    .registers 9
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 833
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, setSvcLedStateLocked(IIIIIZ)V

    .line 834
    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 542
    iget-boolean v0, p0, mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    .line 556
    :cond_8
    :goto_8
    return-void

    .line 545
    :cond_9
    if-eqz p1, :cond_21

    sget v0, mSvcLedState:I

    if-eqz v0, :cond_21

    .line 546
    iget-boolean v0, p0, isLightSensorEnabled:Z

    if-nez v0, :cond_8

    .line 547
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, isLightSensorEnabled:Z

    goto :goto_8

    .line 551
    :cond_21
    iget-boolean v0, p0, isLightSensorEnabled:Z

    if-eqz v0, :cond_8

    .line 552
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, isLightSensorEnabled:Z

    goto :goto_8
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 685
    const/4 v2, 0x0

    .line 687
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "LightsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_4e

    .line 700
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2e
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 701
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_5b

    move-object v2, v3

    .line 710
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3d
    return-void

    .line 692
    :catch_3e
    move-exception v0

    .line 693
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3f
    iget-object v4, p0, mLedLowPowerPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 694
    const/4 v4, 0x0

    iput-boolean v4, p0, mUseLEDAutoBrightness:Z

    .line 696
    :cond_4a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4d} :catch_4e

    goto :goto_3d

    .line 702
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4e
    move-exception v0

    .line 703
    .local v0, "e":Ljava/io/IOException;
    :goto_4f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 705
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_3d

    .line 706
    :catch_56
    move-exception v1

    .line 707
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 702
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_5b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_4f
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 794
    const/4 v2, 0x0

    .line 796
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v5, p0, mInitializedWakeLockPath:Z

    if-nez v5, :cond_e

    .line 797
    const-string v5, "LightsService"

    const-string v6, "WakeLock path is not initialized"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_d
    return v4

    .line 801
    :cond_e
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_22

    .line 802
    const-string v5, "LightsService"

    const-string/jumbo v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 810
    :cond_22
    :try_start_22
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_2c} :catch_39
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_43

    .line 816
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2c
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 817
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_50

    .line 818
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 811
    :catch_39
    move-exception v0

    .line 812
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3a
    const-string v5, "LightsService"

    const-string/jumbo v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_d

    .line 819
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_43
    move-exception v0

    .line 820
    .local v0, "e":Ljava/io/IOException;
    :goto_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 822
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 823
    :catch_4b
    move-exception v1

    .line 824
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 819
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_50
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_44
.end method

.method private static native finalize_native(J)V
.end method

.method private handleForcedSvcLEDTask()V
    .registers 3

    .prologue
    .line 714
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] handleForcedSvcLEDTask()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x0

    invoke-direct {p0, v0}, enableSvcLEDLightSensorLocked(Z)V

    .line 716
    const/16 v0, 0x13

    invoke-direct {p0, v0}, setSvcLedLightLocked(I)V

    .line 717
    return-void
.end method

.method private initCoverState()V
    .registers 5

    .prologue
    .line 495
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState()start"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_45

    .line 497
    iget-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 498
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_3c

    .line 499
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, p0, mCoverType:I

    .line 500
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    iput-boolean v1, p0, mCoverOpened:Z

    .line 501
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() coverstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_3b
    return-void

    .line 504
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_3c
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : state is null"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 508
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_45
    const-string v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private static native init_native()J
.end method

.method private initializeWakeLockPath()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 740
    iget-boolean v0, p0, mInitializedWakeLockPath:Z

    if-nez v0, :cond_32

    .line 742
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 743
    iget-object v0, p0, mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, mWakeLockPath:Ljava/lang/String;

    .line 751
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 752
    iget-object v0, p0, mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, mWakeUnlockPath:Ljava/lang/String;

    .line 759
    iput-boolean v2, p0, mInitializedWakeLockPath:Z

    .line 761
    :cond_32
    :goto_32
    return-void

    .line 746
    :cond_33
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 755
    :cond_3c
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private releaseWakeLockForLED()V
    .registers 3

    .prologue
    .line 778
    iget-boolean v0, p0, mWakeLockAcquired:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 781
    iget-object v0, p0, mWakeUnlockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, mWakeLockAcquired:Z

    .line 791
    :cond_1a
    return-void
.end method

.method static native setLight_native(JIIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .registers 13
    .param p1, "sensorValue"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 612
    const/16 v1, 0x14

    if-ge p1, v1, :cond_71

    move v6, v0

    .line 613
    .local v6, "ledLowPower":I
    :goto_7
    iget-boolean v1, p0, mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_1a

    iget v1, p0, mLedLowPower:I

    if-eq v6, v1, :cond_1a

    .line 614
    iput v6, p0, mLedLowPower:I

    .line 615
    iget-object v1, p0, mLedLowPowerPath:Ljava/lang/String;

    iget v3, p0, mLedLowPower:I

    invoke-direct {p0, v1, v3}, fileWriteInt(Ljava/lang/String;I)V

    .line 616
    iput-boolean v0, p0, mIsLEDChanged:Z

    .line 619
    :cond_1a
    const/4 v9, 0x0

    .line 620
    .local v9, "priority":I
    const/4 v8, 0x1

    .line 621
    .local v8, "operator":I
    const/4 v7, -0x1

    .line 622
    .local v7, "mode":I
    const/4 v9, 0x0

    :goto_1e
    const/4 v0, 0x7

    if-ge v9, v0, :cond_28

    .line 623
    sget v0, mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_73

    .line 628
    :cond_28
    const/4 v2, 0x0

    .line 630
    .local v2, "ledMode":I
    sget v0, mSvcLedState:I

    if-nez v0, :cond_76

    .line 631
    iget v10, p0, mLastSvcLedId:I

    .line 632
    .local v10, "svcLedId":I
    const/4 v2, 0x0

    .line 670
    :goto_30
    iget-object v0, p0, mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, v10

    sget v1, mSvcLedColor:I

    sget v3, mSvcLedOnMS:I

    sget v4, mSvcLedOffMS:I

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->access$3200(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    .line 672
    iget v0, p0, mLastSvcLedId:I

    if-eq v0, v10, :cond_99

    .line 673
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, mLastSvcLedId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") OUT; SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") IN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_6b
    iput v10, p0, mLastSvcLedId:I

    .line 680
    invoke-direct {p0}, releaseWakeLockForLED()V

    .line 682
    return-void

    .end local v2    # "ledMode":I
    .end local v6    # "ledLowPower":I
    .end local v7    # "mode":I
    .end local v8    # "operator":I
    .end local v9    # "priority":I
    .end local v10    # "svcLedId":I
    :cond_71
    move v6, v5

    .line 612
    goto :goto_7

    .line 622
    .restart local v6    # "ledLowPower":I
    .restart local v7    # "mode":I
    .restart local v8    # "operator":I
    .restart local v9    # "priority":I
    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 634
    .restart local v2    # "ledMode":I
    :cond_76
    packed-switch v9, :pswitch_data_b8

    .line 664
    const/4 v10, 0x7

    .line 665
    .restart local v10    # "svcLedId":I
    const/4 v2, 0x0

    goto :goto_30

    .line 636
    .end local v10    # "svcLedId":I
    :pswitch_7c
    const/4 v10, 0x5

    .line 637
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xb

    .line 638
    goto :goto_30

    .line 640
    .end local v10    # "svcLedId":I
    :pswitch_80
    const/4 v10, 0x6

    .line 641
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xc

    .line 642
    goto :goto_30

    .line 644
    .end local v10    # "svcLedId":I
    :pswitch_84
    const/4 v10, 0x6

    .line 645
    .restart local v10    # "svcLedId":I
    sget v2, mSvcLedMode:I

    .line 646
    goto :goto_30

    .line 648
    .end local v10    # "svcLedId":I
    :pswitch_88
    const/16 v10, 0xc

    .line 649
    .restart local v10    # "svcLedId":I
    sget v2, mSvcLedMode:I

    .line 650
    goto :goto_30

    .line 652
    .end local v10    # "svcLedId":I
    :pswitch_8d
    const/4 v10, 0x5

    .line 653
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xa

    .line 654
    goto :goto_30

    .line 656
    .end local v10    # "svcLedId":I
    :pswitch_91
    const/4 v10, 0x5

    .line 657
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xd

    .line 658
    goto :goto_30

    .line 660
    .end local v10    # "svcLedId":I
    :pswitch_95
    const/4 v10, 0x5

    .line 661
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xe

    .line 662
    goto :goto_30

    .line 676
    :cond_99
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") maintains its priority right"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 634
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_80
        :pswitch_84
        :pswitch_88
        :pswitch_8d
        :pswitch_91
        :pswitch_95
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "set"    # Z

    .prologue
    const/16 v1, 0xc

    .line 838
    sget v0, mSvcLedState:I

    sput v0, mPrevSvcLedState:I

    .line 840
    const/4 v0, 0x5

    if-ne p1, v0, :cond_ac

    .line 842
    sget v0, mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, mSvcLedState:I

    .line 843
    if-eqz p6, :cond_1b

    .line 844
    const/16 v0, 0xa

    if-ne p3, v0, :cond_71

    .line 845
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, mSvcLedState:I

    .line 885
    :cond_1b
    :goto_1b
    sget v0, mPrevSvcLedState:I

    sget v1, mSvcLedState:I

    if-eq v0, v1, :cond_24

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsLEDChanged:Z

    .line 888
    :cond_24
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | SvcLED(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_109

    const-string v0, "On"

    :goto_65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void

    .line 846
    :cond_71
    const/16 v0, 0xe

    if-ne p3, v0, :cond_7c

    .line 847
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x40

    sput v0, mSvcLedState:I

    goto :goto_1b

    .line 848
    :cond_7c
    const/16 v0, 0xd

    if-ne p3, v0, :cond_87

    .line 849
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, mSvcLedState:I

    goto :goto_1b

    .line 850
    :cond_87
    const/16 v0, 0xb

    if-ne p3, v0, :cond_92

    .line 851
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, mSvcLedState:I

    goto :goto_1b

    .line 853
    :cond_92
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 856
    :cond_ac
    const/4 v0, 0x6

    if-ne p1, v0, :cond_d3

    .line 857
    if-eqz p6, :cond_cb

    .line 858
    if-ne p3, v1, :cond_bb

    .line 859
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, mSvcLedState:I

    goto/16 :goto_1b

    .line 862
    :cond_bb
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, mSvcLedState:I

    .line 863
    sput p2, mSvcLedColor:I

    .line 864
    sput p3, mSvcLedMode:I

    .line 865
    sput p4, mSvcLedOnMS:I

    .line 866
    sput p5, mSvcLedOffMS:I

    goto/16 :goto_1b

    .line 869
    :cond_cb
    sget v0, mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, mSvcLedState:I

    goto/16 :goto_1b

    .line 871
    :cond_d3
    if-ne p1, v1, :cond_ef

    .line 872
    if-eqz p6, :cond_e7

    .line 873
    sget v0, mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, mSvcLedState:I

    .line 874
    sput p2, mSvcLedColor:I

    .line 875
    sput p3, mSvcLedMode:I

    .line 876
    sput p4, mSvcLedOnMS:I

    .line 877
    sput p5, mSvcLedOffMS:I

    goto/16 :goto_1b

    .line 879
    :cond_e7
    sget v0, mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, mSvcLedState:I

    goto/16 :goto_1b

    .line 882
    :cond_ef
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 888
    :cond_109
    const-string v0, "Off"

    goto/16 :goto_65
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 444
    iget-wide v0, p0, mNativePointer:J

    invoke-static {v0, v1}, finalize_native(J)V

    .line 445
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 446
    return-void
.end method

.method public getLight(I)Lcom/android/server/lights/Light;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 449
    iget-object v0, p0, mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .prologue
    .line 426
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 427
    invoke-virtual {p0}, systemReady()V

    .line 429
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 420
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public systemReady()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 462
    const-string v2, "LightsService"

    const-string v3, "[SvcLED] systemReady"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .local v1, "updateSvcLEDIntent":Landroid/content/Intent;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 468
    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, mSensorManager:Landroid/hardware/SensorManager;

    .line 469
    iget-boolean v2, p0, mUseLEDAutoBrightness:Z

    if-eqz v2, :cond_40

    .line 470
    iget-object v2, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, mLightSensor:Landroid/hardware/Sensor;

    .line 474
    :cond_40
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 475
    invoke-direct {p0}, initCoverState()V

    .line 476
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_6f

    .line 477
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 484
    :goto_57
    invoke-direct {p0}, initializeWakeLockPath()V

    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    return-void

    .line 479
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_6f
    const-string v2, "LightsService"

    const-string/jumbo v3, "initLightsService() : mCoverManager is null!!!!"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method
